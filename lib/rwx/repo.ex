defmodule Rwx.Repo do
  use Ecto.Repo,
    otp_app: :rwx,
    adapter: Ecto.Adapters.Postgres
end
