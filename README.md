# ECS-Fargate-entirely-and-Automate-GitHub-Actions-with-CloudWatch-for-Monitoring

### strapi projects foler and files structure

    my-strapi-app/
    │
    ├── Dockerfile
    ├── .dockerignore
    ├── package.json
    ├── package-lock.json
    ├── README.md
    │
    ├── config/                 
    ├── src/                    # Strapi source files
    ├── public/
    │
    ├── .github/
    │   └── workflows/
    │       └── deploy.yml   Build & push Docker image into ecr workflow then run on ecs
    │
    └── terraform/              # All Terraform code
        ├── main.tf
        ├── variables.tf
        ├── outputs.tf  
        ├── provider.tf
        ├── database.tf
        ├── alb.tf
        └── cpu_ram_alaram.tf
        
## The deploy.yml workflows file build and push the docker image into AWS ECR.

### Infrastructure Provisioning (Terraform)

Terraform is used to provision and manage all AWS resources, including:

ECS Cluster (Fargate)

ECS Task Definition

ECS Service

Load Balancer attached with target group

IAM Roles & Policies

CloudWatch Log Groups

Networking resources (VPC, Subnets, Security Groups)

Optional CloudWatch Alarms & Dashboards
