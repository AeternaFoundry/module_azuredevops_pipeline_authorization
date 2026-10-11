output "pipeline_authorizations_id" {
  description = "Map of id values across all pipeline_authorizations, keyed the same as var.pipeline_authorizations except keys with no id are omitted"
  value       = { for k, v in azuredevops_pipeline_authorization.pipeline_authorizations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "pipeline_authorizations_pipeline_id" {
  description = "Map of pipeline_id values across all pipeline_authorizations, keyed the same as var.pipeline_authorizations except keys with no pipeline_id are omitted"
  value       = { for k, v in azuredevops_pipeline_authorization.pipeline_authorizations : k => v.pipeline_id if v.pipeline_id != null }
}
output "pipeline_authorizations_pipeline_project_id" {
  description = "Map of pipeline_project_id values across all pipeline_authorizations, keyed the same as var.pipeline_authorizations except keys with no pipeline_project_id are omitted"
  value       = { for k, v in azuredevops_pipeline_authorization.pipeline_authorizations : k => v.pipeline_project_id if v.pipeline_project_id != null && length(v.pipeline_project_id) > 0 }
}
output "pipeline_authorizations_project_id" {
  description = "Map of project_id values across all pipeline_authorizations, keyed the same as var.pipeline_authorizations except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_pipeline_authorization.pipeline_authorizations : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "pipeline_authorizations_resource_id" {
  description = "Map of resource_id values across all pipeline_authorizations, keyed the same as var.pipeline_authorizations except keys with no resource_id are omitted"
  value       = { for k, v in azuredevops_pipeline_authorization.pipeline_authorizations : k => v.resource_id if v.resource_id != null && length(v.resource_id) > 0 }
}
output "pipeline_authorizations_type" {
  description = "Map of type values across all pipeline_authorizations, keyed the same as var.pipeline_authorizations except keys with no type are omitted"
  value       = { for k, v in azuredevops_pipeline_authorization.pipeline_authorizations : k => v.type if v.type != null && length(v.type) > 0 }
}

