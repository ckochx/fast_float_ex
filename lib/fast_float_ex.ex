defmodule FastFloatEx do
  @moduledoc """
  Documentation for `FastFloatEx`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> FastFloatEx.hello()
      :world

  """
  def hello do
    :world
  end

  @moduledoc """
  Documentation for FastFloatEx an Elixir NIF binding to the FastFloat C++ library.
  """

  @on_load :load_nifs

  def load_nifs do
    :erlang.load_nif('./priv/fast_float', 0)
  end

  @doc """
  Sort a list with TimSort
  Sorts a list of integers, a list of doubles, or a list of charlists.
  Other lists of Type.t() will return :error tuple
  ## Examples
      iex> TimsortCppEx.sort([9,7,2,3])
      [2,3,7,9]
      iex> TimsortCppEx.sort(['9','7','2','3'])
      ['2','3','7','9']
  """
  @spec sort([]) :: []
  def sort([]), do: []end
