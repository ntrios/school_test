defmodule SchoolTest.Evaluation.Test_Student do
  use Ecto.Schema
  import Ecto.Changeset

  alias SchoolTest.Accounts.User_Account
  alias SchoolTest.Evaluation.Test_Class
  alias SchoolTest.Evaluation.Test_Answer

  schema "tests_students" do
    field :score, :float
    field :status, :boolean, default: true
    field :teacher_comments, :string
    belongs_to :student, User_Account, foreign_key: :student_id
    belongs_to :test_class, Test_Class
    belongs_to :teacher, User_Account, foreign_key: :corrected_by

    has_many :tests_answers, Test_Answer

    timestamps()
  end

  @doc false
  def changeset(test_student, attrs) do
    test_student
    |> cast(attrs, [:score, :teacher_comments, :status])
    |> validate_required([:score, :teacher_comments, :status])
  end
end
