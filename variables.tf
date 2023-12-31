variable "prefix" {
  type        = string
  description = "(Optional). Prefix override for all generated naming conventions."
  default     = "cs"
}

variable "client" {
  type        = string
  description = "(Optional). Name of the client"
  default     = "ClearScale"
}

variable "project" {
  type        = string
  description = "(Optional). Name of the client project."
  default     = "pmod"
}

variable "accounts" {
  description = "(Optional). List of cloud provider account info."
  type = list(object({
    key      = optional(string, "current")
    provider = optional(string, "aws")
    id       = optional(string, "*") 
    name     = string
    region   = optional(string, null)
  }))
  default = [{
    id   = "*"
    name = "shared"
  }]
}

variable "env" {
  type        = string
  description = "(Optional). Name of the current environment."
  default     = "dev"
}

variable "region" {
  type        = string
  description = "(Optional). Name of the region."
  default     = "us-west-1"
}

variable "name" {
  type        = string
  description = "(Optional). The name of the resource, application, or service."
  default     = "default"
}

variable "function" {
  type        = string
  description = "(Optional). A name of a specific action performed by var.service. (e.g., get, delete, apply, etc.)"
  default     = "default"
}

variable "suffix" {
  type        = string
  description = "(Optional). An optional suffix to append to the output of any naming conventions."
  default     = ""
}