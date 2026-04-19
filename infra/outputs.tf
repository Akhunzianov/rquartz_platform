output "network_id" {
  description = "ID of the primary VPC"
  value       = yandex_vpc_network.main.id
}

output "subnet_id" {
  description = "ID of the primary subnet"
  value       = yandex_vpc_subnet.main.id
}
