output "pipeline_authorizations_id" {
  description = "Map of id values across all pipeline_authorizations, keyed the same as var.pipeline_authorizations"
  value       = { for k, v in azuredevops_pipeline_authorization.pipeline_authorizations : k => v.id }
}
output "pipeline_authorizations_pipeline_id" {
  description = "Map of pipeline_id values across all pipeline_authorizations, keyed the same as var.pipeline_authorizations"
  value       = { for k, v in azuredevops_pipeline_authorization.pipeline_authorizations : k => v.pipeline_id }
}
output "pipeline_authorizations_pipeline_project_id" {
  description = "Map of pipeline_project_id values across all pipeline_authorizations, keyed the same as var.pipeline_authorizations"
  value       = { for k, v in azuredevops_pipeline_authorization.pipeline_authorizations : k => v.pipeline_project_id }
}
output "pipeline_authorizations_project_id" {
  description = "Map of project_id values across all pipeline_authorizations, keyed the same as var.pipeline_authorizations"
  value       = { for k, v in azuredevops_pipeline_authorization.pipeline_authorizations : k => v.project_id }
}
output "pipeline_authorizations_resource_id" {
  description = "Map of resource_id values across all pipeline_authorizations, keyed the same as var.pipeline_authorizations"
  value       = { for k, v in azuredevops_pipeline_authorization.pipeline_authorizations : k => v.resource_id }
}
output "pipeline_authorizations_type" {
  description = "Map of type values across all pipeline_authorizations, keyed the same as var.pipeline_authorizations"
  value       = { for k, v in azuredevops_pipeline_authorization.pipeline_authorizations : k => v.type }
}

