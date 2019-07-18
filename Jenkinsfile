def signature = 'new groovy.json.JsonSlurperClassic'
org.jenkinsci.plugins.scriptsecurity.scripts.ScriptApproval.get().approveSignature(signature)

node {
stage ('Build'){
 println 'try this'
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
