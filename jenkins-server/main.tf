

resource "aws_instance" "jenkins_instance" {
  ami                    = "ami-04823729c75214919"
  instance_type          = "t2.medium"
  key_name               = "GfakxKP"
  vpc_security_group_ids = [aws_security_group.jenkins-sg.id]
  iam_instance_profile   = "Jenkins-cicd-server-role" # Replace role your Jenkins Full admin role
  user_data              = file("./script.sh")

  root_block_device {
    volume_size = 8 # Sets the volume size to 15 GB
  }

  tags = {
    Name = "JENKINS-INSTANCE"
  }
}

output "public_ip" {
  value = aws_instance.jenkins_instance.public_ip
}

