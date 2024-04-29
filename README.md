# terraform-cloudwatch
CloudWatch Terraform: Infrastructure as code for AWS CloudWatch.

**Files:**
 - `cloudwatch.tf` file creates a CloudWatch dashboard integrating EC2 instances, an SNS topic, a subscription and a CloudWatch alarm for comprehensive monitoring and alerting within the AWS environment.
 - `terraform.tfvars`: stores variable values
 - `variables.tf`: defines variables

# Installation
- Terraform command to initialize the project
```
terraform init
```
* Terraform command to plan the changes and to check again the resources that were added, changed or deleted
```
terraform plan -out plan.out
```
- Terraform command to apply the changes
```
terraform apply plan.out --auto-approve
```
