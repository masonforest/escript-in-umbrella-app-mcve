# Escript running in an umbrella app

[Minimal, Complete, and Verifiable example](https://stackoverflow.com/help/mcve)
of an escript failing to load a nif dependency of a sibling umbrella app.

To run:

````
$ git clone https://github.com/masonforest/escript-in-umbrella-app-mcve
$ cd escript-in-umbrella-app-mcve/apps/printer
$ mix deps.get
...
## Verify it works outside of an escript
$ mix run -e "Printer.CLI.main([])"
{:ok, <<3, 8, 1, 2, 3>>}
$ mix escript.build && ./printer
Generated escript printer with MIX_ENV=dev
** (UndefinedFunctionError) function :snappyer.compress/1 is undefined (module :snappyer is not available)
    (snappyer) :snappyer.compress(<<1, 2, 3>>)
    (printer) lib/printer/cli.ex:3: Printer.CLI.main/1
    (elixir) lib/kernel/cli.ex:105: anonymous fn/3 in Kernel.CLI.exec_fun/2
````
