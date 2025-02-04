defmodule ElixirVue.Repo do
  use Ecto.Repo,
    otp_app: :elixir_vue,
    adapter: Ecto.Adapters.Postgres
end
