
# ONPK Záverečný Projekt 

1. Naklonuj repozitár a prejdi do priečinka `Terraform`.
2. Inicializuj Terraform: `terraform init.`
3. Aplikuj konfiguráciu: `terraform apply`.
4. Nasad Tekton pipelines:
   - Prejdi do priečinka tekton_pipelines a aplikuj CI a CD pipelines.
   - `kubectl apply -f ci-pipeline-build-push.yaml`
   - `kubectl apply -f cd-pipeline-deployment.yaml`
5. Použi FluxCD pre kontinuálne nasadzovanie.
