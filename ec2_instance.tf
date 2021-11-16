resource "tls_private_key" "richter-key" {
  algorithm = var.key-pair_algorithm
  rsa_bits  = var.key-pair_bits
}

resource "aws_key_pair" "richter-key-pair" {
  key_name   = var.key-pair_name
  public_key = tls_private_key.richter-key.public_key_openssh
  provisioner "local-exec" {                                          # Crea centos_diplomado.pem en pc local
    command = "echo '${tls_private_key.richter-key.private_key_pem}' > ./centos_diplomado.pem"   # PC local un GNU/Linux
  }
}

resource "aws_instance" "richter-diplomado-server" {
  ami               = var.ec2_ami
  availability_zone = var.ec2_zone
  instance_type     = var.ec2_type
  subnet_id         = var.ec2_subnet
  key_name          = aws_key_pair.richter-key-pair.key_name

  vpc_security_group_ids = var.ec2_security-group

  tags = {
    Name = var.ec2_tag-name
  }
}

resource "aws_eip_association" "richter-eip_assoc" {
  instance_id   = aws_instance.richter-diplomado-server.id
  allocation_id = aws_eip.richter-elasctic-ip.id
}

resource "aws_eip" "richter-elasctic-ip" {
  vpc = true
}
