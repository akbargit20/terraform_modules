output "rds_endpoint" {
  value = aws_db_instance.rds-instance.endpoint
  description = "Endpoint of RDS Instance"
}

