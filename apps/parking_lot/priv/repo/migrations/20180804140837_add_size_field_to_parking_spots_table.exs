defmodule ParkingLot.Repo.Migrations.AddSizeFieldToParkingSpotsTable do
  use Ecto.Migration

  def change do
    alter table(:parking_spots) do
      add :size, :integer
    end
  end
end
