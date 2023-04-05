
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

variable "subnets" {
  type        = string
  default     = "subnet-0d40eb5cb94971358", "subnet-076f45002a2a4cf1b" , "subnet-0949490f865ff7d9c"
}

variable "task_definition" {}

variable "cluster" {}

variable "security_groups" {}