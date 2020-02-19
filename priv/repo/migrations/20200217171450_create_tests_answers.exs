defmodule SchoolTest.Repo.Migrations.CreateTestsAnswers do
  use Ecto.Migration

  def change do
    create table(:tests_answers) do
      add :answer, :string
      add :score, :float
      add :status, :boolean, default: true, null: false
      add :test_student_id, references(:tests_students, on_delete: :nothing)
      add :test_question_id, references(:tests_questions, on_delete: :nothing)

      timestamps()
    end

    create index(:tests_answers, [:test_student_id])
    create index(:tests_answers, [:test_question_id])
  end
end
