import Config

if System.get_env("PHX_SERVER") do
  config :elixir_vue, ElixirVueWeb.Endpoint, server: true
end

if config_env() == :prod do
  secret_key_base =
    System.get_env("SECRET_KEY_BASE") ||
      raise """
      environment variable SECRET_KEY_BASE is missing.
      You can generate one by calling: mix phx.gen.secret
      """

  host_uri = System.get_env("PHX_HOST")
  uri = URI.parse(host_uri)

  port = String.to_integer(System.get_env("PORT") || "4000")

  config :elixir_vue, ElixirVue.Repo,
    adapter: Ecto.Adapters.Postgres,
    url: System.get_env("DATABASE_URL"),
    pool_size: "POOL_SIZE" |> System.get_env("9") |> String.to_integer()

  config :elixir_vue, ElixirVueWeb.Endpoint, force_ssl: [hsts: true]

  config :elixir_vue, ElixirVueWeb.Endpoint,
    url: [host: uri.host, port: uri.port || 443, scheme: "https"],
    http: [
      ip: {0, 0, 0, 0, 0, 0, 0, 0},
      port: port
    ],
    secret_key_base: secret_key_base

  # ## SSL Support
end
