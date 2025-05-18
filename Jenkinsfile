pipeline {
    agent any

    tools {
        terraform 'Terraform-kuber'  // Le nom  donné dans Jenkins pour Terraform
    }

    stages {
        stage('Checkout du code') {
            steps {
                git 'https://github.com/Aissatou022/Terraform.git'
            }
        }

        stage('Initialisation de Terraform') {
            steps {
                dir('terraform') {
                    bat 'terraform init'
                }
            }
        }

        stage('Plan Terraform') {
            steps {
                dir('terraform') {
                    bat 'terraform plan'
                }
            }
        }

        stage('Application de Terraform') {
            steps {
                dir('terraform') {
                    bat 'terraform apply -auto-approve'
                }
            }
        }
    }
}
