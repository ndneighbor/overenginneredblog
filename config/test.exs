use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :overengineered, Overengineered.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :overengineered, Overengineered.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "overengineered_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

config :comeonin, bcrypt_log_rounds: 4