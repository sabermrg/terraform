# terraform

# to deploy terraform in everywhere
terraform init

# use aws provider: https://registry.terraform.io/providers/hashicorp/aws/

ls .terraform/providers
terraform plan
terraform apply
cat terraform.tfstate

terraform show
# using variables
# terraform plan -var='vm_name=foo'   # inline
# terraform plan -var-file=tm.tfvars  # file
# export TF_VAR_image_id=amiabc123    # environment



terraform destroy
