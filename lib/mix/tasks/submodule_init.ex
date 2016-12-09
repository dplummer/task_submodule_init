defmodule Mix.Tasks.Submodule.Init do
  use Mix.Task

  @shortdoc "Init git submodule"

  def run(_args) do
    {result, 0} = System.cmd "git", ["submodule", "update", "--init"]
    result |> log_output()
  end

  def log_output(""), do: log_output("No output")
  def log_output(message) do
    IO.puts "Ran 'git submodule update --init': #{message}"
  end
end
