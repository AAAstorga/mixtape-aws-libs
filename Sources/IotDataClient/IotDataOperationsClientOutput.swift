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
// IotDataOperationsClientOutput.swift
// IotDataClient
//

import Foundation
import SmokeHTTPClient
import IotDataModel

/**
 Type to handle the output from the DeleteThingShadow operation in a HTTP client.
 */
extension DeleteThingShadowResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteThingShadowResponse
    public typealias HeadersType = DeleteThingShadowResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteThingShadowResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetThingShadow operation in a HTTP client.
 */
extension GetThingShadowResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = GetThingShadowResponse
    public typealias HeadersType = GetThingShadowResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetThingShadowResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateThingShadow operation in a HTTP client.
 */
extension UpdateThingShadowResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateThingShadowResponse
    public typealias HeadersType = UpdateThingShadowResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateThingShadowResponse {
        return try bodyDecodableProvider()
    }
}
