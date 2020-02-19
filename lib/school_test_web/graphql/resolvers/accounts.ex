defmodule SchoolTestWeb.GraphQL.Resolvers.Accounts do
  alias SchoolTest.Accounts

  import Ecto.Query, warn: false
  alias SchoolTest.Repo

  alias SchoolTest.Accounts.User
  alias SchoolTest.Accounts.User_Account
  alias SchoolTest.Accounts.School_Class

  def users(_, _, _) do
    {:ok, Accounts.list_users()}
  end

  def user_accounts(_, _, _) do
    {:ok, Accounts.list_user_accounts()}
  end

  def schools_classes(_, _, _) do
    {:ok, Accounts.list_schools_classes()}
  end

  def list_by_class(_, id_class, _) do
    case Accounts.list_by_class(id_class) do
      nil -> {:error, "Class ID #{id_class} not found"}
      user_account -> {:ok, user_account}
    end
  end
end
