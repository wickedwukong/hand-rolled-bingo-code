defmodule BattleshipHall.Mixfile do
  use Mix.Project

  def project do
    [
      app: :battleship_hall,
      version: "0.0.1",
      elixir: "~> 1.4",
      elixirc_paths: elixirc_paths(Mix.env),
      compilers: [:phoenix, :gettext] ++ Mix.compilers,
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {BattleshipHall.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:phoenix, "~> 1.3.2"},
      {:phoenix_pubsub, "~> 1.0"},
      {:phoenix_html, "~> 2.10"},
      {:phoenix_live_reload, "~> 1.0", only: :dev},
      {:gettext, "~> 0.11"},
      {:cowboy, "~> 1.0"},
      {:mix_test_watch, "~> 0.5", only: :dev, runtime: false},
      {:battleship, path: "../battleship"}


      # {:bingo, "~> 1.0"}
      # {:bingo, git: "https://github.com/username/bingo.git"}
      # {:bingo, git: "git@github.com:username/bingo.git"}
      # {:bingo, in_umbrella: true}
    ]
  end
end
