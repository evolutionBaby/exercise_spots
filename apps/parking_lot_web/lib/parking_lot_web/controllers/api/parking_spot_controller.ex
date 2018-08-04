defmodule ParkingLotWeb.Api.ParkingSpotController do
  use ParkingLotWeb, :controller

  alias ParkingLot.ParkingSpotService

  def find_parking_spot(conn, %{"vehicle_size" => vehicle_size}) do
    with {:ok, parking_spot} <- ParkingSpotService.find_free_parking_spot(vehicle_size) do
      render(conn, "show.json", parking_spot: parking_spot)
    else
      _ ->
        conn |> send_resp(:not_found, "")
    end
  end
  def find_parking_spot(conn, _params), do: conn |> send_resp(:bad_request, "")

  def book(conn, %{"id" => id}) do
    with {:ok, parking_spot} <- ParkingSpotService.fetch_for_booking(id),
         {:ok, _booked_spot} <- ParkingSpotService.book(parking_spot) do
      conn |> send_resp(:ok, "")
    else
      _ ->
        conn |> send_resp(:not_found, "")
    end
  end
  def book(conn, _params), do: conn |> send_resp(:bad_request, "")
end
