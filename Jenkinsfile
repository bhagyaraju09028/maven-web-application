node
{
  def mavenHome = tool name: "maven3.8.2"

  stage ('Checkoutcode'){
  git branch: 'development', credentialsId: 'efe34820-6b17-4ca5-88e9-490aace3e135', url: 'https://github.com/bhagyaraju09028/maven-web-application.git'
  }
   
  stage('Build'){
  sh "${mavenHome}/bin/mvn clean package"
  }
/*
  stage('ExecuteSonarQubeReport'){
  sh "${mavenHome}/bin/mvn clean sonar:sonar"
  }
  
  stage('UploadArtifactIntoNexusRepo'){
  sh "${mavenHome}/bin/mvn clean deploy"
  }
*/
}
