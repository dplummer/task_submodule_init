defmodule TaskSubmoduleInit.Mixfile do
  use Mix.Project

  def project do
    [app: :task_submodule_init,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [applications: []]
  end

  defp deps do
    []
  end
end
