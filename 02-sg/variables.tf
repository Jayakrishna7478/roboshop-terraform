variable "common_tags" {
  default = {
    project = "roboshop"
    Environment = "dev"
    Terraform = "true"
  }
}

variable "sg_tags" {
  default = {}
}

variable "project_name" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}

variable "mongodb_sg_ingress_rules" {
  default = [
    {
        description      = "Allow port 80"
        from_port        = 80
        to_port          = 0
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
   },
   {
        description      = "Allow port 443"
        from_port        = 443
        to_port          = 0
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
   }
  ]
}
