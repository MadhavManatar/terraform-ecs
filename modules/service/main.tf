
resource "aws_ecs_service" "service" {
    name                            = var.name
    cluster                         = var.cluster
    task_definition                 = var.task_definition
    desired_count                   = var.desiredcount
    launch_type                     = var.type
    platform_version                = var.platform_version

    network_configuration {
    assign_public_ip                = true
    security_groups                 = [var.security_groups]
    subnets                         = [var.subnets]
  }
  lifecycle {
    ignore_changes = [task_definition]
  }
}
