# csv-validator-docker-image

A docker image that can be used in CI to validate csv file

## Content

The generated image contains

- Frictionless https://framework.frictionlessdata.io/docs/getting-started.html
- qsv

## Usage

The .github/workflows `validate-sample-data.yml` demonstrates how to validate the data in CI.

It does 2 things:
1. run `./qsv validate /data/countries.csv` to verify that the sample data file (`countries.csv`) has a valid structure
2. run `frictionless validate /data/countries.ressource.yaml` to ensure that the csv file _content_ matches the requirements of the model.
