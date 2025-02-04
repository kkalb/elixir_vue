import Config

config :elixir_vue, ElixirVueWeb.Endpoint,
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  cache_static_manifest: "priv/static/cache_manifest.json"

config :logger, level: :info

# Configures Swoosh API Client
config :swoosh, api_client: Swoosh.ApiClient.Finch, finch_name: ElixirVue.Finch

# Do not print debug messages in production

# Runtime production configuration, including reading
# of environment variables, is done on config/runtime.exs.
