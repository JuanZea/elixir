defmodule Calculator do
  def divide(n1, n2) do
    if n2 == 0  do
      raise(ArithmeticError)
    end
    n1 / n2
  end
  def multiply(n1, n2) do
    n1 * n2;
  end
  def substract(n1, n2) do
    n1 - n2;
  end
  def add(n1, n2) do
    n1 + n2;
  end
  def pow(n1, n2) do
    n1 ** n2;
  end
end
