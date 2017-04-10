defmodule FileReaderTest do
	use ExUnit.Case
	import ElixirApp.Filereader

	test "Passing a file should return a string" do
		str =
		get_file(Path.join("#{:code.priv_dir(:elixir_app)}","sampletext.txt"))
		assert str != nil
	end

	test "An empty string should return an empty string" do
		str = pick_string("")
		assert str == ""
	end
end 