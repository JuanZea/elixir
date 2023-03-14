#  Configuracion basica de una prueba en ExUnit

# Iniciar ExUnit
ExUnit.start()

# Crear un modulo para las pruebas  2) Create a new test module (test case) and use "ExUnit.Case".

defmodule CalculatorTest do
    # ExUnit.Case = Usar el modulo con funcionalidades para definir casos de prueba.
  #
  # (Hace parte de ExUnit.Case)
  # async: true = Permitir la ejecucion concurrente de varios casos de prueba, de lo contrario se hace secuencialmente.
  use ExUnit.Case, async: true

  doctest Calculator

  test "add should return correct result" do
    # Arrange
    number_1 = 8
    number_2 = 5
    number_assert = 13

    # Act
    result = Calculator.add(number_1, number_2)

    # Assert
    assert result == number_assert
  end

  test "substract should return correct result" do
    # Arrange
    number_1 = 9
    number_2 = 5
    number_assert = 4

    # Act
    result = Calculator.substract(number_1, number_2)

    # Assert
    assert result == number_assert
  end

  test "multiply should return correct result" do
    # Arrange
    number_1 = 3
    number_2 = 7
    number_assert = 21

    # Act
    result = Calculator.multiply(number_1, number_2)

    # Assert
    assert result == number_assert
  end

  test "divide should return correct result" do
    # Arrange
    number_1 = 6
    number_2 = 2
    number_assert = 3

    # Act
    result = Calculator.divide(number_1, number_2)

    # Assert
    assert result == number_assert
  end

  test "pow should return correct result" do
    # Arrange
    number_1 = 3
    number_2 = 2
    number_assert = 9

    # Act
    result = Calculator.pow(number_1, number_2)

    # Assert
    assert result == number_assert
  end

  test "divide should raise eception when second number is 0" do
    # Arrange
    number_1 = 3
    number_2 = 0

    # Act

    # Assert
    assert_raise ArithmeticError, fn ->
      Calculator.divide(number_1, number_2)
    end
  end
end
