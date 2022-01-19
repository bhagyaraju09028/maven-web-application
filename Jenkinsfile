node 
{

  def mavenHome = tool name: "maven3.8.2"
  
  stage('Checkout'){
  git branch: 'development', credentialsId: 'efe34820-6b17-4ca5-88e9-490aace3e135', url: 'https://github.com/bhagyaraju09028/maven-web-application.git'
  }
  
  stage('Build'){
  sh "${mavenHome}/bin/mvn clean package"
  }
  
  stage('SonarqubeQualityReport'){
  sh "${mavenHome}/bin/mvn clean sonar:sonar"
  }
  
  stage('UploadArtifactIntoNexusRepo'){
  sh "${mavenHome}/bin/mvn clean deploy"
  }
  
  stage('DeploytheAppintomcat')
  {
  sshagent(['8fa726ae-8193-4c3d-95fd-81e364af2c78']) {
  sh "scp -o StrictHostKeyChecking=no target/maven-web-application.war ec2-user@54.90.7.203:/opt/apache-tomcat-9.0.56/webapps"}
  }
 }
