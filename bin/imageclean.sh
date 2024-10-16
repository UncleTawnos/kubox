#!/bin/bash
image=$1

if [ -z "$image" ]; then
    1>&2 echo "Usage: $0 <image>"
    exit 1
fi

kubectl run \
    --image=${image} \
    --image-pull-policy=Always \
    --restart=Never \
    --rm=true \
    -i download-image --command -- true

if [ $? -eq 0 ];then
    1>&2 echo "all pods launched with this image tag will now use the updated image"
else
    1>&2 echo "FAILED TO REFRESH IMAGE.  See error from kubectl"
fi
