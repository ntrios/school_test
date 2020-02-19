defmodule SchoolTest.Repo.Migrations.CreateSchools do
  use Ecto.Migration

  def change do
    create table(:schools) do
      add :name, :string
      add :status, :boolean, default: true, null: false

      timestamps()
    end
  end
end
