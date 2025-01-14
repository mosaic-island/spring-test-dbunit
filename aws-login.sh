#!/bin/zsh

export AWS_PROFILE=columbus-qa
aws sso login
aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin 545666455872.dkr.ecr.eu-west-1.amazonaws.com
export CODEARTIFACT_AUTH_TOKEN=`aws codeartifact get-authorization-token --domain which --domain-owner 545666455872 --query authorizationToken --output text --profile columbus-qa --region eu-west-1`