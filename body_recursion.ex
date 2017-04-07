defmodule Sample.Enum do
	def length([]), do: 0
	def length([_ | tail]), do: 1 + length(tail)
end

# iex(1)> Sample.Enum.map([1,2,3],&(&1 *2))