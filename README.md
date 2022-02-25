# Blackbox EndPoint Monitoring Stack
This stack produces a server to monitor endpoints using prometheus, blackbox exporter, alert manager and grafana

### Security Group to expose ports
```
9090 - Prometheus
9100 - Node Exporter
9115 - Blackbox Exporter
9093 -  Alert Manager
3000 - Grafana-Server
```

### Ec2 Server 
```
attaches an Elastic IP.
```
### Grafana Server Dashboard
```
uses 11175
```