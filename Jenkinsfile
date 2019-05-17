#!/bin/bash

node {
  def remote = [:]
  remote.name = 'test'
  remote.host = 'ppx155'
  remote.user = "${username}"
  remote.password = "${password}"
  remote.allowAnyHosts = true
  stage('Remote SSH') {
    sshCommand remote: remote, command: "hostname"
  }
  stage('Docker Version') {
    sshCommand remote: remote, command: "docker --version"
  }
  stage('Pulling Image') {
    sshCommand remote: remote, command: "docker pull alpine"
  }
  stage('Creating Container') {
    sshCommand remote: remote, command: "docker container run -it -d --name alto --hostname malto alpine /bin/sh"
  }
  stage('Executing Commands inside the Conta.') {
    sshCommand remote: remote, command: "docker exec alto hostname"
  }
  stage('Stoping the Container') {
    sshCommand remote: remote, command: "docker stop alto"
  }
  stage('Removing Container') {
    sshCommand remote: remote, command: "docker rm -f alto"
  }
}
