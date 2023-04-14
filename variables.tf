# Default tags
variable "default_tags" {
  default = {
    "Owner" = "Group7"
    "App"   = "Web"
  }
  type        = map(any)
  description = "Default tags to be appliad to all AWS resources"
}

# Prefix to identify resources
variable "prefix" {
  default     = "Final"
  type        = string
  description = "Name prefix"
}