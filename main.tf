provider "local"{}
# Start a container
resource "docker_container" "spaceinv" {
  image = "${docker_image.application.latest}"
  must_run = true
  name  = "application"
     ports {
        internal = 8080
        external = 8080
        }
}

# Find the latest RHEL precise image.
resource "docker_image" "spaceinv" {
  name = "xer0x/spaceinvaders"
}