defmodule SchoolTestWeb.GraphQL.DataTypes.Accounts do
    use Absinthe.Schema.Notation

    object :user_account do
        field :id, non_null(:id)
        field :user, :user
        field :profile, :profile
        field :school, :school
        field :register, :string
        field :school_class, :school_class
        field :status, :boolean
    end

    object :profile do 
        field :id, non_null(:id)
        field :name, :string
        field :status, :boolean
    end

    object :user do
        field :id, non_null(:id)
        field :name, :string
        field :cpf, :string
        field :status, :boolean
    end
    
    object :school_class do
        field :id, non_null(:id)
        field :school, :school
        field :class, :class
        field :status, :boolean
    end

    object :school do
        field :id, :id
        field :name, :string
        field :status, :boolean
    end

    object :class do
        field :id, :id
        field :name, :string
        field :status, :boolean
    end
end