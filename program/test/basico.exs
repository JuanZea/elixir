#  Configuracion basica de una prueba en ExUnit

# Iniciar ExUnit
ExUnit.start()

# Crear un modulo para las pruebas  2) Create a new test module (test case) and use "ExUnit.Case".
defmodule BasicoTest do
  # ExUnit.Case = Usar el modulo con funcionalidades para definir casos de prueba.
  #
  # (Hace parte de ExUnit.Case)
  # async: true = Permitir la ejecucion concurrente de varios casos de prueba, de lo contrario se hace secuencialmente.
  use ExUnit.Case, async: true

  # Creamos un test
  #
  # (Hace parte de ExUnit.Case)
  # test()
  test "Devolver true en todos los casos" do
    assert true
  end

  # Mala practica
  defmodule Math do
    def suma(a, b) do
      a + b
    end

    def resta(a, b) do
      a - b
    end
  end

  # Describir varios tests relacionados
  #
  # (Hace parte de ExUnit.Case)
  # describe()
  describe "Pruebas modulo Math" do

    test "suma de dos numeros enteros" do
      # Arrange
      a = 2
      b = 3

      # Act
      resultado = Math.suma(a, b)

      # Assert
      assert resultado == 5
    end

    test "resta de dos numeros enteros" do
      # Arrange
      a = 5
      b = 3

      # Act
      resultado = Math.resta(a, b)

      # Assert
      assert resultado == 2
    end

  end

end
