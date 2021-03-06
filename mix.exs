defmodule LibPhoneNumber.MixProject do
  use Mix.Project

  @version "0.1.0"
  @scm_url "https://github.com/ihabunek/ex_libphonenumber_js"

  def project do
    [
      app: :libphonenumber_js,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      package: package(),
      preferred_cli_env: [docs: :docs],
      source_url: @scm_url,
      description: "Provides parsing and formatting phone numbers."
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:jason, "~> 1.3"},
      {:ex_doc, "~> 0.24", only: :docs}
    ]
  end

  defp docs do
    [
      source_ref: @version,
      main: "readme",
      extras: ["README.md", "CHANGELOG.md", "LICENSE"]
    ]
  end

  defp package() do
    [
      description: "Parsing and formatting phone numbers.",
      maintainers: ["Ivan Habunek"],
      licenses: ["Apache-2.0"],
      links: %{
        "Github" => @scm_url,
        "Changelog" => "#{@scm_url}/blob/master/CHANGELOG.md"
      }
    ]
  end
end
