defmodule Nulla.Repo do
  use Ecto.Repo,
    otp_app: :nulla,
    adapter: Ecto.Adapters.Postgres
end
