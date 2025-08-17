dev-init:
	git pull
	rm -f .terraform/terraform.tfstate
	terraform init -backend-config=./environments/dev/state.tfvars

dev-plan:
	terraform plan -var-fil=./environments/dev/main.tfvars

dev-apply:
	terraform apply -var-fil=./environments/dev/main.tfvars -auto-approve

dev-destroy:
	terraform apply -var-fil=./environments/dev/main.tfvars -auto-approve

prod-init:
	rm -f .terraform/terraform.tfstate
	terraform init -backend-config=./environments/prod/state.tfvars

prod-plan:
	terraform plan -var-fil=./environments/prod/main.tfvars

prod-apply:
	terraform apply -var-fil=./environments/prod/main.tfvars -auto-approve

prod-destroy:
	terraform apply -var-fil=./environments/prod/main.tfvars -auto-approve