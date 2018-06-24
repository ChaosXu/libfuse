#!/bin/sh
DOCKER=$1
docker run -it -v $(pwd):/workspace chaosxu/$DOCKER /bin/bash
