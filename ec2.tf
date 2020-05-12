#creationg ec2 instances using terraform module
module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "my-cluster"
  ami	                 = "${var.ami}"
  instance_type          = "${var.instance_type}"
  instance_count         = "${var.instance_count}"
  subnet_id              = "${var.subnet_id}"
  monitoring		 = true

tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
