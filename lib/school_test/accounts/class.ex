defmodule SchoolTest.Accounts.Class do
  use Ecto.Schema
  import Ecto.Changeset

  alias SchoolTest.Accounts.School_Class

  schema "classes" do
    field :name, :string
    field :status, :boolean, default: true

    has_many :schools_classes, School_Class

    timestamps()
  end

  @doc false
  def changeset(class, attrs) do
    class
    |> cast(attrs, [:name, :school_status])
    |> validate_required([:name, :school_status])
  end
end
