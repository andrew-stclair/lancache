#!/bin/bash
export EXTERNAL_IP=$(hostmane -I | cut -d ' ' -f 1)
exec docker-compose -f "docker-compose.yml" up -d --build