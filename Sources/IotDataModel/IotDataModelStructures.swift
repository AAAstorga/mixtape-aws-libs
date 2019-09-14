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
// IotDataModelStructures.swift
// IotDataModel
//

import Foundation

public struct ConflictException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct DeleteThingShadowRequest: Codable, Equatable {
    public var thingName: ThingName

    public init(thingName: ThingName) {
        self.thingName = thingName
    }

    enum CodingKeys: String, CodingKey {
        case thingName
    }

    public func validate() throws {
        try thingName.validateAsThingName()
    }
}

public struct DeleteThingShadowResponse: Codable, Equatable {
    public var payload: JsonDocument

    public init(payload: JsonDocument) {
        self.payload = payload
    }

    enum CodingKeys: String, CodingKey {
        case payload
    }

    public func validate() throws {
    }
}

public struct GetThingShadowRequest: Codable, Equatable {
    public var thingName: ThingName

    public init(thingName: ThingName) {
        self.thingName = thingName
    }

    enum CodingKeys: String, CodingKey {
        case thingName
    }

    public func validate() throws {
        try thingName.validateAsThingName()
    }
}

public struct GetThingShadowResponse: Codable, Equatable {
    public var payload: JsonDocument?

    public init(payload: JsonDocument? = nil) {
        self.payload = payload
    }

    enum CodingKeys: String, CodingKey {
        case payload
    }

    public func validate() throws {
    }
}

public struct InternalFailureException: Codable, Equatable {
    public var message: ErrorMessage2?

    public init(message: ErrorMessage2? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct InvalidRequestException: Codable, Equatable {
    public var message: ErrorMessage2?

    public init(message: ErrorMessage2? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct MethodNotAllowedException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct PublishRequest: Codable, Equatable {
    public var payload: Payload?
    public var qos: Qos?
    public var topic: Topic

    public init(payload: Payload? = nil,
                qos: Qos? = nil,
                topic: Topic) {
        self.payload = payload
        self.qos = qos
        self.topic = topic
    }

    enum CodingKeys: String, CodingKey {
        case payload
        case qos
        case topic
    }

    public func validate() throws {
        try qos?.validateAsQos()
    }
}

public struct RequestEntityTooLargeException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct ResourceNotFoundException: Codable, Equatable {
    public var message: ErrorMessage2?

    public init(message: ErrorMessage2? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct ServiceUnavailableException: Codable, Equatable {
    public var message: ErrorMessage2?

    public init(message: ErrorMessage2? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct ThrottlingException: Codable, Equatable {
    public var message: ErrorMessage2?

    public init(message: ErrorMessage2? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct UnauthorizedException: Codable, Equatable {
    public var message: ErrorMessage2?

    public init(message: ErrorMessage2? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct UnsupportedDocumentEncodingException: Codable, Equatable {
    public var message: ErrorMessage2?

    public init(message: ErrorMessage2? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct UpdateThingShadowRequest: Codable, Equatable {
    public var payload: JsonDocument
    public var thingName: ThingName

    public init(payload: JsonDocument,
                thingName: ThingName) {
        self.payload = payload
        self.thingName = thingName
    }

    enum CodingKeys: String, CodingKey {
        case payload
        case thingName
    }

    public func validate() throws {
        try thingName.validateAsThingName()
    }
}

public struct UpdateThingShadowResponse: Codable, Equatable {
    public var payload: JsonDocument?

    public init(payload: JsonDocument? = nil) {
        self.payload = payload
    }

    enum CodingKeys: String, CodingKey {
        case payload
    }

    public func validate() throws {
    }
}
