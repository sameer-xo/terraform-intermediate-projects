provider "aws" { 
region = "us-east-1" 
} 
resource "aws_s3_bucket" "my_versioned_bucket" { 
bucket = "my-unique-versioned-bucket-10-10-2025" 
versioning { 
enabled = true 
} 
}