// Copyright 2018-2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//
// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment
// -- Generated Code; do not edit --
//
// IotDataOperationsClientInput.swift
// IotDataClient
//

import Foundation
import SmokeHTTPClient
import IotDataModel

/**
 Type to handle the input to the DeleteThingShadow operation in a HTTP client.
 */
public struct DeleteThingShadowOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DeleteThingShadowOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteThingShadowRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotDataModelDeleteThingShadowOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetThingShadow operation in a HTTP client.
 */
public struct GetThingShadowOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetThingShadowOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: GetThingShadowRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotDataModelGetThingShadowOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the Publish operation in a HTTP client.
 */
public struct PublishOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: PublishOperationInputQuery?
    public let pathEncodable: PublishOperationInputPath?
    public let bodyEncodable: Payload?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: PublishRequest) {
        self.queryEncodable = encodable.asIotDataModelPublishOperationInputQuery()
        self.pathEncodable = encodable.asIotDataModelPublishOperationInputPath()
        self.bodyEncodable = encodable.payload
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the UpdateThingShadow operation in a HTTP client.
 */
public struct UpdateThingShadowOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: UpdateThingShadowOperationInputPath?
    public let bodyEncodable: JsonDocument?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: UpdateThingShadowRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotDataModelUpdateThingShadowOperationInputPath()
        self.bodyEncodable = encodable.payload
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}
