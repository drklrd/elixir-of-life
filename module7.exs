defmodule PlayGround do
  import IO, only: [puts: 1]
  import Kernel, except: [inspect: 1]

  alias PlayGround.Misc.Util.Math, as: MyOwnMath

  def say_here do
    inspect "Hello"
  end
  
  def inspect(param) do
    puts "Hello again"
    puts param
    puts "Nice!"
  end

  def print_sum do
    MyOwnMath.add(1,3)
  end

end
