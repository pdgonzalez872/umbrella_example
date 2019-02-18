Hi!

I'm curious to know if the below is possible:

I want to run tests for a specific app inside an umbrella app and have the tests break for an IEx.pry call.

Here is my elixir version:

```
umbrella_example :> elixir -v
Erlang/OTP 21 [erts-10.0.5] [source] [64-bit] [smp:12:12] [ds:12:12:10] [async-threads:1] [hipe]

Elixir 1.7.2 (compiled with Erlang/OTP 19)
```

Here is what I have tried on my machine:

``` bash
  # from the umbrella's root
  $ mix test # "runs correctly, does not break for pry -> Cannot pry msg, expected."
  $ iex -S mix test # "This works! runs the tests for both apps and correctly breaks for pry"
  # as seen here: https://elixirschool.com/blog/til-umbrella-app-child-app-tests/
  $ mix cmd --app b mix test --color # does not break for pry, expected.
  $ mix cmd --app b iex -S mix test --color # does not break for pry, enters IEx after test suite is run
  $ mix cmd --app iex -S b mix test --color # doesn't return anything, doesn't run anything. odd.
  $ iex -S mix cmd --app b mix test --color # starts IEx after the test suite is run, "Cannot pry msg"
```

Here is an app that reproduces the behavior:

https://github.com/pdgonzalez872/umbrella_example I'd like to use the `shim()` fn in B.

Please let me know if there is anything else you'd like to know and I'll
provide it. Thanks for all of the help!

Paulo
