defmodule Sample.Enum do

	def map([], _), do: []
	def map([hd | tl],f) do
		[f.(hd) | map(tl,f)]
	end
end

# iex(1)> Sample.Enum.map([1,2,3],&(&1 *2))