---
name: tf-plan
description: Run Terraform plan to preview infrastructure changes before deployment.
allowed-tools: Read, Bash
disable-model-invocation: false
---

# tf-plan

This skill previews the infrastructure changes that Terraform will make.

## Instructions

1. Navigate to the `terraform/` directory in the repository.
2. Run the command `terraform plan`.
3. Capture the output of the plan.
4. Explain what infrastructure resources will be created or modified.
5. Highlight important resources such as S3 buckets, CloudFront distributions, or IAM roles.