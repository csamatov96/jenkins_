terraform {
backend "s3" {
bucket = "us-east-1-task-2" #change bucket per environment
key = "jenkins/us-east-1/tools/tools/jenkins.tfstate"
region = "us-east-1" #change region per environment 
  }
}
