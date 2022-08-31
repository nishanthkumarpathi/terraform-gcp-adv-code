#!/bin/bash

terraform init --upgrade

terraform validate

terraform apply -auto-approve