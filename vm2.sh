#!/bin/bash
cd subscriber
docker build . -t image-subscriber:1.0.0
TOPICO="libros"
for i in {"${TOPICO}/fantasia","${TOPICO}/romance","${TOPICO}/suspenso","${TOPICO}/terror","${TOPICO}/comedia"}
do
   docker run -it --rm -env port=1883 -env topic=$i -env brokerip=research.upb.edu:21212 image-subscriber:1.0.0
done


