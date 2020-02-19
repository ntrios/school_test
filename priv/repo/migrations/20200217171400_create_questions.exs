defmodule SchoolTest.Repo.Migrations.CreateQuestions do
  use Ecto.Migration

  def change do
    create table(:questions) do
      add :question, :string
      add :is_alternative, :boolean, default: false, null: false
      add :status, :boolean, default: true, null: false

      timestamps()
    end
  end
end
