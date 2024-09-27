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
  name: "QuoteService",
  platforms: [
    .macOS(.v13), .iOS(.v15), .tvOS(.v15), .watchOS(.v6),
  ],
  products: [
    .executable(name: "QuoteService", targets: ["QuoteService"]),
  ],
  dependencies: [
    .package(url: "https://github.com/apple/swift-openapi-generator.git", from: "1.0.0"),
    .package(url: "https://github.com/apple/swift-openapi-runtime.git", from: "1.0.0"),
    .package(url: "https://github.com/swift-server/swift-aws-lambda-runtime.git", from: "1.0.0-alpha.3"),
    .package(url: "https://github.com/swift-server/swift-aws-lambda-events.git", from: "0.4.0"),
    .package(url: "https://github.com/swift-server/swift-openapi-lambda.git", from: "0.1.1") 
  ],
  targets: [
    .executableTarget(
      name: "QuoteService",
      dependencies: [
        .product(name: "OpenAPIRuntime",package: "swift-openapi-runtime"),
        .product(name: "AWSLambdaRuntime", package: "swift-aws-lambda-runtime"),
        .product(name: "AWSLambdaEvents", package: "swift-aws-lambda-events"),
        .product(name: "OpenAPILambda",package: "swift-openapi-lambda"),
      ],
      path: "Sources",
      resources: [ 
        .copy("openapi.yaml"),
        .copy("openapi-generator-config.yaml")
      ],
      plugins: [
        .plugin(
            name: "OpenAPIGenerator",
            package: "swift-openapi-generator"
        )
      ]  
    )
  ]
)
