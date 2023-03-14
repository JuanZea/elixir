defmodule Safe do
  @password "1234"

  def unlock(password) do
    if password == @password do
      :ok
    else
      :error
    end
  end
end
