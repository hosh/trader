# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :trader,
  ecto_repos: [Trader.Repo]

# Configures the endpoint
config :trader, TraderWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jc12G72SQ9dz2jXS2Bct9yTiavR/Cx5wgu2N99wPWSCCicNFwWAQOQ5EPeG4b9p7",
  render_errors: [view: TraderWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Trader.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
