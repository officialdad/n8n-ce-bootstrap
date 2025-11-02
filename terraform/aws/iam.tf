resource "aws_iam_role" "n8n_ssm_role" {
  name = "n8n-ssm-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "n8n_ssm_policy" {
  role       = aws_iam_role.n8n_ssm_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

resource "aws_iam_instance_profile" "n8n_profile" {
  name = "n8n-profile"
  role = aws_iam_role.n8n_ssm_role.name
}

