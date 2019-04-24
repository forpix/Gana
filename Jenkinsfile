#!/bin/bash

node ('master') {
  stage ('Remove workspaces' ){
    cleanWs()
  sshagent(['newkey']) {
   sh 'ls -a;pwd'
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
