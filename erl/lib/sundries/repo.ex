defmodule Sundries.Repo do
  use Ecto.Repo,
    otp_app: :sundries,
    adapter: Ecto.Adapters.Postgres
end
