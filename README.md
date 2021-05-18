# docker_aws-cdk

### build image
`docker image build -t my_cdk:latest`

### run
`docker run --rm -it -v $HOME/.aws:/root/.aws -v $(pwd):/aws:rw my_cdk`
