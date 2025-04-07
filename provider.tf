terraform {
   backend "s3" {
    bucket         = "546251165313-nulp-terraform-tfstate"
    key            = "dev/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "546251165313-nulp-terraform-tfstate-lock"
   }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.91.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "eu-central-1"

}