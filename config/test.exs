use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :docker_elixir_19_release, DockerElixir19ReleaseWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
