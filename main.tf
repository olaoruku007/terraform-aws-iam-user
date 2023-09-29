resource "aws_iam_user" "admin-user" {
  name = "lucy"

  tags = {
    Description = "Technical Team Leader"
  }
}

resource "aws_iam_policy" "admin-user" {
  name   = "AdminUsers"
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]
} 
EOF
}

resource "aws_iam_policy_attachment" "AdminUser-access-policy" {
  name       = "AdminUser-access-policy"
  users      = [aws_iam_user.admin-user.name]
  policy_arn = aws_iam_policy.admin-user.arn

}















