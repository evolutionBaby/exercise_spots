defmodule ParkingLot.Application do
  @moduledoc """
  The ParkingLot Application Service.

  The parking_lot system business domain lives in this application.

  Exposes API to clients such as the `ParkingLotWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(ParkingLot.Repo, []),
    ], strategy: :one_for_one, name: ParkingLot.Supervisor)
  end
end
