#!/bin/bash

envsubst < exercises/frontend/ingress.yaml.in > exercises/frontend/ingress.yaml

rm exercises/frontend/*.in
