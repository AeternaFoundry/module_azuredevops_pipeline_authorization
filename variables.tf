variable "pipeline_authorizations" {
  description = <<EOT
Map of pipeline_authorizations, attributes below
Required:
    - project_id
    - resource_id
    - type
Optional:
    - pipeline_id
    - pipeline_project_id
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    project_id          = string
    resource_id         = string
    type                = string
    pipeline_id         = optional(number)
    pipeline_project_id = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.pipeline_authorizations : (
        length(trimspace(v.resource_id)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipeline_authorizations : (
        contains(["endpoint", "queue", "variablegroup", "environment", "repository"], v.type)
      )
    ])
    error_message = "must be one of: \"endpoint\", \"queue\", \"variablegroup\", \"environment\", \"repository\""
  }
  validation {
    condition = alltrue([
      for k, v in var.pipeline_authorizations : (
        v.pipeline_id == null || (v.pipeline_id >= 1)
      )
    ])
    error_message = "must be at least 1"
  }
}

