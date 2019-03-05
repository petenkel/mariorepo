
#Baixar a imagem do projeto docker-supermario
resource "docker_image" "image_id" {
    name = "pengbai/docker-supermario:latest"
}

# Inicia Container 1
resource "docker_container" "container_id" {
    name  = "supermario"
    image = "${docker_image.image_id.latest}"
    ports {
         internal = "8080"
        external = "80"
    }
}
# informar o IP e nome do container
output "Endereco IP" {
    value = "${docker_container.container_id.ip_address}"
    }
output "Nome do Container" {
    value = "${docker_container.container_id.name}"
}
