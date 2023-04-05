module "provider"{
    source                  = "./modules/cluster"
}

module "taskdefinition"{
    source                  = "./modules/taskdefinition"
    execution_role          = module.roles.execution_role_arn
}

module "service" {
    source                  = "./modules/service"
    task_definition         = module.taskdefinition.task_definition_id
    cluster                 = module.cluster.cluster_id
    security_groups         = module.securitygroup.aws_security_group_id
}

module "cluster" {
    source                  = "./modules/cluster"
}

module "securitygroup" {
    source                  = "./modules/securitygroup"
}

module "roles" {
    source                  ="./modules/roles"
}