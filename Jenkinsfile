pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                git 'https://github.com/121-122mt/devops-automation-lab1.git'

            }
        }

        stage('Terraform') {
            steps {
                dir('terraform') {
                    sh '''
                    terraform init
                    terraform apply -auto-approve
                    '''
                }
            }
        }

        stage('Ansible') {
            steps {
                dir('ansible') {
                    sh 'ansible-playbook -i inventory playbook.yml'
                }
            }
        }
    }
}

