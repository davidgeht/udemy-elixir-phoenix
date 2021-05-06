defmodule Discuss.Topic do
  use Discuss.Web, :model

  schema "topics" do
    field :title, :string
  end
  # struct; a hash(like objects in js) that contains some data. *** Represents a record in the db****
  # Params; a hash that contains the properties we want to update the struct with
  # this changeset function IS NOT the changeset Object
  def changeset(struct, params \\ %{}) do
    struct
    # cast-> produces a changset = the object that records the change we need to make in the database- tells us how we want to update the database,
    |> cast(params,[:title])
    # validators; we take the changset(created by cast) and we send it to the validators,validators inpsects the changeset it will return the changeset
    |> validate_required([:title])
  end

end
