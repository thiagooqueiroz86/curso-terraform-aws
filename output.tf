output "public_ip_servers" {
  value = aws_instance.web[*].public_ip
}
output "lb_public_dns" {
  value = aws_elb.lb_curso_tf.dns_name
}
output "database_addrres" {
  value = aws_db_instance.postgres_curso.address
}
output "database_port" {
  value = aws_db_instance.postgres_curso.port
}