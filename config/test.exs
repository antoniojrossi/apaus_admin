use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :apaus_admin, ApausAdmin.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :apaus_admin, ApausAdmin.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "antoniojrossi",
  password: "",
  database: "apaus_admin_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# Configure test junit formatter
config :junit_formatter,
  report_file: "results.xml",
  print_report_file: true
