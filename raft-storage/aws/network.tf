module "vault_demo_vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${var.environment_name}-vpc"
  cidr = "172.31.0.0/16"

  azs             = [var.availability_zones]
  private_subnets = ["172.31.1.0/24"]
  public_subnets  = ["172.31.101.0/24"]

  tags = {
    Name = "${var.environment_name}-vpc"
  }
}

