#!/bin/bash

node {
  def remote = [:]
  remote.name = 'test'
  remote.host = 'ppx155'
  remote.user = "${username}"
  remote.password = "${password}"
  remote.allowAnyHosts = true
  stage('Remote SSH') {
  sshCommand remote: remote, command: "hostname;R3trans -d"
  }
  stage('Docker Version') {
  sshCommand remote: remote, command: "docker --version"
  }
}
