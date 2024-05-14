//===----------------------------------------------------------------------===//
//
// This source file is part of the AWS Lambda Swift 
// VSCode extension open source project.
//
// Copyright (c) 2024, the VSCode AWS Lambda Swift extension project authors.
// Licensed under Apache License v2.0.
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of VSCode AWS Lambda Swift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// Import the packages required by our function
import AWSLambdaRuntime
import AWSLambdaEvents

// Documentation:
// For more information on Swift AWS Lambda Runtime, visit:
// https://github.com/swift-server/swift-aws-lambda-runtime/tree/main
//
// For details about Swift AWS Lambda Events, refer to:
// https://github.com/swift-server/swift-aws-lambda-events/tree/main

// Entry point for the Lambda function
@main
struct HelloWorld: SimpleLambdaHandler {
    
    // Lambda Function handler
    func handle(_ event: APIGatewayV2Request, context: LambdaContext) async throws -> APIGatewayV2Response {

        // Process the API Gateway event
        return APIGatewayV2Response(statusCode: HTTPResponseStatus(code: 200), body: "Hello from AWS!")
    }
}
