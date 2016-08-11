defmodule AMessage.Mixfile do
  use Mix.Project

  def project do
    [
      app:             :a_message,
      build_embedded:  Mix.env == :prod,
      deps:            deps(),
      elixir:          "~> 1.3",
      start_permanent: Mix.env == :prod,
      version:         "0.0.0"
    ]
  end

  def application do
    [
      applications: [:logger]
    ]
  end

  defp deps do
    []
  end
end
