# OpenAPI to Lambda SAM template

This templates allows developers to start with an OpenAPI definition of the REST service they want to create.

The swift OpenAPI generator plugin generates data types and server stubs at each `swift build` command. This ensures your Swift code stays in sync with your OpenAPI definition.

When deploying this project on your AWS account, it created an Amazon API Gateway configured as pass-through. The API Gateway forwards all API calls to your Lambda function.

## How to use this template?

First, clone the template.

```sh 
sam init \
     --location https://github.com/swift-server-community/aws-lambda-swift-sam-template/tree/main/templates/openapi-to-lambda \
     --no-interactive  \
     --no-input        \
		 --name <your project name> 
```

## Testing a template locally 

Testing a template locally
You can create a buildable and deployable project folder from a local template using the below command. The `<project_name>` can be whatever you want your project to be called, and `<path/to/init_template>` should point to the existing folder that contains the template.

Command:

```sh
sam init --location <path/to/init_template>  \
         --no-input \
				 --name <project_name>    
```

For example:

```sh
sam init \
       --location /Users/myuser/code/aws-lambda-swift-sam-template/openapi-t-lambda \
			 --name StockQuoteApi
```

## Learn more

- [Swift OpenAPI Generator](https://github.com/apple/swift-openapi-generator)
- [Swift OpenAPI Transport for AWS Lambda](https://github.com/swift-server/swift-openapi-lambda)
