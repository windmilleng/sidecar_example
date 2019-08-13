# -*- mode: Python -*-

# If you get push errors, you can change the default_registry.
# Create tilt_option.json with contents: {"default_registry": "gcr.io/my-personal-project"}
# (with your registry inserted). tilt_option.json is gitignore'd, unlike Tiltfile
default_registry(read_json('tilt_option.json', {})
                 .get('default_registry', 'gcr.io/windmill-public-containers/servantes'))

k8s_yaml('deploy.yaml')

docker_build('randword', '.', dockerfile='Dockerfile.app', live_update=[sync('./app', '/app')])
docker_build('sidecar', '.', dockerfile='Dockerfile.sidecar', live_update=[sync('./sidecar', '/')])
