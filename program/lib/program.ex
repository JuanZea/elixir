defmodule Program do
  @moduledoc """
  Documentation for `Program`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Program.hello()
      :world

  """
  def hello do
    :world
  end

  def print_world do
    IO.puts Program.hello
  end
end
