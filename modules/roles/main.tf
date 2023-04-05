resource "aws_iam_role" "ecs_execution_role" {
  name                          = var.rolename
  
  assume_role_policy = jsonencode({
    Version                     = var.Version
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal               = {
          Service               = "ecs-tasks.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_policy" "ecs_execution_role_policy" {
  name                          = var.policyname
  
  policy = jsonencode({
   Version                      = var.Version
    Statement = [
      {
        Action = [
                                "ecr:GetAuthorizationToken",
                                "ecr:BatchCheckLayerAvailability",
                                "ecr:GetDownloadUrlForLayer",
                                "ecr:BatchGetImage",
                                "logs:CreateLogStream",
                                "logs:PutLogEvents"
        ]
        Effect                  = "Allow"
        Resource                = "*"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ecs_execution_role_attachment" {
  policy_arn                    = aws_iam_policy.ecs_execution_role_policy.arn
  role                          = aws_iam_role.ecs_execution_role.name
}