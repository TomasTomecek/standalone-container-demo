ATOMIC_IMAGE = ${USER}/atomic:with-generate-rpm
DEMO_IMAGE_NAME = modularitycontainers/nginx

atomic-command:
	docker build -f ./Dockerfile.atomic --tag $(ATOMIC_IMAGE) .

shell:
	docker run -ti --entrypoint="/bin/bash" -v /var/run/docker.sock:/var/run/docker.sock:Z $(ATOMIC_IMAGE) "-l"

# docker run -v /var/run/docker.sock:/var/run/docker.sock:Z $(ATOMIC_IMAGE) --debug install --system-package yes $(DEMO_IMAGE_NAME)
