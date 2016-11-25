# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :apaus_admin,
  ecto_repos: [ApausAdmin.Repo]

# Configures the endpoint
config :apaus_admin, ApausAdmin.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "qzPj0wsq54FFOB+ymthdgq5NLMKwOeCJG9msh1pQpKYss209y+yxweuF6DaBh59L",
  render_errors: [view: ApausAdmin.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ApausAdmin.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
