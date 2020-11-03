# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :whatever,
  ecto_repos: [Whatever.Repo]

# Configures the endpoint
config :whatever, WhateverWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "YzRsE0G8JttZU/he3u0VnPUFi5cMiLUZLtSwcbixNShQXZN2MOTVYV6jUxMX0zCK",
  render_errors: [view: WhateverWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Whatever.PubSub,
  live_view: [signing_salt: "nZ4g/P4Z"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
