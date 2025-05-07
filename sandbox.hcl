resource "network" "main" {
  subnet = "10.0.0.0/16"
}
resource "container" "webserver" {
    image {
        name = "nginx"
    }
    port {
        local = 80
        host = 80
    }
    network {
        id = resource.network.main.meta.id
    }
}
