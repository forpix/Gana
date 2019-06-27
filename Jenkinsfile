

node {
stage ('Build'){
def userInpuT = input(
 id: 'userInpuT', message: 'Let\'s promote?', parameters: [
 [$class: 'TextParameterDefinition', defaultValue: '5', description: 'Environment', name: 'env'],
    ])
echo ("Env: "+userInpuT['env'])
echo ("Target: "+userInpuT['target'])
    sleep userInpuT['env']		 
}
stage ('Test'){
echo 'nothing to add'
}
stage ('Deploy'){
echo 'Nothing to add'
}
}
