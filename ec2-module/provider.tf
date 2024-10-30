terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
      configuration_aliases = [ aws.east]
    }
  }
}

provider "aws" {
  alias = "east"
  region = "us-east-1"
}