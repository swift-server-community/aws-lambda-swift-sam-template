# {{ cookiecutter.project_name }}

This template sets up a Swift-based Lambda function triggered by messages in an AWS Simple Queue Service (SQS) queue.

## Usage

### How to Use

1. **Build Project**: Navigate to the project directory and run `sam build` to build the Lambda function.
2. **Deploy Project**: Execute `sam deploy --guided` to deploy the project to AWS. Follow the prompts to configure the deployment settings.
3. **Test Lambda Function**: Verify that the Lambda function is triggered by SQS messages.

### How to Build

Run the following command to build the Swift project:

```bash
sam build
```

### How to Deploy

Deploy the project to AWS using the following command:

```bash
sam deploy --guided
```

During the guided deployment process, accept each default prompt.

### How to Test 

#### Locally

To test the Lambda function locally, you can use the following command:

```bash
sam local invoke SQSQueueListener --event events/SQSQueueListener.json
```

#### After Deployment

After a successful deployment, you can verify that the Lambda function is triggered by SQS messages in the AWS Management Console.

### How to Delete

To delete the deployed resources, you can use the AWS Management Console or run the following command:

```bash
sam delete
```