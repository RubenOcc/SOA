#! /bin/bash

#docker events -f "container=urbaniadocker_lb_1" -f "event=stop" >> /tmp/events.log

docker events -f "label=lb.hook" | while read line; do docker exec balancer /reload.sh; done