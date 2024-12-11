#!/bin/bash

aws elbv2 describe-load-balancers --names "your_alb_name" --query "LoadBalancers[].DNSName"

while true; do curl --silent http:// <your_alb_dns> /v1/color > /dev/null; done
