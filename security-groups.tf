# resource "aws_security_group" "demo_sg" {
#     name = "Allow _All_Ports"
#     description = "Allow all ports for all protocols"
#     vpc_id = aws_vpc.producer.id
#     ingress {
#         from_port = 0
#         to_port = 0
#         protocol = -1
#         cidr_blocks = ["0.0.0.0/0"]
#     }
#     egress {
#         from_port = 0
#         to_port = 0
#         protocol = -1
#         cidr_blocks = [0.0.0.0/0]
#     }
  
# }

