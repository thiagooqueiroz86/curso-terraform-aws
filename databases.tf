resource "aws_db_instance" "postgres_curso" {
  identifier             = var.db_postgres_name
  allocated_storage      = 10
  engine                 = "postgres"
  engine_version         = "11.10"
  instance_class         = "db.t3.micro"
  port                   = 5432
  availability_zone      = var.availbility_instancias
  name                   = "mydb"
  username               = var.pg_username
  password               = var.pg_password
  vpc_security_group_ids = [aws_security_group.terraform_pratica.id]
  skip_final_snapshot    = true

  lifecycle {
    create_before_destroy = true
  }
}