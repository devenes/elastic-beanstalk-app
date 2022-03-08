terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  
  backend "s3" {
    bucket = "enes-mybucket"
    key    = "path/to/my/key"
    region = "us-east-2"
  }
}

# AWS Provider configuration
provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

# Create S3 bucket for Python Flask app
resource "aws_s3_bucket" "eb_bucket" {
  bucket = "enes-eb-python-flask"
}

# Define App files to be uploaded to S3
resource "aws_s3_bucket_object" "eb_bucket_obj" {
  bucket = aws_s3_bucket.eb_bucket.id
  key    = "beanstalk/app.zip"
  source = "app.zip"
}

# Define Elastic Beanstalk application
resource "aws_elastic_beanstalk_application" "eb_app" {
  name        = "enes-eb-tf-app"
  description = "simple flask app"
}

# Create Elastic Beanstalk environment for application with defining environment settings
resource "aws_elastic_beanstalk_application_version" "eb_app_ver" {
  bucket      = aws_s3_bucket.eb_bucket.id
  key         = aws_s3_bucket_object.eb_bucket_obj.id
  application = aws_elastic_beanstalk_application.eb_app.name
  name        = "enes-eb-tf-app-version-lable"
}

resource "aws_elastic_beanstalk_environment" "tfenv" {
  name        = "enes-eb-tf-env"
  application = aws_elastic_beanstalk_application.eb_app.name
  # Define current version of platform
  solution_stack_name = "64bit Amazon Linux 2 v3.3.10 running Python 3.8"
  description         = "environment for flask app"
  version_label       = aws_elastic_beanstalk_application_version.eb_app_ver.name

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "IamInstanceProfile"
    value     = "aws-elasticbeanstalk-ec2-role"
  }

}
