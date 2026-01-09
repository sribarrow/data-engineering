tf -chdir=infra init --input=false
tf -chdir=infra plan --input=false --var-file=stages/prod.tfvars
tf -chdir=infra apply --input=false --var-file=stages/prod.tfvars