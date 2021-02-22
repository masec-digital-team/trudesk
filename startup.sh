#!/bin/bash

if [ ! -d /mnt/projects/masec/trudesk/public/uploads/users ]; then
    echo "Creating Directory..."
    mkdir /mnt/projects/masec/trudesk/public/uploads/users
fi

if [ ! -f /mnt/projects/masec/trudesk/public/uploads/users/defaultProfile.jpg ]; then
    echo "Coping defaultProfile.jpg"
    cp /mnt/projects/masec/trudesk/public/img/defaultProfile.jpg /mnt/projects/masec/trudesk/public/uploads/users/defaultProfile.jpg
fi

node /mnt/projects/masec/trudesk/runner.js