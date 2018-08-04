defmodule ParkingLot.LevelService do
  use ParkingLot, :service

  alias ParkingLot.Level

  def fetch_all_with_parking_spots() do
    Repo.fetch_all(
      from l in Level,
      preload: [:parking_spots]
    )
  end
end
