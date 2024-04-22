
# resource "aws_s3_bucket" "terraform_state_bucket" {
#   bucket = "zisyuen-terraform-storage" 

#   lifecycle {
#     prevent_destroy = true
#   }
# }

# resource "aws_s3_bucket_acl" "terraform_state_bucket" {
#   bucket = "terraform-2024" 
#   acl    = "private"

#   lifecycle {
#     prevent_destroy = true
#   }
# }