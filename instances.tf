# resource "aws_instance" "demo_ubuntu_server" {
#     ami = "ami-0287a05f0ef0e9d9a"
#     instance_type = "t2.micro"
#     subnet_id = aws_subnet.public_subnet.id
#     vpc_security_group_ids = [aws_security_group.demo_sg.id]
#     key_name = var.keyname // change it as per necessary

#     tags = {
#       Name = "Ubuntu-server"
#       Type = "Docker"
#     }
  
# }


# resource "aws_s3_bucket" "demo_s3" {
#     bucket = "jagan_terraform-s3-korey234"

#     tags = {
#         Name = "My S333 bucket"
#         Environment = "Integration"
#     }

# }


