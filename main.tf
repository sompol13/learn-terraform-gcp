/**
 * The terraform {} block contains Terraform settings, including the required providers Terraform will use to provision your infrastructure. 
 * For each provider, the source attribute defines an optional hostname, a namespace, and the provider type.
 *
 * NOTE: hashicorp/google is shorthand for registry.terraform.io/hashicorp/google.
 */
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

/**
 * The provider block configures the specified provider, in this case google.
 * A provider is a plugin that Terraform uses to create and manage your resources.
 * 
 * NOTE: You can define multiple provider blocks in a Terraform configuration.
 */
provider "google" {
  credentials = file("~/keys/gcp-terraform-default-service-account.json")

  project = "terraform-338309"
  region  = "us-central1"
  zone    = "us-central1-c"
}

/**
 * Use resource blocks to define components of your infrastructure.
 * A resource might be a physical component such as a server, 
 * or it can be a logical resource such as a Heroku application.
 *
 * NOTE: The order in which resources are defined in your configuration files 
 * does not affect how Terraform provisions your resources.
 */ 

// Provision a VPN Network.
resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

// Provision a Debian VM Instance.
resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "f1-micro"
  tags         = ["web", "dev"]

  boot_disk {
    initialize_params {
      image = "cos-cloud/cos-stable"
    }
  }

  network_interface {
    // This establishes a dependency between the two resources.
    network = google_compute_network.vpc_network.name
    // The presence of the access_config block, even without any arguments, 
    // gives the VM an external IP address, making it accessible over the internet.
    access_config {
    }
  }
}

# terraform init - Initialize the directory
# terraform fmt - Format the configuraton
# terraform validate - validate the configuraton
# terraform apply - Create infrastructure
# terraform show - Inspect state
# terraform destroy - Terminates resources
