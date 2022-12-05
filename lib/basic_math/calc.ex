# calc.ex

defmodule Calculator do
  def find_percentage_of_value(percentage, value) do
    result =
      percentage
      |> BasicMath.divide_it(100)
      |> BasicMath.multi(value)

    blah = IO.inspect("find the percenage of #{percentage}: %#{result}")
    blah
    # result = value * (percentage / 100) // example: 1
    # calculation = divide_it(percentage, 100) // example: 2
    # result = multi(calculation, value) // example: 2
    # pipes syntax
  end
end

# =================================================

IO.puts("=============== script ===============\n")

Calculator.find_percentage_of_value(25, 100)
IO.puts("=============== script ===============\n\n")

Code.compiler_options(ignore_module_conflict: true)
