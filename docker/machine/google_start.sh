#!/bin/bash


#gcloud auth login
#gcloud config set project [target project]

docker-machine create --driver google \
                      --google-project sibukixxx-gae-project \
                      --google-preemptible \
                      --google-zone asia-east1-c dev
