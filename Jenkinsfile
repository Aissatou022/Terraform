pipeline {
    agent any

    stages {
        stage('Checkout du code') {
            steps {
                git 'https://github.com/Aissatou022/Terraform.git'
            }
        }

        stage('Initialisation de Terraform') {
            steps {
                dir('terraform') {
                    sh 'terraform init'
                }
            }
        }

        stage('Plan Terraform') {
            steps {
                dir('terraform') {
                    sh 'terraform plan'
                }
            }
        }

        stage('Application de Terraform') {
            steps {
                dir('terraform') {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
