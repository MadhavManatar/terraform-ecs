variable "family" {
    type            = string
    default         = "demotaskdefinition"

}

variable "netmod" {
    type            = string
    default         = "awsvpc"
}

variable "reqcomp" {
    type            = string
    default         = "FARGATE"
}

variable "cpu" {
    type            = number
    default         = "512"
}

variable "memory" {
    type            = number
    default         = "2048"
}

variable "defination" {
  type    = string
  default = <<-JSON
    [
      {
        "name"      : "nginx",
        "image"     : "917257938300.dkr.ecr.us-east-2.amazonaws.com/demorepo:latest",
        "cpu"       : 512,
        "memory"    : 2048,
        "essential" : true,
        "portMappings" : [
          {
            "containerPort" : 80,
            "hostPort"      : 80
          }
        ]
      }
    ]
  JSON
}

variable "execution_role" {}