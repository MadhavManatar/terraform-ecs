output "task_definition_arn" {
  value = aws_ecs_task_definition.demotaskdefinition.arn
}

output "task_definition_family" {
  value = aws_ecs_task_definition.demotaskdefinition.family
}

output "task_definition_network_mode" {
  value = aws_ecs_task_definition.demotaskdefinition.network_mode
}

output "task_definition_requires_compatibilities" {
  value = aws_ecs_task_definition.demotaskdefinition.requires_compatibilities
}

output "task_definition_cpu" {
  value = aws_ecs_task_definition.demotaskdefinition.cpu
}

output "task_definition_memory" {
  value = aws_ecs_task_definition.demotaskdefinition.memory
}

output "task_definition_container_definitions" {
  value = aws_ecs_task_definition.demotaskdefinition.container_definitions
}

output "task_definition_id" {
  value = aws_ecs_task_definition.demotaskdefinition.id
}
