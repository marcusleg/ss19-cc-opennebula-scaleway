#!/bin/bash
#!/bin/bash
cd terraform/
terraform destroy -var-file ../secrets/credentials.tfvars
cd ..
