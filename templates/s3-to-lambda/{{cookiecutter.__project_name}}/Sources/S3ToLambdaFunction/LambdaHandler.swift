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
struct S3ToLambdaFunction: SimpleLambdaHandler {

    // Lambda Function handler
    func handle(_ event: S3Event, context: LambdaContext) async throws {

        for record in event.records {
            // Process the S3 event
            print("Received S3 event for object: \(record.s3.object.key)")
            // TODO: add method

        }
    }
}
