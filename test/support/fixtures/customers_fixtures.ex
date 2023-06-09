defmodule PetStoreManager.CustomersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PetStoreManager.Customers` context.
  """

  @doc """
  Generate a pet.
  """
  def pet_fixture(attrs \\ %{}) do
    {:ok, pet} =
      attrs
      |> Enum.into(%{
        age: 120.5,
        breed: "some breed",
        name: "some name",
        owners_last_name: "some owners_last_name",
        species: "some species"
      })
      |> PetStoreManager.Customers.create_pet()

    pet
  end
end
