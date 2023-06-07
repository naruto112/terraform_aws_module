resource "aws_instance" "vm_terraform" {
  ami                         = "ami-0715c1897453cabd1"
  instance_type               = "t2.micro"
  subnet_id                   = module.network.subnet_id
  vpc_security_group_ids      = [module.network.security_group_id]
  associate_public_ip_address = true

  tags = {
    "Name" = "vm-terraform"
  }
}