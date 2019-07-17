import java.io.IOException;
import java.io.OutputStream;
import hudson.model.*
import jenkins.model.*
import org.jenkinsci.plugins.github_branch_source.GitHubSCMSource
import org.jenkinsci.plugins.workflow.libs.LibraryConfiguration
import org.jenkinsci.plugins.workflow.libs.SCMSourceRetriever
import hudson.model.UpdateCenter.CoreUpdateMonitor

node {
stage ('Build'){
 def plugins = [ "artifactory",
                 "startup-trigger-plugin",
                  "ws-cleanup" ]
                    pluginsInstalled = installPlugins(plugins: plugins)
}
 stage ('try') {
  
def userInput = input(
 id: 'userInput', message: 'Let\'s promote?', parameters: [
 [$class: 'TextParameterDefinition', defaultValue: 'uat', description: 'Environment', name: 'env']
])
echo ("Env: "+userInput)
}
stage ('Test'){
echo 'nothing to add'
}
stage ('Deploy'){
echo 'Nothing to add'
}
}
