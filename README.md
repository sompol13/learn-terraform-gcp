## Learn - Build Infrastructure GCP Example
- The sample configuration provisions a VPN Network.

<img width="1580" alt="gcp" src="https://user-images.githubusercontent.com/33342822/150630615-a75cb7c9-a9f3-4d7b-b186-8b2d5062af21.png">

## Change Infrastructure

*Create a new resource*
- Provision a Debian VM Instance with the VPN Network.

*Modify configuration*
- Adding network tags `dev` and `web` to the VM Instance.

*Introduce destructive changes*  
- A destructive change is a change that requires the provider to replace the existing resource rather than updating it.
- Replace the boot disk from a Debian 9 image to Google's Container-Optimized OS (COS).

## Destroy Infrastructure
- The terraform destroy command terminates resources managed by your Terraform project.

## Define Input Variables

*Define input variables*
- Make terraform dynamic configurations using variables.tf

*Use variables in configuration*
- Variables are referenced with the var. prefix.

*Assign values to your variables*
- You can populate variables using values from a file. Terraform automatically loads files called terraform.tfvars or matching *.auto.tfvars in the working directory when running operations.

## Query Data with Output Variables
- Use output values to organize data to be easily queried and displayed to the Terraform user.

*Define outputs*
Define an output for the IP address of the instance that Terraform provisions.

*Inspect outputs*
Query the outputs with the terraform output command.
