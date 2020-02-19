defmodule SchoolTest.Repo.Migrations.CreateProfile do
  use Ecto.Migration

  def change do
    create table(:profiles) do
      add :name, :string
      add :status, :boolean, default: true, null: false

      timestamps()
    end
  end
end
