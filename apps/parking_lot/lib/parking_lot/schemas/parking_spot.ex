defmodule ParkingLot.ParkingSpot do
  use ParkingLot, :schema

  schema "parking_spots" do
    field :number, :integer
    field :taken, :boolean, default: false
    field :size, :integer

    belongs_to :level, ParkingLot.Level

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:number, :size, :taken, :level_id])
    |> validate_required([:number, :size])
    |> assoc_constraint(:level)
  end
end
