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

# Define Auto Scaling Group
resource "aws_autoscaling_group" "example" {
  desired_capacity     = 2
  max_size             = 5
  min_size             = 1

  # Other auto-scaling configurations go here...

  launch_configuration = aws_launch_configuration.example.id
}

 lifecycle {
    create_before_destroy = true
  }

variable "asg_desired_capacity" {
  description = "Auto Scaling Group desired capacity"
  default     = 2
}

variable "asg_max_size" {
  description = "Auto Scaling Group maximum size"
  default     = 5
}

variable "asg_min_size" {
  description = "Auto Scaling Group minimum size"
  default     = 1
}