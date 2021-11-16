variable "key-pair_name"{
  default = "centos_diplomado_key_pair"
}

variable "key-pair_algorithm"{
  default = "RSA"
}

variable "key-pair_bits"{
  default = 4096
}


variable "ec2_ami"{
  default = "ami-0affd4508a5d2481b"
}

variable "ec2_type"{
  default = "t2.micro" # La version gratuita
}

variable "ec2_zone"{
  default = "us-east-1d"
}

variable "ec2_subnet"{
  default = "subnet-2499f305" # Esta subnet se puede crear o usar existente
}

variable "ec2_tag-name"{
  default = "Diplomado Centos"
}

variable "ec2_security-group"{
  default = [
    "sg-0826f6c751b2a2253"
  ]
}
