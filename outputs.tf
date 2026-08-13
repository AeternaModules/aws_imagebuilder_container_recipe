output "imagebuilder_container_recipes_id" {
  description = "Map of id values across all imagebuilder_container_recipes, keyed the same as var.imagebuilder_container_recipes"
  value       = { for k, v in aws_imagebuilder_container_recipe.imagebuilder_container_recipes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "imagebuilder_container_recipes_arn" {
  description = "Map of arn values across all imagebuilder_container_recipes, keyed the same as var.imagebuilder_container_recipes"
  value       = { for k, v in aws_imagebuilder_container_recipe.imagebuilder_container_recipes : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "imagebuilder_container_recipes_component" {
  description = "Map of component values across all imagebuilder_container_recipes, keyed the same as var.imagebuilder_container_recipes"
  value       = { for k, v in aws_imagebuilder_container_recipe.imagebuilder_container_recipes : k => v.component if v.component != null && length(v.component) > 0 }
}
output "imagebuilder_container_recipes_container_type" {
  description = "Map of container_type values across all imagebuilder_container_recipes, keyed the same as var.imagebuilder_container_recipes"
  value       = { for k, v in aws_imagebuilder_container_recipe.imagebuilder_container_recipes : k => v.container_type if v.container_type != null && length(v.container_type) > 0 }
}
output "imagebuilder_container_recipes_date_created" {
  description = "Map of date_created values across all imagebuilder_container_recipes, keyed the same as var.imagebuilder_container_recipes"
  value       = { for k, v in aws_imagebuilder_container_recipe.imagebuilder_container_recipes : k => v.date_created if v.date_created != null && length(v.date_created) > 0 }
}
output "imagebuilder_container_recipes_description" {
  description = "Map of description values across all imagebuilder_container_recipes, keyed the same as var.imagebuilder_container_recipes"
  value       = { for k, v in aws_imagebuilder_container_recipe.imagebuilder_container_recipes : k => v.description if v.description != null && length(v.description) > 0 }
}
output "imagebuilder_container_recipes_dockerfile_template_data" {
  description = "Map of dockerfile_template_data values across all imagebuilder_container_recipes, keyed the same as var.imagebuilder_container_recipes"
  value       = { for k, v in aws_imagebuilder_container_recipe.imagebuilder_container_recipes : k => v.dockerfile_template_data if v.dockerfile_template_data != null && length(v.dockerfile_template_data) > 0 }
}
output "imagebuilder_container_recipes_dockerfile_template_uri" {
  description = "Map of dockerfile_template_uri values across all imagebuilder_container_recipes, keyed the same as var.imagebuilder_container_recipes"
  value       = { for k, v in aws_imagebuilder_container_recipe.imagebuilder_container_recipes : k => v.dockerfile_template_uri if v.dockerfile_template_uri != null && length(v.dockerfile_template_uri) > 0 }
}
output "imagebuilder_container_recipes_encrypted" {
  description = "Map of encrypted values across all imagebuilder_container_recipes, keyed the same as var.imagebuilder_container_recipes"
  value       = { for k, v in aws_imagebuilder_container_recipe.imagebuilder_container_recipes : k => v.encrypted if v.encrypted != null }
}
output "imagebuilder_container_recipes_instance_configuration" {
  description = "Map of instance_configuration values across all imagebuilder_container_recipes, keyed the same as var.imagebuilder_container_recipes"
  value       = { for k, v in aws_imagebuilder_container_recipe.imagebuilder_container_recipes : k => v.instance_configuration if v.instance_configuration != null && length(v.instance_configuration) > 0 }
}
output "imagebuilder_container_recipes_kms_key_id" {
  description = "Map of kms_key_id values across all imagebuilder_container_recipes, keyed the same as var.imagebuilder_container_recipes"
  value       = { for k, v in aws_imagebuilder_container_recipe.imagebuilder_container_recipes : k => v.kms_key_id if v.kms_key_id != null && length(v.kms_key_id) > 0 }
}
output "imagebuilder_container_recipes_name" {
  description = "Map of name values across all imagebuilder_container_recipes, keyed the same as var.imagebuilder_container_recipes"
  value       = { for k, v in aws_imagebuilder_container_recipe.imagebuilder_container_recipes : k => v.name if v.name != null && length(v.name) > 0 }
}
output "imagebuilder_container_recipes_owner" {
  description = "Map of owner values across all imagebuilder_container_recipes, keyed the same as var.imagebuilder_container_recipes"
  value       = { for k, v in aws_imagebuilder_container_recipe.imagebuilder_container_recipes : k => v.owner if v.owner != null && length(v.owner) > 0 }
}
output "imagebuilder_container_recipes_parent_image" {
  description = "Map of parent_image values across all imagebuilder_container_recipes, keyed the same as var.imagebuilder_container_recipes"
  value       = { for k, v in aws_imagebuilder_container_recipe.imagebuilder_container_recipes : k => v.parent_image if v.parent_image != null && length(v.parent_image) > 0 }
}
output "imagebuilder_container_recipes_platform" {
  description = "Map of platform values across all imagebuilder_container_recipes, keyed the same as var.imagebuilder_container_recipes"
  value       = { for k, v in aws_imagebuilder_container_recipe.imagebuilder_container_recipes : k => v.platform if v.platform != null && length(v.platform) > 0 }
}
output "imagebuilder_container_recipes_platform_override" {
  description = "Map of platform_override values across all imagebuilder_container_recipes, keyed the same as var.imagebuilder_container_recipes"
  value       = { for k, v in aws_imagebuilder_container_recipe.imagebuilder_container_recipes : k => v.platform_override if v.platform_override != null && length(v.platform_override) > 0 }
}
output "imagebuilder_container_recipes_region" {
  description = "Map of region values across all imagebuilder_container_recipes, keyed the same as var.imagebuilder_container_recipes"
  value       = { for k, v in aws_imagebuilder_container_recipe.imagebuilder_container_recipes : k => v.region if v.region != null && length(v.region) > 0 }
}
output "imagebuilder_container_recipes_tags" {
  description = "Map of tags values across all imagebuilder_container_recipes, keyed the same as var.imagebuilder_container_recipes"
  value       = { for k, v in aws_imagebuilder_container_recipe.imagebuilder_container_recipes : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "imagebuilder_container_recipes_tags_all" {
  description = "Map of tags_all values across all imagebuilder_container_recipes, keyed the same as var.imagebuilder_container_recipes"
  value       = { for k, v in aws_imagebuilder_container_recipe.imagebuilder_container_recipes : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "imagebuilder_container_recipes_target_repository" {
  description = "Map of target_repository values across all imagebuilder_container_recipes, keyed the same as var.imagebuilder_container_recipes"
  value       = { for k, v in aws_imagebuilder_container_recipe.imagebuilder_container_recipes : k => v.target_repository if v.target_repository != null && length(v.target_repository) > 0 }
}
output "imagebuilder_container_recipes_version" {
  description = "Map of version values across all imagebuilder_container_recipes, keyed the same as var.imagebuilder_container_recipes"
  value       = { for k, v in aws_imagebuilder_container_recipe.imagebuilder_container_recipes : k => v.version if v.version != null && length(v.version) > 0 }
}
output "imagebuilder_container_recipes_working_directory" {
  description = "Map of working_directory values across all imagebuilder_container_recipes, keyed the same as var.imagebuilder_container_recipes"
  value       = { for k, v in aws_imagebuilder_container_recipe.imagebuilder_container_recipes : k => v.working_directory if v.working_directory != null && length(v.working_directory) > 0 }
}

