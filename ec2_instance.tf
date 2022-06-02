resource "aws_instance" "web_instance_1" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  key_name      = aws_key_pair.af_key_pair.id

  network_interface {
    network_interface_id = aws_network_interface.eni_instance_web.id
    device_index         = 0
  }

  credit_specification {
    cpu_credits = "unlimited"
  }

  tags = {
    Name = "af-inst-web-1"
  }
}

resource "aws_network_interface" "eni_instance_web" {
  subnet_id       = data.aws_subnet.subnet_1.id
  private_ips     = ["10.0.0.235"]
  security_groups = [data.aws_security_group.web_sg_1.id]

  tags = {
    Name = "af-eni-inst-web-1"
  }
}

resource "aws_eip" "instance_rp_1_ip" {
  vpc = true

  instance                  = aws_instance.web_instance_1.id
  associate_with_private_ip = "10.0.0.235"
}

resource "aws_instance" "web_instance_2" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  key_name      = aws_key_pair.af_key_pair.id

  network_interface {
    network_interface_id = aws_network_interface.eni_instance_web_2.id
    device_index         = 0
  }

  credit_specification {
    cpu_credits = "unlimited"
  }

  tags = {
    Name = "af-inst-web-2"
  }
}

resource "aws_network_interface" "eni_instance_web_2" {
  subnet_id       = data.aws_subnet.subnet_1.id
  private_ips     = ["10.0.0.236"]
  security_groups = [data.aws_security_group.web_sg_1.id]

  tags = {
    Name = "af-eni-inst-web-2"
  }
}

resource "aws_eip" "instance_rp_2_ip" {
  vpc = true

  instance                  = aws_instance.web_instance_2.id
  associate_with_private_ip = "10.0.0.236"
}

resource "aws_instance" "web_instance_3" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  key_name      = aws_key_pair.af_key_pair.id

  network_interface {
    network_interface_id = aws_network_interface.eni_instance_web_3.id
    device_index         = 0
  }

  credit_specification {
    cpu_credits = "unlimited"
  }

  tags = {
    Name = "af-inst-web-3"
  }
}

resource "aws_network_interface" "eni_instance_web_3" {
  subnet_id       = data.aws_subnet.subnet_1.id
  private_ips     = ["10.0.0.237"]
  security_groups = [data.aws_security_group.web_sg_1.id]

  tags = {
    Name = "af-eni-inst-web-3"
  }
}

resource "aws_eip" "instance_rp_3_ip" {
  vpc = true

  instance                  = aws_instance.web_instance_3.id
  associate_with_private_ip = "10.0.0.237"
}