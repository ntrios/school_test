defmodule SchoolTest.Repo.Migrations.CreateSchoolsClasses do
  use Ecto.Migration

  def change do
    create table(:schools_classes) do
      add :status, :boolean, default: true, null: false
      add :school_id, references(:schools, on_delete: :nothing)
      add :class_id, references(:classes, on_delete: :nothing)

      timestamps()
    end

    create index(:schools_classes, [:school_id])
    create index(:schools_classes, [:class_id])
  end
end
