defmodule SchoolTest.Evaluation.Question do
  use Ecto.Schema
  import Ecto.Changeset

  alias SchoolTest.Evaluation.Alternative

  schema "questions" do
    field :is_alternative, :boolean, default: false
    field :question, :string
    field :status, :boolean, default: true

    has_many :alternatives, Alternative

    timestamps()
  end

  @doc false
  def changeset(question, attrs) do
    question
    |> cast(attrs, [:question, :is_alternative, :status])
    |> validate_required([:question, :is_alternative, :status])
  end
end
