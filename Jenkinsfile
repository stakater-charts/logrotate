#!/usr/bin/groovy
@Library('github.com/stakater/fabric8-pipeline-library@master')

def dummy = ""

toolsNode(toolsImage: 'stakater/pipeline-tools:1.5.1') {
    container(name: 'tools') {
        stage('Checkout') {
            checkout scm
        }

        prepareAndUploadChart {
            chartName = "logrotate"
        }
    }
}
