use Mix.Config

config :opentelemetry,
  processors: [
    ot_batch_processor: %{
      scheduled_delay_ms: 1,
      exporter:
        {OpenTelemetry.Honeycomb.Exporter,
         http_module: MockedHttpBackend,
         http_options: [],
         samplerate_key: "...samplerate",
         write_key: "HONEYCOMB_WRITEKEY"}
    }
  ]
