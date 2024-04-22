resource "aws_iam_role" "myapp" {
  name = "zisyu-en"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "amplify.amazonaws.com"
        }
      }
    ]
  })
}

# ログの書き込み設定が必要そうだったので記載
# resource "aws_iam_policy" "myapp" {
#   name        = "zisyu-en"
#   description = "Policy for myapp"
#   policy      = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#       {
#         Sid       = "PushLogs",
#         Effect   = "Allow",
#         Action = [
#           "logs:CreateLogStream",
#           "logs:PutLogEvents"
#         ],
#         Resource = "arn:aws:logs:ap-northeast-1:${data.aws_caller_identity.current.account_id}:log-group:/aws/amplify/*:log-stream:*"
#       },
#       {
#         Sid       = "CreateLogGroup",
#         Effect   = "Allow",
#         Action = [
#           "logs:CreateLogGroup"
#         ],
#         Resource = "arn:aws:logs:ap-northeast-1:${data.aws_caller_identity.current.account_id}:log-group:/aws/amplify/*"
#       },
#       {
#         Sid       = "DescribeLogGroups",
#         Effect   = "Allow",
#         Action = [
#           "logs:DescribeLogGroups"
#         ],
#         Resource = "arn:aws:logs:ap-northeast-1:${data.aws_caller_identity.current.account_id}:log-group:*"
#       }
#     ]
#   })
# }

# resource "aws_iam_role_policy_attachment" "myapp" {
#   role       = aws_iam_role.myapp.name
#   policy_arn = aws_iam_policy.myapp.arn
# }
