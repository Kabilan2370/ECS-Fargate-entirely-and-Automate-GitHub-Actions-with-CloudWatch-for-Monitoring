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
        └── cpu_ram_alaram.tf
        
## The deploy.yml workflows file build and push the docker image into AWS ECR.

Compute: AWS ECS Fargate (serverless containers) for running the Strapi application.

Networking: Custom VPC, Subnets, and Security Groups defined by Terraform.


Storage: Strapi media assets should use an external service like AWS S3.

Infrastructure as Code (IaC): Terraform manages the complete AWS infrastructure lifecycle.

CI/CD: GitHub Actions automates the build, push (to ECR), and deployment (via Terraform).

Monitoring & Logging: AWS CloudWatch for centralized logging and comprehensive metrics.
