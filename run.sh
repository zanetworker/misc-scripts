#!/bin/bash

jq \
   '.spec.containers[0].command |= .+ ["--advertise-address=172.42.42.10"]' \
   /etc/kubernetes/manifests/kube-apiserver.json > /tmp/kube-apiserver.json
mv /tmp/kube-apiserver.json /etc/kubernetes/manifests/kube-apiserver.json
