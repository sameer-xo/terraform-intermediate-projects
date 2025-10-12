variable "instance_types" { 
description = "List of instance types" 
type        = list(string) 
default     = ["t2.micro", "t3.small", "t3.medium"] 
}
resource "aws_instance" "example" { 
count         = length(var.instance_types) 
ami           = "ami-0360c520857e3138f" 
instance_type = var.instance_types[count.index] 
tags = { 
Name = "Instance-${count.index}" 
} 
} 