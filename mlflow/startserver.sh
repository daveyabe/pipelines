#!/bin/sh
mlflow server -h 0.0.0.0 --default-artifact-root s3://ml-output/mlflow &
