#!/bin/bash
docker pull `head -n 1 Dockerfile | cut -d ' ' -f 2`
docker build -t sentinel-backfill .
docker tag sentinel-backfill thattommyhall/sentinel-backfill:latest 
docker push thattommyhall/sentinel-backfill:latest
