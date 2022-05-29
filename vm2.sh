#!/bin/bash
cd subscriber
docker build . -t image-subscriber:1.0.0
TOPICO="libros"
for i in {"${TOPICO}/fantasia","${TOPICO}/romance","${TOPICO}/suspenso","${TOPICO}/terror","${TOPICO}/comedia"}
do
   docker run -it -d --rm -e port=21212 -e topic=$i -e brokerip='research.upb.edu' image-subscriber:1.0.0
done


