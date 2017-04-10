defmodule FileReaderTest do
	use ExUnit.Case
	import ElixirApp.Filereader
	import Mock

	test "Passing a file should return a string" do
		str =
		get_file(Path.join("#{:code.priv_dir(:elixir_app)}","sampletext.txt"))
		assert str != nil
	end

	test "An empty string should return an empty string" do
		str = pick_string("")
		assert str == ""
	end

	test "The string should be trimmed" do
		with_mock File, [read!: fn(_) -> " ABC " end ] do
			str = get_file("not existing !")

			assert str == "ABC"
		end

	end
end 