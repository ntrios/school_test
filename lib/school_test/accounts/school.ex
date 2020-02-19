defmodule SchoolTest.Accounts.School do
  use Ecto.Schema
  import Ecto.Changeset

  alias SchoolTest.Accounts.User_Account
  alias SchoolTest.Accounts.School_Class

  schema "schools" do
    field :name, :string
    field :status, :boolean, default: true

    has_many :schools_classes, School_Class
    has_many :user_accounts, User_Account

    timestamps()
  end

  @doc false
  def changeset(school, attrs) do
    school
    |> cast(attrs, [:name, :status])
    |> validate_required([:name, :status])
  end
end
