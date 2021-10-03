defmodule MySite.Repo do
  use Ecto.Repo,
    otp_app: :mysite,
    adapter: Ecto.Adapters.SQLite3
end
