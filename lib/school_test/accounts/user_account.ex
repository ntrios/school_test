defmodule SchoolTest.Accounts.User_Account do
  use Ecto.Schema
  import Ecto.Changeset

  alias SchoolTest.Accounts.User
  alias SchoolTest.Accounts.Profile
  alias SchoolTest.Accounts.School
  alias SchoolTest.Accounts.School_Class
  alias SchoolTest.Evaluation.Test_Student

  schema "user_accounts" do
    field :register, :string
    field :status, :boolean, default: true
    belongs_to :user, User
    belongs_to :profile, Profile
    belongs_to :school, School
    belongs_to :school_class, School_Class

    has_many :tests_students, Test_Student

    timestamps()
  end

  @doc false
  def changeset(user_account, attrs) do
    user_account
    |> cast(attrs, [:register, :status])
    |> validate_required([:register, :status])
  end
end
