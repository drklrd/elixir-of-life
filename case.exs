defmodule Fileread do
	
	def send_tweet(path) do
		case File.read(path) do
			{:ok, data} -> Tweet.send(data)
			{:error, error} -> IO.puts "Error opening file"
		end
	end

end