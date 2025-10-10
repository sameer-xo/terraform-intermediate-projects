# Create an RDS instance
resource "aws_db_instance" "my_db10-10-2025" {
  allocated_storage    = 20
  engine               = "mysql"
  instance_class       = "db.t3.micro" 
  username             = "admin"
  password             = "adminpassword123"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
}
