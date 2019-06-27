

node {
stage ('Build'){
def userInput = input(
 id: 'userInput', message: 'Let\'s promote?', ok: 'Next', parameters: [
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
