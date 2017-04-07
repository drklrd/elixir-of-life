defmodule Sample.Enum do

	def other_length([_ | tail]), do: other_length(tail,1)
	def other_length([], len), do: len
	def other_length([_ | tail],len), do: other_length(tail,len+1)
	
end

# iex(1)> Sample.Enum.map([1,2,3],&(&1 *2))