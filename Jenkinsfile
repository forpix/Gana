

node {
stage ('Build'){
def userInpuT = input(
 id: 'userInpuT', message: 'Let\'s promote?', parameters: [[$class: 'TextParameterDefinition', defaultValue: 'uat1', description: 'Target', name: 'target']
    ])
echo ("Env: "+userInpuT['env'])
echo ("Target: "+userInpuT['target'])
    sleep userInpuT['target']	 
}
stage ('Test'){
echo 'nothing to add'
}
stage ('Deploy'){
echo 'Nothing to add'
}
}
