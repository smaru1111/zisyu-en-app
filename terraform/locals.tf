locals {
  repository_url = "https://github.com/smaru1111/zisyu-en-app.git"
}

locals {
  amplify_app_environment_variables = {
    # next_public_api_url = "https://api.myapp.com"
    custom_image = "public.ecr.aws/docker/library/node:20.11.0"
  }
}

# locals {
#   domain_name = "zisyu-en-app.com"
# }