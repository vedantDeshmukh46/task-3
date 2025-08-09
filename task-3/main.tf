# Start a container
resource "docker_container" "nginx" {
  name  = "nginx"
  image = docker_image.nginx_image.image_id

  ports{
    internal = "80"
    external = "8080"
  }
}


resource "docker_image" "nginx_image" {
  name = "nginx"
}