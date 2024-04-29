# terraform-cloudwatch
CloudWatch Terraform: Infrastructure as code for AWS CloudWatch.

**Files:**
 - `cloudwatch.tf` file creates a CloudWatch dashboard integrating EC2 instances, an SNS topic, a subscription and a CloudWatch alarm for comprehensive monitoring and alerting within the AWS environment.
 - `terraform.tfvars`: stores variable values
 - `variables.tf`: defines variables

# Installation
```
terraform init
```
```
terraform plan -out plan.out
```
```
terraform apply plan.out --auto-approve
```
