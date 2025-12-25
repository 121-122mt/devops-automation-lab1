pipeline {
    agent any

    stages {
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
                    sh '''
                    ansible-playbook -i inventory playbook.yml
                    '''
                }
            }
        }
    }
}
