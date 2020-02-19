defmodule SchoolTest.Accounts do
  @moduledoc """
  The Accounts context.
  """
  import Ecto.Query, warn: false
  alias SchoolTest.Repo

  alias SchoolTest.Accounts.User
  alias SchoolTest.Accounts.User_Account
  alias SchoolTest.Accounts.School_Class

  def list_users do
    Repo.all(User)
  end

  def list_user_accounts do
    User_Account
    |> Repo.all()
    |> Repo.preload([:user, :profile, :school, [school_class: [:class, :school]]])
  end

  def list_schools_classes do
    School_Class
    |> Repo.all()
    |> Repo.preload([:class, :school])
  end

  def list_by_class(%{school_class_id: id_class}) do
    User_Account
    |> where(school_class_id: ^id_class) 
    |> Repo.all()
    |> Repo.preload([:user, :profile, :school, [school_class: [:class, :school]]])
  end

  def create_school do
    # Create new school, if current user is admin
  end

  def create_teacher do
    # Create new teacher user, if current user is admin or teacher at the same school.
  end

  def update_user do
    # Update user
  end

  def create_class do
    # Create new class, if current user is a teacher
  end

  def create_student do
    # Create new student user, if current user is a teacher
  end

  def find_school(id) do
    Repo.get!(School, id)
  end
end
