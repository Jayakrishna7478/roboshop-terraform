resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.project_name}/${var.environment}/vpc_id"
  type  = "String"
  value = module.roboshop.vpc_id
}

resource "aws_ssm_parameter" "public" {
  name = "/${var.project_name}/${var.environment}/public_subnet_ids"
  type = "String"
  value = join(",", module.roboshop.public_subnet_ids)
}

resource "aws_ssm_parameter" "private" {
  name = "/${var.project_name}/${var.environment}/private_subnet_ids"
  type = "String"
  value = join(",", module.roboshop.private_subnet_ids)
}

resource "aws_ssm_parameter" "database" {
  name = "/${var.project_name}/${var.environment}/database_subnet_ids"
  type = "String"
  value = join(",", module.roboshop.database_subnet_ids)
}