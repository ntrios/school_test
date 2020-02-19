defmodule SchoolTest.Repo.Migrations.CreateAlternatives do
  use Ecto.Migration

  def change do
    create table(:alternatives) do
      add :answer, :string
      add :is_correct, :boolean, default: false, null: false
      add :status, :boolean, default: true, null: false
      add :question_id, references(:questions, on_delete: :nothing)

      timestamps()
    end

    create index(:alternatives, [:question_id])
  end
end
