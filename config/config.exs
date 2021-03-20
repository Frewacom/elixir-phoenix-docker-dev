# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :demo_elixir,
  ecto_repos: [DemoElixir.Repo]

# Configures the endpoint
config :demo_elixir, DemoElixirWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "S7mBp7RiB/I2fUB1XLqETY0sLj/0R1RBvtbtb2FIrg7dV+shQUc0G+K71CJHgy51",
  render_errors: [view: DemoElixirWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: DemoElixir.PubSub,
  live_view: [signing_salt: "R+a9Kwhk"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
