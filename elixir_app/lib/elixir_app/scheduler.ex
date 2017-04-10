defmodule ElixirApp.Scheduler do
	def schedule_file(schedule,file) do
		Quantum.add_job(schedule, fn -> ElixirApp.Filereader.get_file(file) 
		|> ElixirApp.TweetServer.tweet end)

	end

end