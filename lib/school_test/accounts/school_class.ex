defmodule SchoolTest.Accounts.School_Class do
  use Ecto.Schema
  import Ecto.Changeset

  alias SchoolTest.Accounts.User_Account
  alias SchoolTest.Accounts.School
  alias SchoolTest.Accounts.Class

  schema "schools_classes" do
    field :status, :boolean, default: true
    belongs_to :school, School
    belongs_to :class, Class

    has_many :user_accounts, User_Account

    timestamps()
  end

  @doc false
  def changeset(school_class, attrs) do
    school_class
    |> cast(attrs, [:status])
    |> validate_required([:status])
  end
end
