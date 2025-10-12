variable "instance_configs" { 
type = map(string) 
default = { 
dev  = "t2.micro" 
prod = "t3.large" 
} 
} 
 
resource "aws_instance" "example" { 
ami           = "ami-0360c520857e3138f" 
instance_type = var.instance_configs["prod"]  # Change to "dev" for 

}