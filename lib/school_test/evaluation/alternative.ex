defmodule SchoolTest.Evaluation.Alternative do
  use Ecto.Schema
  import Ecto.Changeset

  alias SchoolTest.Evaluation.Question

  schema "alternatives" do
    field :answer, :string
    field :is_correct, :boolean, default: false
    field :status, :boolean, default: true
    belongs_to :question, Question

    timestamps()
  end

  @doc false
  def changeset(alternative, attrs) do
    alternative
    |> cast(attrs, [:answer, :is_correct, :status])
    |> validate_required([:answer, :is_correct, :status])
  end
end
