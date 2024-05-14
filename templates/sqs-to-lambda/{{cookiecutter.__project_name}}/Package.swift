// swift-tools-version: {{ cookiecutter._swift_tools_version }}
// The swift-tools-version declares the minimum version of Swift required to build this package.

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

import PackageDescription

let package = Package(
    name: "aws-swift-app",
    platforms: [.macOS(.v12)],
    products: [
        .executable(name: "SQSQueueListener", targets: ["SQSQueueListener"])
    ],
    dependencies: [
        .package(url: "https://github.com/swift-server/swift-aws-lambda-runtime", branch: "main"),
        .package(url: "https://github.com/swift-server/swift-aws-lambda-events", branch: "main"),
        // Uncomment the following line to use the AWS SDK for Swift in your Lambda function aswell as the line in the targets section
        // .package(url: "https://github.com/awslabs/aws-sdk-swift", from: "{{ cookiecutter._aws_swift_sdk_version }}")
    ],
    targets: [
        .executableTarget(
            name: "SQSQueueListener",
            dependencies: [
                .product(name: "AWSLambdaRuntime",package: "swift-aws-lambda-runtime"),
                .product(name: "AWSLambdaEvents",package: "swift-aws-lambda-events"),
                // Uncomment the following line to use the AWS SDK for Swift in your Lambda function aswell as the line in the dependencies section
                // Make sure to change the name of the product to the one you want to use
                // .product(name: "AWSSDKSwift",package: "aws-sdk-swift"),
            ]
        )
    ]
)