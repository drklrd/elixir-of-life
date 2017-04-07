defmodule PlayGround do
  import IO, only: [puts: 1]
  import Kernel, except: [inspect: 1]

  def say_here do
    inspect "Hello"
  end
  
  def inspect(param) do
    puts "Hello again"
    puts param
    puts "Nice!"
  end
end
