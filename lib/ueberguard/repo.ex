defmodule Ueberguard.Repo do
  use Ecto.Repo,
    otp_app: :ueberguard,
    adapter: Ecto.Adapters.Postgres
end
