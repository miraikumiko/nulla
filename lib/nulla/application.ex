defmodule Nulla.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      NullaWeb.Telemetry,
      Nulla.Repo,
      {DNSCluster, query: Application.get_env(:nulla, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Nulla.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Nulla.Finch},
      # Start a worker by calling: Nulla.Worker.start_link(arg)
      # {Nulla.Worker, arg},
      # Start to serve requests, typically the last entry
      NullaWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Nulla.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    NullaWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
