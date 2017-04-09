defmodule ElixirApp.Filereader do
  @moduledoc """
  Documentation for ElixirApp.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ElixirApp.hello
      :world

  """
  def get_file(path) do
        File.read!(path)
        |> String.split("\n")
        |> Enum.map(&String.trim/1)
        |> Enum.filter(&String.length(&1) <=140 )
  end
end
