use Mix.Config

config :parking_lot, ecto_repos: [ParkingLot.Repo]

import_config "#{Mix.env}.exs"
