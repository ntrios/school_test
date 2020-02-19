defmodule SchoolTest.Accounts.Profile do
  use Ecto.Schema
  import Ecto.Changeset

  alias SchoolTest.Accounts.User_Account

  schema "profiles" do
    field :name, :string
    field :status, :boolean, default: true

    has_many :user_accounts, User_Account

    timestamps()
  end

  @doc false
  def changeset(profile, attrs) do
    profile
    |> cast(attrs, [:name, :status])
    |> validate_required([:name, :status])
  end
end
