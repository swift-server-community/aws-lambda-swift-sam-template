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
import AWSLambdaEvents
import AWSLambdaRuntime

// Documentation:
// For more information on Swift AWS Lambda Runtime, visit:
// https://github.com/swift-server/swift-aws-lambda-runtime/tree/main
//
// For details about Swift AWS Lambda Events, refer to:
// https://github.com/swift-server/swift-aws-lambda-events/tree/main

// Entry point for the Lambda function
@main
struct SQSQueueListener: SimpleLambdaHandler {

    // Lambda Function handler
    func handle(_ event: SQSEvent, context: LambdaContext) async throws {
        
        // Process each record in the event
        for record in event.records {
            
            // Access the message body from the record
            let messageBody = record.body
                
            // Process the message (replace with your logic)
            print("Received message with ID: \(record.messageId)")
            print("Message: \(messageBody)")
                
            // Here you can perform any processing logic needed for each message
            // For example, you could save it to a database, trigger another Lambda function, etc.

        }
    }
}
