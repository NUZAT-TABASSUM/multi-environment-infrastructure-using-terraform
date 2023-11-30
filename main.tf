# dev 

module "dev-app" {
    source = "./my_app_infra_module"
    my_env = "dev"
    instance_type = "t2.micro"
    ami = "ami-007855ac798b5175e" 
}

#prd
module "prd-app" {
    source = "./my_app_infra_module"
    my_env = "prd"
    instance_type = "t2.medium"
    ami = "ami-007855ac798b5175e" 
}

#stg
module "stg-app" {
    source = "./my_app_infra_module"
    my_env = "stg"
    instance_type = "t2.small"
    ami = "ami-007855ac798b5175e" 
  
}
# modules/autoscaling/main.tf
variable "min_instances" {}
variable "max_instances" {}

resource "aws_autoscaling_group" "example" {
  // Auto-scaling group configurations
}

module "autoscaling" {
  source        = "./modules/autoscaling"
  min_instances = 2
  max_instances = 5
}
