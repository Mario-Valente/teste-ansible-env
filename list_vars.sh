#!/bin/bash

output=$(aws ssm get-parameter --name "teste-2" --query "Parameter.Value" --output text) 

IFS=', ' read -r -a lista <<< "$output"


# for elemento in "${lista[@]}"; do
#   echo "$elemento"
# done

primeiro_elemento="${lista[1]}"

echo $primeiro_elemento