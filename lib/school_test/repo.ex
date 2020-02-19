defmodule SchoolTest.Repo do
  use Ecto.Repo,
    otp_app: :school_test,
    adapter: Ecto.Adapters.Postgres
end
