defmodule ParkingLotWeb.Api.ParkingSpotView do
  use ParkingLotWeb, :view

  def render("show.json", %{parking_spot: parking_spot}) do
    %{
      parking_spot:
        render_one(
          parking_spot,
          __MODULE__,
          "parking_spot.json",
          as: :parking_spot
        )
    }
  end

  def render("parking_spot.json", %{parking_spot: parking_spot}) do
    %{
      id: parking_spot.id,
      number: parking_spot.number,
      taken: parking_spot.taken,
      size: parking_spot.size,
    }
  end
end
