# Tip: Terraform loads all files ending in .tf in the working directory, 
# so you can name your configuration files however you choose.

# SAMPLE: terraform-338309
variable "project" { }

# SAMPLE: ~/keys/gcp-terraform-default-service-account.json
variable "credentials_file" { }

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-c"
}
