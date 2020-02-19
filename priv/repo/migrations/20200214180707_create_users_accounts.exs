defmodule SchoolTest.Repo.Migrations.CreateUsersAccounts do
  use Ecto.Migration

  def change do
    create table(:user_accounts) do
      add :register, :string, null: true
      add :status, :boolean, default: true, null: false
      add :user_id, references(:users, on_delete: :nothing)
      add :profile_id, references(:profiles, on_delete: :nothing)
      add :school_id, references(:schools, on_delete: :nothing)
      add :school_class_id, references(:schools_classes, on_delete: :nothing)

      timestamps()
    end

    create index(:user_accounts, [:user_id])
    create index(:user_accounts, [:profile_id])
    create index(:user_accounts, [:school_id])
    create index(:user_accounts, [:school_class_id])
  end
end
