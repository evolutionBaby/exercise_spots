use Mix.Config

# Configure your database
config :parking_lot, ParkingLot.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "parking_lot_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
