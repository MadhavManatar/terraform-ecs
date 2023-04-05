
resource "aws_ecs_cluster" "cluster" {
    name                = var.name
    setting {
        name            = var.settingname
        value           = var.value
    }
}