if :erlang.system_info(:otp_release) < '24' do
  Mix.raise("Nx requires Erlang/OTP 24+")
end

defmodule PelemayNxBridge.MixProject do
  use Mix.Project

  def project do
    [
      app: :pelemay_nx_bridge,
      version: "0.1.0-dev",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:nx, "~> 0.1.0-dev", github: "elixir-nx/nx", branch: "main", sparse: "nx"},
      {:ex_doc, "~> 0.24", only: :dev, runtime: false},
      {:dialyxir, "~> 1.0", only: [:dev], runtime: false}
    ]
  end
end
