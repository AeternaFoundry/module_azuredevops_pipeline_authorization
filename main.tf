resource "azuredevops_pipeline_authorization" "pipeline_authorizations" {
  for_each = var.pipeline_authorizations

  project_id          = each.value.project_id
  resource_id         = each.value.resource_id
  type                = each.value.type
  pipeline_id         = each.value.pipeline_id
  pipeline_project_id = each.value.pipeline_project_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

