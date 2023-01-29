resource "aws_service_discovery_private_dns_namespace" "example" {
  name = var.cloudmap_namespace_name
  vpc  = aws_vpc.example_vpc.id
}
