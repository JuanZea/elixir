defmodule SafeTest do
  use ExUnit.Case

  test "unlock with correct password" do
    # Arrange
    password = "1234"

    # Act
    result = Safe.unlock(password)

    # Assert
    assert result == :ok
  end

  test "unlock with incorrect password" do
    # Arrange
    password1 = "0000"
    password2 = "4321"
    password3 = "1232"

    # Act
    result1 = Safe.unlock(password1)
    result2 = Safe.unlock(password2)
    result3 = Safe.unlock(password3)

    # Assert
    assert result1 == :error
    assert result2 == :error
    assert result3 == :error
  end
end
