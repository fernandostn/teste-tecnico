resource "aws_key_pair" "key_pair" {
  key_name   = "${var.project_name}-ssh"
  public_key = file("~/.ssh/id_ed25519.pub")
}


resource "aws_instance" "minikube" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.key_pair.key_name
  vpc_security_group_ids      = [aws_security_group.ec2_sg.id]
  subnet_id                   = var.public_subnet_id
  associate_public_ip_address = true

  user_data_base64 = base64encode(file("${path.module}/user_data_minikube.sh"))
  
  tags = {
    name = "${var.project_name}-minikube"
  }
}

resource "aws_security_group" "ec2_sg" {
  name        = "${var.project_name}-ec2-sg"
  description = "Allow SSH traffic"
  vpc_id      = var.vpc_id

  tags = {
    name = "${var.project_name}-ec2-sg"
  }
}

resource "aws_security_group_rule" "ingress" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.ec2_sg.id
  cidr_blocks       = var.allowed_ssh_cidr
}

resource "aws_security_group_rule" "egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = aws_security_group.ec2_sg.id
  cidr_blocks       = ["0.0.0.0/0"]
}