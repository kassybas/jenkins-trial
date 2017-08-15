node{

    stage 'Checkout'
	checkout scm

    env.app_name = 'TestApp1'
    env.container_name = 'MyContainer'

    stage 'Create DockerBuild container'
    sh script: 'docker build --force-rm -t ${build_container_name} -f {{.jenkins.pipeline.build.pathToBuildDockerfile}} .'

//  stage 'Run Build'
//  sh returnStdout: true, script: '''
//  docker run \
//  -e BUILD_URL=${BUILD_URL} \
//  --rm \
//  -v $(pwd):/app \
//  -w /app \
//  ${build_container_name} \
//  /app/{{.jenkins.pipeline.build.pathToBuildscript}}
//  '''

//  stage 'Push to Docker Hub'
//  sh script: '''
//  docker build -t ${container_name}-${TAG} -f {{.jenkins.pipeline.build.pathToProductionDockerfile}} .
//  docker push ${container_name}-${TAG}
//  '''
}
