---
name: scaffold-terraform
description: Generate the Terraform files needed to deploy this static website to AWS using S3 and CloudFront.
allowed-tools: Write, Read, Bash
disable-model-invocation: false
---

# scaffold-terraform

Use this skill to scaffold Terraform infrastructure for this static website project.

## Instructions

1. Create a `terraform/` folder in the project root if it does not already exist.
2. Generate the Terraform files needed for an S3 static site deployment fronted by CloudFront.
3. Include the core files such as `main.tf`, `variables.tf`, `outputs.tf`, and `provider.tf`.
4. Make the Terraform code suitable for deploying this static HTML/CSS website to AWS.
5. Explain what files were created and what each one does.