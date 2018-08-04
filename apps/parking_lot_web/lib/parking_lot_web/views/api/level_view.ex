defmodule ParkingLotWeb.Api.LevelView do
  use ParkingLotWeb, :view

  def render("index.json", %{levels: levels}) do
    render_many(levels, __MODULE__, "level.json", as: :level)
  end

  def render("level.json", %{level: level}) do
    %{
      id: level.id,
      number: level.number,
      parking_spots: render_many(
        level.parking_spots,
        ParkingLotWeb.Api.ParkingSpotView,
        "parking_spot.json",
        as: :parking_spot
      )
    }
  end
end
