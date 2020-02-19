defmodule SchoolTest.Repo.Migrations.CreateTests do
  use Ecto.Migration

  def change do
    create table(:tests) do
      add :name, :string
      add :status, :boolean, default: true, null: false

      timestamps()
    end
  end
end
