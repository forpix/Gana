import hudson.model.Result
import java.util.concurrent.TimeUnit

MAX_BUILDS = 2 // max builds to keep

node ('master') {
  stage ('Remove workspaces' ){
    deleteDir()
    deleteBuilds()
  }
}

@NonCPS
def deleteBuilds(){
    def jobs = Jenkins.instance.items;
    println "remove num of old builds - " + MAX_BUILDS
    
    for (job in jobs) {
        println "Job: " + job.name
        try {
            
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
        } catch(Exception ex) {
            continue
        }
    }

}
