defmodule WebApi.MixProject do
  use Mix.Project

  def project do
    [
      app: :api,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {WebApi.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:poison, "~> 3.0"},
      {:plug, "~> 1.6"},
      {:cowboy, "~> 2.4"},
      {:plug_cowboy, "~> 2.0"},
      {:mox, "~> 0.5", only: :test}
    ]
  end
end
