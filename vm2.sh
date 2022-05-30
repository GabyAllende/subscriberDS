#!/bin/bash
cd subscriber
docker build . -t image-subscriber:1.0.0
TOPICO="libros"
declare -a topicos=(${TOPICO}/fantasia ${TOPICO}/romance ${TOPICO}/suspenso ${TOPICO}/terror ${TOPICO}/comedia)
declare -a nombres=("sub1" "sub2" "sub3" "sub4" "sub5")
for (( j=0; j<5; j++ ));
do
   printf "Current index %d with value %s\n" $j "${topicos[$j]}"  
 # docker run -it -d --rm -e port=21212 -e topic=${topicos[$j]} -e brokerip='research.upb.edu' --name ${nombres[$j]} image-subscriber:1.0.0 
done