#!/bin/bash

node {
  node {
  def remote = [:]
  remote.name = 'test'
  remote.host = 'ppx009'
  remote.user = 'emroot'
  remote.password = 'passwd'
  remote.allowAnyHosts = true
  stage('Remote SSH') {
  sshCommand remote: remote, command: "hostname"
  }
}
  
  
}

@NonCPS
def deleteBuilds(){
    def jobs = Jenkins.instance.items;
    println "remove num of old builds - " + MAX_BUILDS
    
    for (job in jobs) {
        println "Job: " + job.name
        
        println '++++++++++++++++++++++++++++++++++++++'   
            def recent = job.builds.limit(MAX_BUILDS)
            println "Recent Builds: "  + recent
            println "============================="
    
            for (build in job.builds) {
                if (!recent.contains(build) && !build.isBuilding()) {
                    println "Deleting: " + build
                    build.delete()
                    println ""
                }
            }
        
    }
       

}
