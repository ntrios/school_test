defmodule SchoolTest.Evaluation.Test_Question do
  use Ecto.Schema
  import Ecto.Changeset

  alias SchoolTest.Evaluation.Test
  alias SchoolTest.Evaluation.Question
  alias SchoolTest.Evaluation.Test_Answer

  schema "tests_questions" do
    field :index_sequence, :integer
    field :score, :float
    field :status, :boolean, default: true
    belongs_to :test, Test
    belongs_to :question, Question

    has_many :tests_answers, Test_Answer

    timestamps()
  end

  @doc false
  def changeset(test_question, attrs) do
    test_question
    |> cast(attrs, [:index_sequence, :score, :status])
    |> validate_required([:index_sequence, :score, :status])
  end
end
