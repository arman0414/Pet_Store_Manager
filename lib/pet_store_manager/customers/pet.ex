defmodule PetStoreManager.Customers.Pet do
  use Ecto.Schema
  import Ecto.Changeset

  schema "pets" do
    field :age, :float
    field :breed, :string
    field :name, :string
    field :owners_last_name, :string
    field :species, :string

    timestamps()
  end

  @doc false
  def changeset(pet, attrs) do
    attrs = if attrs[:breed] === "" do
              Map.put(attrs, :breed, nil)
            else
              attrs
            end

    pet
    |> cast(attrs, [:name, :species, :breed, :owners_last_name, :age])
    |> validate_required([:name, :species, :owners_last_name, :age])
  end
end
