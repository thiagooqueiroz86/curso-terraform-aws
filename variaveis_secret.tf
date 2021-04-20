variable "pg_username" {
  type        = string
  sensitive   = true
  description = "Username do banco"
  default     = "secure"
}

variable "pg_password" {
  type        = string
  sensitive   = true
  description = "Username do banco"
  default     = "admin123"
}