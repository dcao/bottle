defmodule Bottle.Repo do
  use Ecto.Repo,
    otp_app: :bottle,
    adapter: Ecto.Adapters.Postgres
end
