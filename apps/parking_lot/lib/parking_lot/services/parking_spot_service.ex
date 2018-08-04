defmodule ParkingLot.ParkingSpotService do
  use ParkingLot, :service

  alias ParkingLot.ParkingSpot

  def find_free_parking_spot(vehicle_size) do
    Repo.fetch_one(
      from p in ParkingSpot,
      where: p.taken == false && p.size >= ^vehicle_size
      limit: 1
    )
  end
end
