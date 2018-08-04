defmodule ParkingLot.ParkingSpotService do
  use ParkingLot, :service

  alias ParkingLot.ParkingSpot

  def find_free_parking_spot(vehicle_size) do
    Repo.fetch_one(
      from p in ParkingSpot,
      where: p.taken == false and p.size >= ^vehicle_size,
      order_by: [asc: p.size],
      limit: 1
    )
  end

  def fetch_for_booking(id) do
    Repo.fetch_one(
      from p in ParkingSpot,
      where: p.id == ^id and p.taken == false,
      limit: 1
    )
  end

  def book(%ParkingSpot{} = parking_spot) do
    parking_spot
    |> ParkingSpot.changeset(%{taken: true})
    |> Repo.update()
  end
end
