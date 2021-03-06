defmodule SentimentAnalyzer.MixProject do
  use Mix.Project

  def project do
    [
      app: :sentiment_analyzer,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {SentimentAnalyzer.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:jason, "~> 1.2"},
      {:poison, "~> 5.0"},
      {:oauther, "~> 1.1"},
      {:extwitter, "~> 0.12"},
      {:httpoison, "~> 1.8"}
    ]
  end
end
