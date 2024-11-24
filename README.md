# csv-validator-docker-image


This repository demonstrates a way to validate the structure and content of a CSV file in ci (github action).

It provides a docker image that can be used in CI (or not) to validate the csv file and sample data to test it.

## Content

The generated image contains

- Frictionless [Getting Started | Frictionless Framework](https://framework.frictionlessdata.io/docs/getting-started.html)
- qsv [GitHub - jqnatividad/qsv: Blazing-fast Data-Wrangling toolkit](https://github.com/jqnatividad/qsv/)

## Usage

The `.github/workflows/validate-sample-data.yml` demonstrates how to use the docker image to validate the data in CI.

It does 2 things:
1. run `./qsv validate /data/countries.csv` to verify that the sample data file (`countries.csv`) has a valid structure
2. run `frictionless validate /data/countries.ressource.yaml` to ensure that the csv file _content_ matches the requirements of the model.
