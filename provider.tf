terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }

  }
}



provider "aws" {
  # region  = "us-east-1"
  # profile = "default"
}

terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket = "gfakx-statefile-20233"
    key    = "jjtech/terraform.tfstate"
    region = "us-east-1"

    # Replace this with your DynamoDB table name!
    dynamodb_table = "gfakx-backend-locks"
  }
}




