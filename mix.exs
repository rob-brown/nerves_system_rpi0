defmodule NervesSystemRpi.Mixfile do
  use Mix.Project

  @version Path.join(__DIR__, "VERSION")
    |> File.read!
    |> String.strip

  def project do
    [app: :nerves_system_rpi,
     version: @version,
     elixir: "~> 1.3",
     archives: [nerves_bootstrap: "~> 0.2.1"],
     aliases: ["deps.precompile": ["nerves.env", "deps.precompile"]],
     compilers: Mix.compilers ++ [:nerves_package],
     description: description(),
     deps: deps()]
  end

  def application do
    []
  end

  defp deps do
    [{:nerves, "~> 0.4.0"},
     {:nerves_system_br, "~> 0.8.1"},
     {:nerves_toolchain_armv6_rpi_linux_gnueabi, "~> 0.8.0"}]
  end

  defp description do
    """
    Nerves System - Raspberry Zero
    """
  end
end
