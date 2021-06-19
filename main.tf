module "ecr"{
source = "./modules/"
name = "${terraform.workspace}-${var.name}"
}


module "ecr_accout1"{
source = "./modules/"
name = "${terraform.workspace}-${var.name}"
}