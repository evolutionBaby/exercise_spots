defmodule ParkingLot.Repo.Migrations.CreateLevelTable do
  use Ecto.Migration

  def change do
    create table(:levels) do
      add :number, :integer

      timestamps()
    end
  end
end
