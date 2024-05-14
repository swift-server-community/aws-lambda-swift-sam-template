# {{ cookiecutter.project_name }}

This template sets up a Swift-based API using AWS Lambda and API Gateway.

## Usage

### How to Use

1. **Build Project**: Navigate to the project directory and run `sam build` to build the Lambda function.
2. **Deploy Project**: Execute `sam deploy --guided` to deploy the project to AWS. Follow the prompts to configure the deployment settings.
3. **Test API**: Use the provided API endpoint to test the API functionality.

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

During the guided deployment process, accept each default prompt except for the authorization:

```bash
HelloWorld may not have authorization defined, Is this okay? [y/N]:
```
make sure to input "y" to proceed.

### How to Test 

#### Locally

To test the Lambda function locally, you can use the following command:

```bash
sam local invoke HelloWorld --event events/HelloWorld.json
```

#### After Deployment (using the API)

After a successful deployment, you will receive CloudFormation outputs from the deployed stack. Among these outputs, you will find the API Gateway endpoint URL for your application. You can use tools like cURL or Postman to make requests to this API endpoint.

```bash
Outputs
----------------------------------------------------------------------------------------
Key                 SwiftAPIEndpoint
Description         API Gateway endpoint URL for your application
Value               https://[your-api-id].execute-api.[your-aws-region].amazonaws.com
----------------------------------------------------------------------------------------
```

### How to Delete

To delete the deployed resources, you can use the AWS Management Console or run the following command:

```bash
sam delete
```