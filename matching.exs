defmodule Sample.Enum do
	# Since the functions are simle, we can declare as this
	def first([]), do: nil
	def first([head | _]), do: head
	# def first([]) do  # declare another fn for any empty list
	# 	nil
	# end
	# def first([head | _]) do # the variable tail is unsed. so we can replace it with _
	# 	head
	# end
end