resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}

# n8n Security Group
resource "aws_security_group" "n8n_sg" {
  name        = "n8n-sg"
  description = "Security group for n8n"
  vpc_id      = aws_default_vpc.default.id

  # n8n web access
  ingress {
    from_port   = 5678
    to_port     = 5678
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "n8n web access"
  }

  # Allow all outbound
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic"
  }
}

