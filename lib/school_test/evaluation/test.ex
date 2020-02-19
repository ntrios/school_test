defmodule SchoolTest.Evaluation.Test do
  use Ecto.Schema
  import Ecto.Changeset

  alias SchoolTest.Evaluation.Test_Class
  alias SchoolTest.Evaluation.Test_Question

  schema "tests" do
    field :name, :string
    field :status, :boolean, default: true

    has_many :tests_classes, Test_Class
    has_many :tests_questions, Test_Question

    timestamps()
  end

  @doc false
  def changeset(test, attrs) do
    test
    |> cast(attrs, [:name, :status])
    |> validate_required([:name, :status])
  end
end
