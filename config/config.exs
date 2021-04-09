# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :mariel,
  ecto_repos: [Mariel.Repo]

# Configures the endpoint
config :mariel, MarielWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "13KWOoUaXYQqLkaOK/WDVDfCI+ZO92BGwfUMJqF61mmfXB2SKQ+c/Iwy9Rj4mj2o",
  render_errors: [view: MarielWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Mariel.PubSub,
  live_view: [signing_salt: "ow5dad8N"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
