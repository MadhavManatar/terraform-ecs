
resource "aws_ecs_service" "service" {
    name                           = var.name
    cluster                        = var.cluster
    task_definition                = var.task_definition
    desired_count                  = var.desiredcount
    launch_type                    = var.type
    platform_version               = var.platform_version

    network_configuration {
    assign_public_ip = true
    security_groups  = [var.security_groups]
    subnets          = ["subnet-0d40eb5cb94971358", "subnet-076f45002a2a4cf1b" , "subnet-0949490f865ff7d9c"]
  }
  lifecycle {
    ignore_changes = [task_definition]
  }
}
