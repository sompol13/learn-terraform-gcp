# NOTE: Multiple output blocks can be defined to specify multiple output variables.

output "ip" {
  value = google_compute_instance.vm_instance.network_interface.0.network_ip
}