defmodule ShopliftersElixirs.Repo do
  use Ecto.Repo,
    otp_app: :shoplifters_elixirs,
    adapter: Ecto.Adapters.Postgres
end
