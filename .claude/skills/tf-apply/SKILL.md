---
name: tf-apply
description: Apply the Terraform configuration to create AWS infrastructure.
allowed-tools: Read, Bash
disable-model-invocation: false
---

# tf-apply

This skill applies the Terraform plan to deploy infrastructure to AWS.

## Instructions

1. Navigate to the `terraform/` directory in the repository.
2. Run the command `terraform apply -auto-approve`.
3. Wait for Terraform to finish creating the resources.
4. Capture the output of the deployment.
5. Summarize the infrastructure that was created (S3 bucket, CloudFront distribution, etc).