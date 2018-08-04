defmodule ParkingLot do
  # INTERNAL HELPERS
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end

  @doc false
  def schema do
    quote do
      use Ecto.Schema
      import Ecto.Changeset
    end
  end

  @doc false
  def service do
    quote do
      # Enables tuple calls for Mockery but only in test environemnt.
      if function_exported?(Mix, :env, 0) && Mix.env() == :test, do: @compile(:tuple_calls)

      import Ecto.Query

      alias Concierge.Option
      alias Concierge.Repo
    end
  end
end
