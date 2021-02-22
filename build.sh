#!/bin/bash
docker pull filecoin/sentinel-visor-dev:master-ed757daa
docker build -t sentinel-backfill .
docker tag sentinel-backfill thattommyhall/sentinel-backfill:latest 
docker push thattommyhall/sentinel-backfill:latest
