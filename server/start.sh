#!/bin/bash

# Cargar variables del archivo .env
if [ -f .env ]; then
  export $(grep -v '^#' .env | xargs)
fi

java -Xms${MIN}M -Xmx${MAX}M -jar server.jar