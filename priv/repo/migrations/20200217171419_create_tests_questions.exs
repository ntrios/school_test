defmodule SchoolTest.Repo.Migrations.CreateTestsQuestions do
  use Ecto.Migration

  def change do
    create table(:tests_questions) do
      add :index_sequence, :integer
      add :score, :float
      add :status, :boolean, default: true, null: false
      add :test_id, references(:tests, on_delete: :nothing)
      add :question_id, references(:questions, on_delete: :nothing)

      timestamps()
    end

    create index(:tests_questions, [:test_id])
    create index(:tests_questions, [:question_id])
  end
end
