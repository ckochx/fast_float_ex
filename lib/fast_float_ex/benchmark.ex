defmodule FastFloatEx.Benchmark do

  # def run(list \\ []) when is_list(list) do
  #   Benchee.run(
  #     %{
  #       "integer_parse" => Integer.parse(list),
  #       "fast_float" => FastFloatEx.parse(list)
  #     }
  #     )
  # end

  def run(_string) do
    Benchee.run(%{})
      # %{
      #   "integer_parse" => Integer.parse(string),
      #   "fast_float" => FastFloatEx.parse(string)
      # }
      # )
  end
end
