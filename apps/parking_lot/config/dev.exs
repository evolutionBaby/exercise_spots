use Mix.Config

# Configure your database
config :parking_lot, ParkingLot.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "parking_lot_dev",
  hostname: "localhost",
  pool_size: 10
