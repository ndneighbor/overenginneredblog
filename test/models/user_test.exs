defmodule Overengineered.UserTest do
  use Overengineered.ModelCase

  alias Overengineered.User

  @valid_attrs %{email: "test@test.com", password: "some content", password_confirmation: "some content", username: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
