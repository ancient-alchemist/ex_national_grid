# ExNationalGrid

Elixir library to consume the [Official Carbon Intensity API](https://carbon-intensity.github.io/api-definitions/#carbon-intensity-api-v2-0-0) for Great Britain developed by National Grid. You can find out more about carbon intensity at [carbonintensity.org.uk](carbonintensity.org.uk).

# Summary

National Grid’s Carbon Intensity API provides an indicative trend of regional carbon intensity of the electricity system in Great Britain (GB) up to 2 days ahead of real-time. It provides programmatic and timely access to both forecast and estimated carbon intensity data. The Carbon Intensity forecast includes CO2 emissions related to electricity generation only. The includes emissions from all large metered power stations, interconnector imports, transmission and distribution losses, and accounts for national electricity demand, embedded wind and solar generation.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ex_national_grid` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ex_national_grid, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/ex_national_grid](https://hexdocs.pm/ex_national_grid).

