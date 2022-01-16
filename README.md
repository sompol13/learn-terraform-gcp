## Terraform Tutorial

## Build Infrastructure GCP Example
- The sample configuration provisions a VPN Network.

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