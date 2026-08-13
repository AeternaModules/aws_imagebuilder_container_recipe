variable "imagebuilder_container_recipes" {
  description = <<EOT
Map of imagebuilder_container_recipes, attributes below
Required:
    - container_type
    - name
    - parent_image
    - version
    - component (block):
        - component_arn (required)
        - parameter (optional, block):
            - name (required)
            - value (required)
    - target_repository (block):
        - repository_name (required)
        - service (required)
Optional:
    - description
    - dockerfile_template_data
    - dockerfile_template_uri
    - kms_key_id
    - platform_override
    - region
    - tags
    - tags_all
    - working_directory
    - instance_configuration (block):
        - block_device_mapping (optional, block):
            - device_name (optional)
            - ebs (optional, block):
                - delete_on_termination (optional)
                - encrypted (optional)
                - iops (optional)
                - kms_key_id (optional)
                - snapshot_id (optional)
                - throughput (optional)
                - volume_size (optional)
                - volume_type (optional)
            - no_device (optional)
            - virtual_name (optional)
        - image (optional)
EOT

  type = map(object({
    container_type           = string
    name                     = string
    parent_image             = string
    version                  = string
    description              = optional(string)
    dockerfile_template_data = optional(string)
    dockerfile_template_uri  = optional(string)
    kms_key_id               = optional(string)
    platform_override        = optional(string)
    region                   = optional(string)
    tags                     = optional(map(string))
    tags_all                 = optional(map(string))
    working_directory        = optional(string)
    component = list(object({
      component_arn = string
      parameter = optional(list(object({
        name  = string
        value = string
      })))
    }))
    target_repository = object({
      repository_name = string
      service         = string
    })
    instance_configuration = optional(object({
      block_device_mapping = optional(list(object({
        device_name = optional(string)
        ebs = optional(object({
          delete_on_termination = optional(string)
          encrypted             = optional(string)
          iops                  = optional(number)
          kms_key_id            = optional(string)
          snapshot_id           = optional(string)
          throughput            = optional(number)
          volume_size           = optional(number)
          volume_type           = optional(string)
        }))
        no_device    = optional(bool)
        virtual_name = optional(string)
      })))
      image = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.imagebuilder_container_recipes : (
        length(v.component) >= 1
      )
    ])
    error_message = "Each component list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.imagebuilder_container_recipes : (
        contains(["DOCKER"], v.container_type)
      )
    ])
    error_message = "must be one of: DOCKER"
  }
  validation {
    condition = alltrue([
      for k, v in var.imagebuilder_container_recipes : (
        v.dockerfile_template_data == null || (length(v.dockerfile_template_data) >= 1 && length(v.dockerfile_template_data) <= 16000)
      )
    ])
    error_message = "must be between 1 and 16000 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.imagebuilder_container_recipes : (
        v.dockerfile_template_uri == null || (can(regex("^s3://", v.dockerfile_template_uri)))
      )
    ])
    error_message = "must begin with s3://"
  }
  validation {
    condition = alltrue([
      for k, v in var.imagebuilder_container_recipes : (
        v.instance_configuration == null || (v.instance_configuration.image == null || (length(v.instance_configuration.image) >= 1 && length(v.instance_configuration.image) <= 1024))
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.imagebuilder_container_recipes : (
        length(v.parent_image) >= 1 && length(v.parent_image) <= 1024
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.imagebuilder_container_recipes : (
        v.platform_override == null || (contains(["Linux", "Windows"], v.platform_override))
      )
    ])
    error_message = "must be one of: Linux, Windows"
  }
  validation {
    condition = alltrue([
      for k, v in var.imagebuilder_container_recipes : (
        contains(["ECR"], v.target_repository.service)
      )
    ])
    error_message = "must be one of: ECR"
  }
  validation {
    condition = alltrue([
      for k, v in var.imagebuilder_container_recipes : (
        v.working_directory == null || (length(v.working_directory) >= 1 && length(v.working_directory) <= 1024)
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  # Note: 16 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

