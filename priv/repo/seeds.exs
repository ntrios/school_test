# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     SchoolTest.Repo.insert!(%SchoolTest.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias SchoolTest.Repo
alias SchoolTest.Accounts.School
alias SchoolTest.Accounts.Class
alias SchoolTest.Accounts.User
alias SchoolTest.Accounts.Profile
alias SchoolTest.Accounts.School_Class
alias SchoolTest.Accounts.User_Account

school1 =
  %School{
    name: "Escola 1"
  }
  |> Repo.insert!()

school2 =
  %School{
    name: "Escola 2"
  }
  |> Repo.insert!()

school3 =
  %School{
    name: "Escola 3"
  }
  |> Repo.insert!()

class1 =
  %Class{
    name: "1a Série - Ensino Médio"
  }
  |> Repo.insert!()

class2 =
  %Class{
    name: "2a Série - Ensino Médio"
  }
  |> Repo.insert!()

class3 =
  %Class{
    name: "3a Série - Ensino Médio"
  }
  |> Repo.insert!()

user_admin =
  %User{
    name: "Admin"
  }
  |> Repo.insert!()

userA =
  %User{
    name: "Usuário A",
    cpf: "11122233344"
  }
  |> Repo.insert!()

userB =
  %User{
    name: "Usuário B",
    cpf: "55566677788"
  }
  |> Repo.insert!()

userC =
  %User{
    name: "Usuário C",
    cpf: "99900011122"
  }
  |> Repo.insert!()

userD =
  %User{
    name: "Usuário D",
    cpf: "12345678900"
  }
  |> Repo.insert!()

profile1 =
  %Profile{
    name: "Master"
  }
  |> Repo.insert!()

profile2 =
  %Profile{
    name: "Teacher"
  }
  |> Repo.insert!()

profile3 =
  %Profile{
    name: "Student"
  }
  |> Repo.insert!()

school_class1 =
  %School_Class{
    school_id: school1.id,
    class_id: class1.id
  }
  |> Repo.insert!()

school_class2 =
  %School_Class{
    school_id: school1.id,
    class_id: class2.id
  }
  |> Repo.insert!()

_school_class3 =
  %School_Class{
    school_id: school2.id,
    class_id: class3.id
  }
  |> Repo.insert!()

%User_Account{
  user_id: user_admin.id,
  profile_id: profile1.id
}
|> Repo.insert!()

%User_Account{
  user_id: userA.id,
  profile_id: profile2.id,
  school_id: school1.id
}
|> Repo.insert!()

%User_Account{
  user_id: userB.id,
  register: "A90879X",
  profile_id: profile3.id,
  school_id: school1.id,
  school_class_id: school_class1.id
}
|> Repo.insert!()

%User_Account{
  user_id: userC.id,
  register: "B90890X",
  profile_id: profile3.id,
  school_id: school1.id,
  school_class_id: school_class1.id
}
|> Repo.insert!()

%User_Account{
  user_id: userD.id,
  register: "E79890X",
  profile_id: profile3.id,
  school_id: school1.id,
  school_class_id: school_class2.id
}
|> Repo.insert!()
