# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     PetStoreManager.Repo.insert!(%PetStoreManager.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong
alias PetStoreManager.Repo
alias PetStoreManager.Customers.Pet

1..50 |> Enum.each( fn _x ->
  %Pet{
    name: Faker.Dog.PtBr.name |> String.slice(0,20),
    breed: Faker.Dog.PtBr.breed |> String.trim(),
    owners_last_name: Faker.Person.last_name,
    age: Enum.random(10..80)/1.0,
    species: "Dog"

  }
  |> Repo.insert!
end)

51..100 |> Enum.each( fn _x ->
  %Pet{
    name: Faker.Dog.PtBr.name |> String.slice(0,20),
    breed: Faker.Dog.PtBr.breed |> String.trim(),
    owners_last_name: Faker.Person.last_name,
    age: Enum.random(10..80)/1.0,
    species: "Cat"

  }
  |> Repo.insert!
end)
