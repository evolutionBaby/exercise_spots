defmodule ParkingLot.Repo do
  use Ecto.Repo, otp_app: :parking_lot

  def fetch_one(queryable, opts \\ []) do
    case one(queryable, opts) do
      nil ->
        {:error, :not_found}

      value ->
        {:ok, value}
    end
  end

  def fetch_all(queryable, opts \\ []) do
    queryable
    |> all(opts)
    |> (&{:ok, &1}).()
  end

  def fetch(queryable, id, opts \\ []) do
    case get(queryable, id, opts) do
      nil ->
        {:error, :not_found}

      value ->
        {:ok, value}
    end
  end

  @doc """
  Dynamically loads the repository url from the
  DATABASE_URL environment variable.
  """
  def init(_, opts) do
    {:ok, Keyword.put(opts, :url, System.get_env("DATABASE_URL"))}
  end
end
