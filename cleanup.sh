#!/bin/bash

images=$(docker image prune -af')
if [ "${images}" != "" ]; then
   echo docker rmi ${images}
   docker rmi ${images}
else
   echo "No images to remove"
fi

containers=$(docker container prune -f --filter "until=24h")
if [ "${containers}" != "" ]; then
   echo docker rm ${containers}
   docker rm ${containers}
else
   echo "No containers to purge"
fi
