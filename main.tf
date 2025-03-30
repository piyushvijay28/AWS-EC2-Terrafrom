provider "aws" {
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0c1ac8a41498c1a9c" 
  instance_type = "t3.micro" 
  key_name = "blog-version-2"
  security_groups = ["jenkins_docker_security_group"]

  tags = {
    Name = "MyEC2WithJavaPythonJenkinsDocker"
  }
}