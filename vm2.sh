#!/bin/bash
cd subscriber
docker build . -t image-subscriber:1.0.0
TOPICO="libros"
for i in {"${TOPICO}/fantasia","${TOPICO}/romance","${TOPICO}/suspenso","${TOPICO}/terror","${TOPICO}/comedia"}
do
   echo "entra"
   docker run -it --rm -e port=1883 -e topic=$i -e brokerip='research.upb.edu:21212' image-subscriber:1.0.0
done


