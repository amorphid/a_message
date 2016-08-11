defmodule AMessage.Mixfile do
  use Mix.Project

  def application do
    [
      applications: [:logger]
    ]
  end

  def project do
    [
      app:             :a_message,
      build_embedded:  Mix.env == :prod,
      deps:            deps(),
      description:     description(),
      elixir:          "~> 1.3",
      package:         package(),
      start_permanent: Mix.env == :prod,
      version:         "1.0.0"
    ]
  end

  defp description do
    "\"A message\" struct w/ four required keys: from, to, subject, body"
  end

  defp package do
    %{
      maintainers: ["Michael Pope"],
      licenses:    ["Apache 2.0"],
      links:       %{github: "https://github.com/amorphid/a_message"}
    }
  end

  defp deps do
    []
  end
end
