#!/bin/bash

cd app || exit
celery -A celery_runner worker --loglevel=info
