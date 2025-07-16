# resource "aws_iam_user" "cloud" {
#     count = 5
#     name = "user-${count.index + 1}"
  
# }
# resource "aws_iam_user" "kloud" {
#     for_each = toset(["noor","test","deploy"])
#     name = each.value
  
# }
resource "aws_iam_user" "querty" {
    name = var.kewyjkliyuou
  
}

resource "aws_security_group" "ssh_sg" {
  name        = "allow-ssh"
  description = "Allow SSH access on port 22"
  vpc_id      = "<your-vpc-id>"  # Replace with your VPC ID

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Open to the world, adjust CIDR as needed
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "my_instance" {
  ami           = "0eb9d6fc9fab44d24"        
  instance_type = "t2.micro"       


  security_groups = [aws_security_group.ssh_sg.name]

  tags = {
    Name = "MyInstance"
  }
}