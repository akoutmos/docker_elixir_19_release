# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :docker_elixir_19_release, DockerElixir19ReleaseWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6Alpv/H1mEDDJAEarC1QwZ2mIqXZXEhpERpfP80YU6m0N16mxAd73taFlBYaSU5K",
  render_errors: [view: DockerElixir19ReleaseWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DockerElixir19Release.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
