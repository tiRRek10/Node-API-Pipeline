# Codeway  Challenge
* Simple nodejs application deployment which uses gitlab-ci as CI solution with branching strategy selected as GitHub Flow. 


## Description
- This project includes all basic steps required for deploying the given nodejs application. Preferred branching strategy is GitHub flow where we make deployments from main branch only but other branches are build and tested as well. Steps included in pipeline are as follows;
    - Building source code as a docker container.
    - Running simple tests with a demo postgres database.
    - Deploying app to staging and production environments.

- It must be noted that this pipeline is not production ready since sensitive environment variables are not hidden. In order to use this pipeline in real-world scenario, database passwords should be passed as secrets to gitlab ci similar to credentials in Jenkins. Also helm values.yaml file explicitly use these credentials, normally these values are available in k8s cluster as secrets. Folder and files linked other than nodejs application are explained below.
    - helm -> Includes helm charts and values.yaml for k8s deployment.
    - test-database -> Includes Dockerfile and sh file for building test db image.
    - api-test.sh -> Basic test sh file using curl.
    - .gitlab-ci.yml -> Includes all gitlab-ci pipeline configuration.    
    - demo -> Inncludes screenshots from demo

## Build with
* GıtLab CI for pipeline.
* Postgres for demo RDMS.
* Helm for managining kubernetes artifacts.
* Express Framework with Node.js
* NPM for nodejs package management.

## Getting Started
Steps required for using the project are describe below.
> 1. Create an empty project under your gitlab account.
> 2. Create a GKE cluster by clicking Infrastructure->Kubernetes Clusters->Create a new cluster. Leave environment setting as "*".
> 3. Check default gitlab-runners are enabled by going to Settings->CI/CD->Runners.
> 4. Clone this repo and push it to your gitlab project.
> 5. Prefer setting project visibility as public since default gitlab-runners may encounter problems with private repositories. Beware that default branch should be set to "main" in order for this pipeline to work successfully.
> 6. GitLab will automatically pick pipeline configurations from .gitlab-ci and start running your pipeline.
> 7. You can check the status of your pipeline under CICD->Pipelines.
> 8. Namespace for the deployments will be created as "project-name"-"project-id"-"environment"
> 8. If you check the cluster, it will be seen that pods are running but not ready. This is due to readinessProbe defined in deployment.yaml. This probe fails since pod cannot to non-existing database with given credentials. If you remove readiness and liveness probes from deployment.yaml then your pod will change to ready&running.

 ## Contact
- You can contact me from: orhunozbal10@gmail.com



