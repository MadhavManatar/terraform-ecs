
variable "name" {
  type        = string
  default     = "service"
}


variable "type" {
  type        = string
  default     = "FARGATE"
}


variable "desiredcount" {
  type        = number
  default     = "1"
}
variable "platform_version" {
    type      = string
    default   = "LATEST"
}

variable "task_definition" {}

variable "cluster" {}

variable "security_groups" {}