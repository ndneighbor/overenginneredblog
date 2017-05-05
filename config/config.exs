# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :overengineered,
  ecto_repos: [Overengineered.Repo]

# Configures the endpoint
config :overengineered, Overengineered.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "m8JQPStpfff3fWu1FQwWtUnkME75ogjn/5HuHL2H6nKEyp1ni+S7NbXCGD5s6b6E",
  render_errors: [view: Overengineered.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Overengineered.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
