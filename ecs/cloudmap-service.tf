# CloudMap service for database
resource "aws_service_discovery_service" "database" {
  name         = var.database_service_name
  namespace_id = var.cloudmap_namespace_id
  dns_config {
    namespace_id = aws_service_discovery_private_dns_namespace.example.id
    dns_records {
      ttl  = 10
      type = "A"
    }
    routing_policy = "MULTIVALUE"
  }
}

# CloudMap service for backend
resource "aws_service_discovery_service" "backend" {
  name         = var.backend_service_name
  namespace_id = var.cloudmap_namespace_id
  dns_config {
    namespace_id = aws_service_discovery_private_dns_namespace.example.id
    dns_records {
      ttl  = 10
      type = "A"
    }
    routing_policy = "MULTIVALUE"
  }
}

# CloudMap service for frontend
resource "aws_service_discovery_service" "frontend" {
  name         = var.frontend_service_name
  namespace_id = var.cloudmap_namespace_id
  dns_config {
    namespace_id = aws_service_discovery_private_dns_namespace.example.id
    dns_records {
      ttl  = 10
      type = "A"
    }
    routing_policy = "MULTIVALUE"
  }
}
