# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :discuss,
  ecto_repos: [Discuss.Repo]

# Configures the endpoint
config :discuss, Discuss.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0gRw9TSN9AvH/HqU6P39CS/7cLW0Nto9a6kexLx+buBmjo9OD8P0ypYHQ5OH557A",
  render_errors: [view: Discuss.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Discuss.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :ueberauth, Ueberauth,
providers: [
  github: { Ueberauth.Strategy.Github,  [default_scope: "user:email"]  }
]
config :ueberauth, Ueberauth.Strategy.Github.OAuth,
  client_id: "d11801c67b0482a937d2",
  client_secret: "1201fb50b58e4b4c29bcf3078d5b0aeebb614bca"
