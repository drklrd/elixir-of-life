
# try in iex REPL

list = [1,3,4,5]

Enum.map(list, fn(x) -> x*x end)

Enum.reduce(list , 0 , fn(x,acc) -> acc+x end)

# using capture syntax

Enum.map(list, &(&1 * &1))

Enum.reduce(list , 0 , &(&1 + &2))