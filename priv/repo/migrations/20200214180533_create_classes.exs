defmodule SchoolTest.Repo.Migrations.CreateClasses do
  use Ecto.Migration

  def change do
    create table(:classes) do
      add :name, :string
      add :status, :boolean, default: true, null: false

      timestamps()
    end
  end
end
