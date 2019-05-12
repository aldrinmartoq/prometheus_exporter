require 'puma/plugin'

Puma::Plugin.create do
  def start(launcher)
    require 'prometheus_exporter'
    require 'prometheus_exporter/client'
    require 'prometheus_exporter/instrumentation'

    PrometheusExporter::Instrumentation::Puma.start
  end
end
