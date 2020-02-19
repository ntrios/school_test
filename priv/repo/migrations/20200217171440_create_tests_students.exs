defmodule SchoolTest.Repo.Migrations.CreateTestsStudents do
  use Ecto.Migration

  def change do
    create table(:tests_students) do
      add :score, :float
      add :teacher_comments, :string
      add :status, :boolean, default: true, null: false
      add :student_id, references(:user_accounts, on_delete: :nothing)
      add :test_class_id, references(:tests_classes, on_delete: :nothing)
      add :corrected_by, references(:user_accounts, on_delete: :nothing)

      timestamps()
    end

    create index(:tests_students, [:student_id])
    create index(:tests_students, [:test_class_id])
    create index(:tests_students, [:corrected_by])
  end
end
