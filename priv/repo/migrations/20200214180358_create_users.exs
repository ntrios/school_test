defmodule SchoolTest.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :cpf, :string
      add :status, :boolean, default: true, null: false

      timestamps()
    end
  end
end
