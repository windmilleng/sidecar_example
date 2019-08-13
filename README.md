# App + Sidecar + Tilt = 💞

This repo contains:
1. your app, `randword`. Every second, it logs a random word to a file.
2. Your sidecar, a log ingester. It runs on the same pod as your app, reads in your app's logfile by means of a shared volume, and ingests the logs. In the real world, this "ingestion" step would consist of sending the logs to Elasticsearch or some other fancy log store/processor, but since no one wants to download Elasticsearch just for a demo, this sidecar just prints the logs to stdout.)

Tilt has a cool new feature where you can Live Update multiple containers in a single pod -- that means that, among other things, you can now iterate on your app and your sidecar simultaneously. So `tilt up` and experiment: any changes in `app/` or `sidecar/` will be immediately propagated to your running containers, no Docker rebuild required! ⚡️
