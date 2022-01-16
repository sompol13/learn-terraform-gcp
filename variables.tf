# Tip: Terraform loads all files ending in .tf in the working directory, 
# so you can name your configuration files however you choose.

variable "project" { }

variable "credentials_file" { }

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-c"
}
