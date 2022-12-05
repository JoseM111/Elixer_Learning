# basic_math.ex

defmodule BasicMath do
  def add(value1, value2), do: value1 + value2

  def sub(value1, value2), do: value1 - value2

  def multi(value1, value2) do
    value1 * value2
  end

  def divide_it(value1, value2) do
    value1 / value2
  end

  def round_up(value) do
    Float.ceil(value, 2)
  end
end
