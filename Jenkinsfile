

node {
stage ('Build'){
def INPUT_PARAMS = input message: 'Please Provide Parameters', ok: 'Next',
                                        parameters: [
                                        choice(name: 'IMAGE_TAG', choices: ['dev','qa'].join('\n'), description: 'Available Docker Images')]
                        env.IMAGE_TAG = INPUT_PARAMS.IMAGE_TAG
                 
				 echo "${env.IMAGE_TAG}" 
}
stage ('Test'){
echo 'nothing to add'
}
stage ('Deploy'){
echo 'Nothing to add'
}
}
