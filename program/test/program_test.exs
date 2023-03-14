defmodule ProgramTest do
  use ExUnit.Case
  doctest Program
  import ExUnit.CaptureIO

  setup_all do
    {:ok, recipient: :world}
  end

  test "greets", state do
    # Assert
    assert Program.hello() == state[:recipient]
    refute Program.hello() == :hello
  end

  test "greets the world" do
    # Assert
    assert Program.hello() == :world
  end

  test "outputs Hello World" do
    # Assert
    assert capture_io(fn -> Program.print_world() end) == "world\n"
  end
end
