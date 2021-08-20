# Sentiment Analyzer

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `sentiment_analyzer` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:sentiment_analyzer, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/sentiment_analyzer](https://hexdocs.pm/sentiment_analyzer).

### 1. Sentiment analyzer (Producer)
* Stream tweets randomly using a random topic i.e cats {tweet} 
* Pass the tweets through Google natural language processing {tweet, analysis} 
* Transform the map to JSON 
* Send the formatted output to the producer 
* The producer creates a tcp connection to receive the tweet + analysis, then sends the tweet to the listening consumer using the tcp socket

### 2.Backpressure (Listener)
* Listens for tcp connections of events produced by sentiment analyser via Client.Consumer module
#### How it works
1. Initialize a tcp socket connection via the init function to receive/accept
   connections
2. Save the received data to DB. 
   
### Run the app:
* First, run the listener (backpressure).
* Second, run the producer (sentiment analyzer)
