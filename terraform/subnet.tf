# subnet
resource "aws_subnet" "main" {
  vpc_id                                      = aws_vpc.main.id
  cidr_block                                  = "10.0.1.0/24"
  enable_resource_name_dns_a_record_on_launch = true
  map_public_ip_on_launch                     = true

  tags = {
    Name = "web-subnet"
  }
}