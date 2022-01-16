## Terraform - Build Infrastructure GCP Example
- The sample configuration provisions a VPN Network.

## Terraform - Change Infrastructure

*Create a new resource*
- Provision a Debian VM Instance with the VPN Network.

*Modify configuration*
- Adding network tags `dev` and `web` to the VM Instance.

*Introduce destructive changes*
A destructive change is a change that requires the provider to replace the existing resource rather than updating it.
- Replace the boot disk from a Debian 9 image to Google's Container-Optimized OS (COS).