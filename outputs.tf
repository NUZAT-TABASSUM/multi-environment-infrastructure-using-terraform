# outputs.tf
output "autoscaling_group_name" {
  value = module.autoscaling.example.name
}
