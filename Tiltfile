# -*- mode: Python -*-

# If you get push errors, uncomment the line below and change the default registry to
# one to which you have push access
# default_registry('gcr.io/my-org/tilt-demo')

k8s_yaml('deploy.yaml')

docker_build('randword', '.', dockerfile='Dockerfile.app',
             live_update=[
                 sync('./app', '/app'),
                 run('/restart.sh'),
             ])
docker_build('log-ingester', '.', dockerfile='Dockerfile.sidecar',
             live_update=[
                 sync('./sidecar', '/'),
                 run('/restart.sh'),
             ])
