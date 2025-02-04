# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :elixir_vue, ElixirVue.Repo,
  database: "elixir_vue_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  log: false,
  pool_size: 9

config :elixir_vue, ElixirVueWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [
    formats: [html: ElixirVueWeb.ErrorHTML, json: ElixirVueWeb.ErrorJSON],
    layout: false
  ],
  pubsub_server: ElixirVue.PubSub,
  live_view: [signing_salt: "ni1y7ANM"]

config :elixir_vue, ElixirVueWeb.Gettext, default_locale: "en"
config :elixir_vue, :github, api_key: ""

config :elixir_vue, ecto_repos: [ElixirVue.Repo]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id],
  level: :debug

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Configure tailwind (the version is required)
config :tailwind,
  version: "3.3.2",
  default: [
    args: ~w(
      --config=tailwind.config.js
      --input=css/app.css
      --output=../priv/static/assets/app.css
    ),
    cd: Path.expand("../assets", __DIR__)
  ]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
