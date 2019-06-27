def userInput
try {
    userInput = input(
        id: 'Proceed1', message: 'Was this successful?', parameters: [
        [$class: 'BooleanParameterDefinition', defaultValue: true, description: '', name: 'Please confirm you agree with this']
        ])
} catch(err) { // input false
    def user = err.getCauses()[0].getUser()
    userInput = false
    echo "Aborted by: [${user}]"
}

node {
stage ('Build'){
    stage 'promotion'
def userInput = input(
 id: 'userInput', message: 'Let\'s promote?', parameters: [
 [$class: 'TextParameterDefinition', defaultValue: 'uat', description: 'Environment', name: 'env'],
 [$class: 'TextParameterDefinition', defaultValue: 'uat1', description: 'Target', name: 'target']
    ])
echo ("Env: "+userInput['env'])
echo ("Target: "+userInput['target'])
}
stage ('Test'){
echo 'nothing to add'
    if (userInput == true) {
        // do something
        echo "this was successful"
    } else {
        // do something else
        echo "this was not successful"
        currentBuild.result = 'FAILURE'
    } 
}
stage ('Deploy'){
echo 'Nothing to add'
}
}
