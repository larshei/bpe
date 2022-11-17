defmodule BPE.Mixfile do
  use Mix.Project

  def project do
    [
      app: :bpe,
      version: "7.11.0",
      description: "BPE Business Process Engine",
      package: package(),
      deps: deps()
    ]
  end

  def application do
    [mod: {:bpe_otp, []}, applications: [:syn, :kvs]]
  end

  def package do
    [
      files: ~w(include lib priv src mix.exs rebar.config),
      licenses: ["ISC"],
      maintainers: ["Namdak Tonpa"],
      name: :bpe,
      links: %{"GitHub" => "https://github.com/synrc/bpe"}
    ]
  end

  def deps do
    [
      {:ex_doc, "~> 0.33", only: :dev},
      {:syn, "~> 3.3.0"},
      {:rocksdb, "~> 1.8.0"},
      {:kvs, "~> 9.9.0"}
    ]
  end
end
