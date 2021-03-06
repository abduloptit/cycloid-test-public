#
# This file has been generated by Cycloid, please DO NOT modify.
# Any manual modifications done to this file, WILL be lost on the
# next project edition via the forms.
#
# Please note that comments in sample files will have been dropped
# due to some limitations upon files' generation.
#
# Any extra variables not found in the original file have been ignored.
#

module "jenkins" {
  source = "./module-jenkins"

  bastion_sg_allow = "${data.terraform_remote_state.infrastructure.outputs.infra_bastion_sg_allow}"
  customer         = var.customer
  env              = var.env
  extra_tags = {
  }
  jenkins_disk_size  = 60
  jenkins_type       = "t3.small"
  keypair_name       = "${data.terraform_remote_state.infrastructure.outputs.keypair_name}"
  project            = var.project
  public_subnets_ids = "${data.terraform_remote_state.infrastructure.outputs.infra_public_subnets}"
  vpc_id             = "${data.terraform_remote_state.infrastructure.outputs.infra_vpc_id}"
}

