# ec2
resource "aws_instance" "main" {
  count = length(var.server_names)

  ami                         = var.ami_id
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  key_name                    = var.key_name
  subnet_id                   = aws_subnet.main.id
  vpc_security_group_ids      = [aws_security_group.web_sg.id]

  tags = {
    Name = var.server_names[count.index]
  }
}
