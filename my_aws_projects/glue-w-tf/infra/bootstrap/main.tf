provider "aws" {
  region = "eu-west-1"
}

resource "aws_iam_policy" "terraform_s3_backend_policy" {
  name = "TerraformS3BackendAccess"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Sid    = "S3AccessForTerraformState",
        Effect = "Allow",
        Action = [
          "s3:GetObject",
          "s3:PutObject",
          "s3:DeleteObject",
          "s3:ListBucket"
        ],
        Resource = [
          "arn:aws:s3:::srib-prod",
          "arn:aws:s3:::srib-prod/terraform/*"
        ]
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "attach_s3_policy" {
  role       = "iac-execution-role"  # <-- Avoids the GetRole lookup
  policy_arn = aws_iam_policy.terraform_s3_backend_policy.arn
}
