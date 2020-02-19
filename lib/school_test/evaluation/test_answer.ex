defmodule SchoolTest.Evaluation.Test_Answer do
  use Ecto.Schema
  import Ecto.Changeset

  alias SchoolTest.Evaluation.Test_Student
  alias SchoolTest.Evaluation.Test_Question

  schema "tests_answers" do
    field :answer, :string
    field :score, :float
    field :status, :boolean, default: true
    belongs_to :test_student, Test_Student
    belongs_to :test_question, Test_Question

    timestamps()
  end

  @doc false
  def changeset(test_answer, attrs) do
    test_answer
    |> cast(attrs, [:answer, :score, :status])
    |> validate_required([:answer, :score, :status])
  end
end
