resource "aws_default_subnet" "default_az1" {
  availability_zone = "ap-southeast-1a"

  tags = {
    Name = "Default subnet for ap-southeast-1a"
  }
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "6.1.4"

  name                   = "n8n"
  ami                    = "ami-00d8fc944fb171e29"
  instance_type          = "t3a.2xlarge"
  subnet_id              = aws_default_subnet.default_az1.id
  vpc_security_group_ids = [aws_security_group.n8n_sg.id]
  iam_instance_profile   = aws_iam_instance_profile.n8n_profile.name

  user_data_base64 = base64encode(templatefile("../scripts/n8n-userdata.sh", {
  }))

  user_data_replace_on_change = true

  tags = {
    Terraform   = "true"
    Environment = "sandbox"
  }
}
