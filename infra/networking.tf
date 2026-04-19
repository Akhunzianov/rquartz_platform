resource "yandex_vpc_network" "main" {
  name        = "rquartz-platform-net"
  description = "Primary VPC for the rQuartz Platform"
}

resource "yandex_vpc_subnet" "main" {
  name           = "rquartz-platform-subnet-${var.zone}"
  description    = "Primary subnet in ${var.zone}"
  zone           = var.zone
  network_id     = yandex_vpc_network.main.id
  v4_cidr_blocks = ["10.10.0.0/24"]
}
