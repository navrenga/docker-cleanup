#!/bin/bash

!/bin/bash
##Purge Docker Images
docker image prune -af
##Purge Docker containers
docker container prune -f --filter "until=24h"
