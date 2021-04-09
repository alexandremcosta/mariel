defmodule Mariel.Repo do
  use Ecto.Repo,
    otp_app: :mariel,
    adapter: Ecto.Adapters.Postgres
end
