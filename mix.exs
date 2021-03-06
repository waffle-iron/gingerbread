defmodule Gingerbread.Mixfile do
    use Mix.Project

    def project do
        [
            apps_path: "apps",
            build_embedded: Mix.env == :prod,
            start_permanent: Mix.env == :prod,
            aliases: aliases(),
            deps: deps(),
            dialyzer: [plt_add_deps: :transitive],
            name: "Gingerbread",
            source_url: "https://github.com/ScrimpyCat/gingerbread",
            docs: [
                main: "gingerbread",
                extras: ["README.md": [filename: "gingerbread", title: "Gingerbread"]]
            ]
        ]
    end

    # Dependencies can be Hex packages:
    #
    #   {:my_dep, "~> 0.3.0"}
    #
    # Or git/path repositories:
    #
    #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    #
    # Type "mix help deps" for more examples and options.
    #
    # Dependencies listed here are available only for this project
    # and cannot be accessed from applications inside the apps folder
    defp deps do
        [
            { :ex_doc, "~> 0.15.1", only: :dev, runtime: false },
            { :simple_markdown, "~> 0.3.0", only: :dev, runtime: false, override: true },
            { :simple_markdown_extension_svgbob, "~> 0.0.1", only: :dev, runtime: false }
        ]
    end

    # Aliases are shortcuts or tasks specific to the current project.
    # For example, to create, migrate and run the seeds file at once:
    #
    #     $ mix ecto.setup
    #
    # See the documentation for `Mix` for more info on aliases.
    defp aliases do
        [
            "docs": ["run documentation.exs", "docs"],
        ]
    end
end
