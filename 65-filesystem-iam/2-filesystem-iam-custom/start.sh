#!/bin/bash

terraform init

terraform validate

terraform apply -auto-approve