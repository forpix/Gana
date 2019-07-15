

node {
stage ('Build'){
 def outfile = "/tmp/output.log"
String[] sleepCmd = ["sh", "-c", "checkout scm > ${outfile} 2>&1 < /dev/null"]
def sleep = sleepCmd.execute()
 
checkout scm > /null
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
