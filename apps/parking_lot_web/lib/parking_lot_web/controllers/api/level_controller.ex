defmodule ParkingLotWeb.Api.LevelController do
  use ParkingLotWeb, :controller

  alias ParkingLot.LevelService

  def index(conn, _params) do
    with {:ok, levels} <- LevelService.fetch_all_with_parking_spots() do
      render(conn, "index.json", levels: levels)
    end
  end
end
