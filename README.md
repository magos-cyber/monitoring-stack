# Monitoring Stack

Complete monitoring solution for homelabs and small infrastructure.

## Components

- **Prometheus** - Metrics collection and storage
- **Grafana** - Dashboards and visualization
- **Alertmanager** - Alert routing and notifications
- **Loki** - Log aggregation
- **Promtail** - Log shipping
- **Node Exporter** - System metrics
- **cAdvisor** - Container metrics

## Quick Start

```bash
docker-compose up -d
```

## Architecture

```
┌──────────────┐     ┌──────────────┐
│ Node Exporter│────▶│              │
│ cAdvisor     │────▶│ Prometheus   │
│ Blackbox     │────▶│              │
└──────────────┘     └──────┬───────┘
                            │
                    ┌───────┴───────┐
                    │ Alertmanager  │
                    └───────┬───────┘
                            │
                    ┌───────┴───────┐
                    │   Grafana     │
                    └───────────────┘
```

## Dashboards

- System Overview
- Docker Containers
- Proxmox Cluster
- HomeAssistant
- Network Traffic
- SSL Certificates

## Alerts

- High CPU usage (>85% for 5m)
- High Memory usage (>90%)
- Disk space low (<10% free)
- Service down
- SSL certificate expiring (<7 days)

## License

MIT
