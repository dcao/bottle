# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bottle,
  ecto_repos: [Bottle.Repo]

# Configures the endpoint
config :bottle, BottleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/mCtJgju0gNR4wq47laX4wdIIxyGkyLbhIL8/s2qQt/919ZGWEiH/FQiuFS9OTk7",
  render_errors: [view: BottleWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Bottle.PubSub,
  live_view: [signing_salt: "FIqeUTZo"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
