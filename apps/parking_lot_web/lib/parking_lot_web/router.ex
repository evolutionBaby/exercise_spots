defmodule ParkingLotWeb.Router do
  use ParkingLotWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ParkingLotWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/api", ParkingLotWeb.Api do
    pipe_through :api

    resources("/levels", LevelController, only: [:index])

    get("/find_parking_spot", ParkingSpotController, :find_parking_spot)
    post("/parking_spots/:id/book", ParkingSpotController, :book)
  end

  # Other scopes may use custom stacks.
  # scope "/api", ParkingLotWeb do
  #   pipe_through :api
  # end
end
