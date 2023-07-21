#!bin/bash/

terraform init
terraform fmt
terraform validate
terraform plan
sleep 5
terraform apply --auto-approve
#terraform destroy --auto-approve