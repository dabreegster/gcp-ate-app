# Setup

- Install Terraform
- Create a GCP project
- Update the bucket and project name in `main.tf`
- Might have to `gcloud auth application-default login` the first time

# Deploy

`terraform init; terraform plan` and then `terraform apply`

Verify the GCS bucket has the file: `gsutil cat gs://gcp-ate-app-test/index.html`

Verify the GAE works: https://aorta-routes.appspot.com
