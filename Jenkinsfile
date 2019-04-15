import hudson.model.Result
import java.util.concurrent.TimeUnit

MAX_BUILDS = 2 // max builds to keep

@NonCPS
def getEmailForJenkinsUser(jenkinsUser){
  def user = hudson.model.User.getById(jenkinsUser, false);
  def email;
  if (user){
    email = user.getProperty(hudson.tasks.Mailer.UserProperty.class).getAddress();
  }
  return email;
}

node ('master') {
  stage ('Remove workspaces' ){
    deleteDir()
    checkout scm
  }
  stage ('extra'){
    echo "${user}"+user
  }
}
