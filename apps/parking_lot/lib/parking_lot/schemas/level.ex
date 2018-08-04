defmodule ParkingLot.Level do
  use ParkingLot, :schema

  schema "levels" do
    field :number, :integer

    has_many :parking_spots, ParkingLot.ParkingSpot, on_replace: :delete

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:number])
    |> validate_required([:number])
    |> unique_constraint(:number)
  end
end
