defmodule SchoolTest.Evaluation.Test_Class do
  use Ecto.Schema
  import Ecto.Changeset

  alias SchoolTest.Evaluation.Test
  alias SchoolTest.Evaluation.Test_Student
  alias SchoolTest.Accounts.User_Account
  alias SchoolTest.Accounts.School_Class

  schema "tests_classes" do
    field :can_share, :boolean, default: false
    field :status, :boolean, default: true
    field :was_applied, :boolean, default: false
    belongs_to :test, Test
    belongs_to :teacher_id, User_Account
    belongs_to :school_class, School_Class

    has_many :tests_students, Test_Student

    timestamps()
  end

  @doc false
  def changeset(test_class, attrs) do
    test_class
    |> cast(attrs, [:can_share, :was_applied, :status])
    |> validate_required([:can_share, :was_applied, :status])
  end
end
