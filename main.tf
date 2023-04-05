module "provider"{
    source                  = ".//Module//provider"
}

module "taskdefinition"{
    source                  = ".//Module//taskdefinition"
    execution_role          = module.roles.execution_role_arn
}

module "service" {
    source                  = "./Module/service"
    task_definition         = module.taskdefinition.task_definition_id
    cluster                 = module.cluster.cluster_id
    security_groups         = module.securitygroup.aws_security_group_id
}

module "cluster" {
    source                  = "./Module/cluster"
}

module "securitygroup" {
    source                  = "./Module/securitygroup"
}

module "roles" {
    source                  ="./Module/roles"
}