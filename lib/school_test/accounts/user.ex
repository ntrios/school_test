defmodule SchoolTest.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  alias SchoolTest.Accounts.User_Account

  schema "users" do
    field :cpf, :string
    field :name, :string
    field :status, :boolean, default: true

    has_many :user_accounts, User_Account

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :cpf, :status])
    |> validate_required([:name, :cpf, :status])
  end
end
