remove:
	podman rm simple-server

build:
	podman build -t simple-server .

run:
	podman run -d -p :8080 --name simple-server simple-server

log:
	podman logs simple-server
