defmodule ElixirApp.Scheduler do
	def schedule_file(schedule,file) do
		Quantum.add_job(schedule, fn -> IO.puts ElixirApp.Filereader.get_file(file) end)

	end

end