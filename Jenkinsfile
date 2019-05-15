#!/bin/bash
def remote = [:]
  remote.name = 'test'
  remote.host = 'ppx009'
  remote.allowAnyHosts = true
  node {'
        stage('Remote SSH') {
  withCredentials([usernameColonPassword(credentialsId: '25fdc3e3-b596-4d5b-9b99-d90fc40a910b', variable: 'ppx009')]) {
   sshCommand remote: remote, command: "hostname"
}
  remote.user = 'emroot'
  remote.password = '$passwd'
  
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
