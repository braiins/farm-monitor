# Braiins OS+ Farm Monitoring
Starting with Braiins OS+ 22.02.2, each miner is producing statistics in form that can be easily digested by Prometheus. Prometheus data can be then visualized in Grafana.

Prometheus is an open-source systems monitoring and alerting toolkit. Prometheus collects and stores its metrics as time series data, i.e. metrics information is stored with the timestamp at which it was recorded, alongside optional key-value pairs called labels.

Grafana open source is open source visualization and analytics software. It allows you to query, visualize, alert on, and explore your metrics. It provides you with tools to turn your time-series database data into insightful graphs and visualizations.

Prometheus + Grafana is almost an industry standard for monitoring, visualization, and alerting. For Braiins OS+, endpoint for Prometheus metrics is available at [IP ADDRESS]:8081/metrics

Go to https://docs.braiins.com/os/ for the full documentation.
