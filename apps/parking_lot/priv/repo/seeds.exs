# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     ParkingLot.Repo.insert!(%ParkingLot.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias ParkingLot.Repo

Repo.insert!(%ParkingLot.Level{number: 1})
Repo.insert!(%ParkingLot.Level{number: 2})
Repo.insert!(%ParkingLot.Level{number: 3})
Repo.insert!(%ParkingLot.Level{number: 4})

levels = Repo.all(ParkingLot.Level)

for level <- levels do
  1..20
  |> Enum.each(fn number ->
    Repo.insert!(%ParkingLot.ParkingSpot{
      number: number,
      level_id: level.id,
      size: 1..15 |> Enum.random()
    })
  end)
end
