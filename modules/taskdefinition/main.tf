
resource "aws_ecs_task_definition" "demotaskdefinition" {
    family                          = var.family
    network_mode                    = var.netmod
    requires_compatibilities        = [var.reqcomp]
    cpu                             = var.cpu
    memory                          = var.memory
    execution_role_arn              = var.execution_role
    container_definitions           = var.defination
}