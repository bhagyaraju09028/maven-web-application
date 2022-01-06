pipeline{

agent any

tools{
maven "maven3.8.2"
}

options{
buildDiscarder(logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '5', daysToKeepStr: '', numToKeepStr: '5'))

timestamps()

}
triggers{
//Poll SCM
pollSCM('* * * * *')
//Build Periodcally
//cron('* * * * *')
//GitHub hook
//githubPush()
}

stages{

    stage('CheckoutCode'){
    steps{git branch: 'development', credentialsId: 'efe34820-6b17-4ca5-88e9-490aace3e135', url: 'https://github.com/bhagyaraju09028/maven-web-application.git'
    }
	}
    
    stage('Build'){
    steps{
	sh "mvn clean package"
    }
    }
	
    stage ('ExecuteSonarQubereport'){
    steps{
	sh "mvn clean sonar:sonar"
    }
    }
	
    stage('UploadArtifactintoNexusrepo'){
    steps{
	sh "mvn clean deploy"
    }
	}
	
	stage('DeploytheAppintoTomcat'){
	steps{
	sshagent(['8fa726ae-8193-4c3d-95fd-81e364af2c78']) {
    sh "scp target/maven-web-application.war ec2-user@"
}
}
}
}
post{

success{
mail bcc: 'bhagyaraju09028@gmail.com', body: '''Build Success!!


Regards,
Venkat
9440211385''', cc: 'bhagyaraju09028@gmail.com', from: '', replyTo: '', subject: 'Build Success!!', to: 'bhagyaraju09028@gmail.com'
}
failure{
mail bcc: 'bhagyaraju09028@gmail.com', body: '''Build Failure!!


Regards,
Venkat
9440211385''', cc: 'bhagyaraju09028@gmail.com', from: '', replyTo: '', subject: 'Build Success!!', to: 'bhagyaraju09028@gmail.com'
}
}
}
