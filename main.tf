provider "aws" {
    region = "us-east-1"
    profile = "terraformprofile"
  
}

terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "4.59.0"
      }
    }
  
}

# resource "aws_vpc" "producer" {
#     cidr_block = "10.0.0.0/16"
#     enable_dns_hostnames = true
#     enable_dns_support = true

#     tags = {
#       Name = "Producer_VPC"
#     }
  
# }


# resource "aws_subnet" "public_subnet" {
#     vpc_id = aws_vpc.producer.id
#     cidr_block = "10.0.1.0/24"
#     availability_zone = "us-east-1a"

#     tags = {
#       Name = "Pb_subnet-1a" 
#     }
  
# }




# resource "aws_subnet" "private_subnet" {
#     vpc_id = aws_vpc.producer.id
#     cidr_block = "10.0.2.0/24"
#     availability_zone = "us-east-1b"

#     tags = {
#       Name = "PR_Subnet-1b"
#     }
  
# }

# resource "aws_internet_gateway" "prd_igwy" {
#     vpc_id = aws_vpc.producer.id

#     tags = {
#         Name = "producer_igwy"
#     }

# }

# resource "aws_route_table" "public_rt" {
#     vpc_id = aws_vpc.producer.id

#     route {
#         cidr_block = "0.0.0.0/0"
#         gateway_id = aws_internet_gateway.prd_igwy.id
#     }

#     tags = {
#         Name = "producer_vpc_public_rt"
#     }
  
# }


# resource "aws_route_table_association" "pb_rt_sub_association" {
#     subnet_id = aws_subnet.public_subnet.id
#     route_table_id = aws_route_table.public_rt.id
  
# }


# resource "aws_route_table" "private_rt" {
#     vpc_id = aws_vpc.producer.id

#     tags = {
#       Name = "producer_vpc_private_rt"
#     }
  
# }

# resource "aws_route_table_association" "pr_rt_sub_association" {
#     subnet_id = aws_subnet.private_subnet.id
#     route_table_id = aws_route_table.public_rt.id
  
# }







# resource "aws_vpc_endpoint" "s3_endpoint" {
#   vpc_id      = aws_vpc.my_vpc.id
#   service_name = "com.amazonaws.us-east-1.s3"

#   route_table_ids = [aws_subnet.my_subnet.route_table_id]

#   security_group_ids = [aws_vpc.my_vpc.default_security_group_id]

#   private_dns_enabled = true

#   tags = {
#     Name = "S3Endpoint"
#   }
# }

