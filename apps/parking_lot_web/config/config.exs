# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :parking_lot_web,
  namespace: ParkingLotWeb,
  ecto_repos: [ParkingLot.Repo]

# Configures the endpoint
config :parking_lot_web, ParkingLotWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "SmOYPPVClzWGnpkFahdwKS++KLZ+24hDi/osrj9fydiW11PFgQREHoGUcRxY/kZB",
  render_errors: [view: ParkingLotWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ParkingLotWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :parking_lot_web, :generators,
  context_app: :parking_lot

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
