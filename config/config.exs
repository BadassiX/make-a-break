# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :make_a_break,
  ecto_repos: [MakeABreak.Repo]

# Configures the endpoint
config :make_a_break, MakeABreak.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "WvWhUgKJUS2IsNH7aREj6N2fq3yS8CWB+s/hPNmRrO91zAS3/4a7OuE43pmUWEzz",
  render_errors: [view: MakeABreak.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MakeABreak.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
