provider "aws" {
  region = "us-east-2"
}

module "webserver_cluster" {
  source = "../../../modules/services/webserver-cluster"

  cluster_name = "webservers-stage"

  instance_type = "t2.micro"
  min_size      = 2
  max_size      = 2
}