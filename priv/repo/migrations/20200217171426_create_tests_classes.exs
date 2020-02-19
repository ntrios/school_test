defmodule SchoolTest.Repo.Migrations.CreateTestsClasses do
  use Ecto.Migration

  def change do
    create table(:tests_classes) do
      add :can_share, :boolean, default: false, null: false
      add :was_applied, :boolean, default: false, null: false
      add :status, :boolean, default: true, null: false
      add :test_id, references(:tests, on_delete: :nothing)
      add :teacher_id, references(:user_accounts, on_delete: :nothing)
      add :school_class_id, references(:schools_classes, on_delete: :nothing)

      timestamps()
    end

    create index(:tests_classes, [:test_id])
    create index(:tests_classes, [:teacher_id])
    create index(:tests_classes, [:school_class_id])
  end
end
