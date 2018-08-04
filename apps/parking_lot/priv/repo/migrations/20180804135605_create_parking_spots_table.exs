defmodule ParkingLot.Repo.Migrations.CreateParkingSpotsTable do
  use Ecto.Migration

  def change do
    create table(:parking_spots) do
      add :number, :integer
      add :taken, :boolean, default: false
      add :level_id, references(:levels, on_delete: :delete_all)
    end

    create index(:parking_spots, [:level_id])
  end
end
