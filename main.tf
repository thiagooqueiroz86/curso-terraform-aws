resource "aws_instance" "web" {
  ami               = var.imagem_instancia
  instance_type     = var.type_instancia
  key_name          = var.chave_ssh
  availability_zone = var.availbility_instancias
  tags = {
    Name = var.tags_instancias[count.index]
  }
  lifecycle {
    create_before_destroy = true
  }
  vpc_security_group_ids = ["${aws_security_group.terraform_pratica.id}"]

  count = length(var.tags_instancias)

  provisioner "remote-exec" {
    connection {
      host        = self.public_ip
      type        = "ssh"
      user        = "ubuntu"
      private_key = file(var.path_key_ssh)
      timeout     = "2m"
    }

    inline = [
      "curl -fsSL https://get.docker.com |sh",
      "sudo docker run -d -p 80:80 nginx",
    ]

  }
}