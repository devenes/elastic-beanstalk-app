# Deploy with Terraform and AWS Elastic Beanstalk

![diagram](/diagram.jpg)

Check the output of the application: http://enes-eb-tf-env.eba-pefwzvwu.us-east-2.elasticbeanstalk.com/Enes


# Getting Started with Terraform
HashiCorp Terraform is an infrastructure as code tool that lets you define both cloud and on-prem resources in human-readable configuration files that you can version, reuse, and share. You can then use a consistent workflow to provision and manage all of your infrastructure throughout its lifecycle. Terraform can manage low-level components like compute, storage, and networking resources, as well as high-level components like DNS entries and SaaS features.
Terraform creates and manages resources on cloud platforms and other services through their application programming interfaces (APIs). Providers enable Terraform to work with virtually any platform or service with an accessible API.

Check out the [Terraform Documentation](https://www.terraform.io/docs/intro/getting-started.html) for more information.

<br>

# Getting Started with AWS Elastic Beanstalk
Amazon Web Services (AWS) comprises over one hundred services, each of which exposes an area of functionality. While the variety of services offers flexibility for how you want to manage your AWS infrastructure, it can be challenging to figure out which services to use and how to provision them.

With Elastic Beanstalk, you can quickly deploy and manage applications in the AWS Cloud without having to learn about the infrastructure that runs those applications. Elastic Beanstalk reduces management complexity without restricting choice or control. You simply upload your application, and Elastic Beanstalk automatically handles the details of capacity provisioning, load balancing, scaling, and application health monitoring.

Elastic Beanstalk supports applications developed in Go, Java, .NET, Node.js, PHP, Python, and Ruby. When you deploy your application, Elastic Beanstalk builds the selected supported platform version and provisions one or more AWS resources, such as Amazon EC2 instances, to run your application.

You can interact with Elastic Beanstalk by using the Elastic Beanstalk console, the AWS Command Line Interface (AWS CLI), or eb, a high-level CLI designed specifically for Elastic Beanstalk.

Check out the [AWS Elastic Beanstalk](https://aws.amazon.com/elasticbeanstalk/) documentation for more information.

<br>

# Getting started with GitHub Actions
GitHub Actions is a continuous integration and continuous delivery (CI/CD) platform that allows you to automate your build, test, and deployment pipeline. You can create workflows that build and test every pull request to your repository, or deploy merged pull requests to production.

GitHub Actions goes beyond just DevOps and lets you run workflows when other events happen in your repository. For example, you can run a workflow to automatically add the appropriate labels whenever someone creates a new issue in your repository.

GitHub provides Linux, Windows, and macOS virtual machines to run your workflows, or you can host your own self-hosted runners in your own data center or cloud infrastructure.

Check out the [GitHub Actions Documentation](https://help.github.com/en/actions/getting-started-with-github-actions/about-github-actions) for more information.

--------------------------------------------------------------------------------
- You can deploy this application with Terraform on AWS with Elastic Beanstalk.

- Terraform is a tool for building and managing infrastructure as code. It is a declarative,
programmatic, and portable way to create, destroy, and update infrastructure. 

--------------------------------------------------------------------------------

- It helps us to define S3 Buckets, IAM Roles, EC2 Instances, and more.
We use S3 Buckets to store our application code and configuration files. 
And we use IAM Roles to give permissions to our EC2 Instances. 
--------------------------------------------------------------------------------
- Elastic Beanstalk is a service that makes it easy to deploy, manage, and scale
applications on Amazon's Elastic Cloud Compute Service. 
- S3 buckets are used to store application code and configuration files.
- IAM roles are used to authorize Terraform's operations. 
- Elastic Beanstalk creates the application environment with code stored in S3 buckets and makes it run on EC2 instances.
