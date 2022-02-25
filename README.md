# Deploy with Terraform and AWS Elastic Beanstalk

You can deploy this application with Terraform on AWS with Elastic Beanstalk.

Terraform is a tool for building and managing infrastructure as code. It is a declarative,
programmatic, and portable way to create, destroy, and update infrastructure. 
----------------------------------------
It helps us to define S3 Buckets, IAM Roles, EC2 Instances, and more.
We use S3 Buckets to store our application code and configuration files. 
And we use IAM Roles to give permissions to our EC2 Instances. 

----------------------------------------
Elastic Beanstalk is a web service that makes it easy to deploy, manage, and scale
applications on Amazon's Elastic Cloud Compute Service. S3 buckets are used to store
application code and configuration files, and IAM roles are used to give permissions
to EC2 instances. Elastic Beanstalk creates application environments with codes that
are stored in S3 buckets and run on EC2 instances.
