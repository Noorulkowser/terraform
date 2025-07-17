resource "aws_security_group" "ssh_sg" {
  name        = "allow-ssh"
  description = "Allow SSH access on port 22"

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
  ami           = "ami-0eb9d6fc9fab44d24"        
  instance_type = "t2.micro"       


  security_groups = [aws_security_group.ssh_sg.name]

  tags = {
    Name = "MyInstance"
  }
}