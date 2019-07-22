def signature = 'new groovy.json.JsonSlurperClassic'
org.jenkinsci.plugins.scriptsecurity.scripts.ScriptApproval.get().approveSignature(signature)

node {
stage ('Build'){
def command = "git --version"
def proc = command.execute()
proc.waitFor()              
println "Process exit code: ${proc.exitValue()}"
println "Std Err: ${proc.err.text}"
println "Std Out: ${proc.in.text}" 
   
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
