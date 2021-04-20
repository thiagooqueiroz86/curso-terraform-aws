variable "imagem_instancia" {
  type        = string
  description = "Imagem que sera usada na instancia"
  default     = "ami-042e8287309f5df03"
}
variable "type_instancia" {
  type        = string
  description = "Qual o flavour de ec2 irei criar"
  default     = "t2.micro"
}
variable "chave_ssh" {
  type        = string
  description = "Qual o nome da chave ssh irei usar"
  default     = "thiago-manjaro"
}
variable "tags_instancias" {
  type        = list(string)
  description = "Tags que serao atachadas nas instancias"
  default     = ["docker1"]
}
variable "path_key_ssh" {
  type        = string
  description = "Caminho chave para conexao"
  default     = "~/Documentos/thiago-manjaro.pem"
}
variable "availbility_instancias" {
  type        = string
  description = "Lista de azs das aplicações "
  default     = "us-east-1b"
}
variable "lb_name" {
  type        = string
  description = "Nome do Load Balance"
  default     = "elb-curso-tf"
}
variable "az_ha_loadbalancer" {
  type        = list(string)
  description = "Zonas de atuação de servicos com ha"
  default     = ["us-east-1a", "us-east-1b", "us-east-1e"]
}
variable "db_postgres_name" {
  type        = string
  description = "Nome da instancia do db"
  default     = "postgres-curso"

}
