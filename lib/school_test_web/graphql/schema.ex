defmodule SchoolTestWeb.GraphQL.Schema do
  use Absinthe.Schema 

  import_types SchoolTestWeb.GraphQL.DataTypes.Accounts

  query do
    @desc "Get a list of users"
    field :user_account, list_of(:user_account) do
      resolve(&SchoolTestWeb.GraphQL.Resolvers.Accounts.user_accounts/3)
    end

    @desc "Get a list of school_class"
    field :school_class, list_of(:school_class) do
      resolve(&SchoolTestWeb.GraphQL.Resolvers.Accounts.schools_classes/3)
    end

    @desc "Get a list of users by class"
    field :list_by_class, list_of(:user_account) do
      arg :school_class_id, :id
      resolve(&SchoolTestWeb.GraphQL.Resolvers.Accounts.list_by_class/3)
    end
  end
end
