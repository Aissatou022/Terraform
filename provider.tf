terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.11"
    }
  }
}

provider "kubernetes" {
  config_path = "C:/Jenkins_kube/config"
}
