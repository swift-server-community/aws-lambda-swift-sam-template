# Swift On AWS Lambda SAM Templates

This repository contains a collection of [AWS SAM (Serverless Application Model)](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/sam-specification.html) templates tailored specifically for Swift developers. These templates provide a starting point for building serverless applications on AWS using Swift.

## Acknowledgments

These templates are based on the [aws-samples/aws-sam-swift](https://github.com/aws-samples/aws-sam-swift) repository provided by AWS Samples.

## Usage

To use these templates, you can initialize a new SAM project directly from this repository using the `sam init` command with the `-l` flag pointing to this GitHub repository:

```bash
sam init -l gh:swift-server-community/aws-lambda-swift-sam-template
```

This command will prompt you to choose one of the available templates and set up a new SAM project based on your selection.

Each template contains its README with detailed instructions on how to use it, along with additional information on building, deploying, testing, and deleting the application.

## Available Templates

- API to Lambda: Template for creating a Swift-based API using AWS Lambda and API Gateway.
- SQS to Lambda: Template for processing messages from an SQS queue using a Swift-based Lambda function.
- S3 to Lambda: Template for processing S3 events with a Swift-based Lambda function.
- Scheduler to Lambda: Template for scheduling Swift-based Lambda functions to run at specified intervals.

## Requirements

- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
- [AWS SAM CLI](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/install-sam-cli.html)
- [Docker](https://www.docker.com/products/docker-desktop/)
