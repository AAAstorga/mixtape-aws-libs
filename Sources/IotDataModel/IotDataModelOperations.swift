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
// IotDataModelOperations.swift
// IotDataModel
//

import Foundation

/**
 Operation enumeration for the IotDataModel.
 */
public enum IotDataModelOperations: String {
    case deleteThingShadow = "DeleteThingShadow"
    case getThingShadow = "GetThingShadow"
    case publish = "Publish"
    case updateThingShadow = "UpdateThingShadow"

    public var operationPath: String {
        switch self {
        case .deleteThingShadow:
            return "/things/{thingName}/shadow"
        case .getThingShadow:
            return "/things/{thingName}/shadow"
        case .publish:
            return "/topics/{topic}"
        case .updateThingShadow:
            return "/things/{thingName}/shadow"
        }
    }
}

/**
 Structure to encode the path input for the DeleteThingShadow
 operation.
 */
public struct DeleteThingShadowOperationInputPath: Codable, Equatable {
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

public extension DeleteThingShadowRequest {
    public func asIotDataModelDeleteThingShadowOperationInputPath() -> DeleteThingShadowOperationInputPath {
        return DeleteThingShadowOperationInputPath(
            thingName: thingName)
    }
}

/**
 Structure to encode the path input for the GetThingShadow
 operation.
 */
public struct GetThingShadowOperationInputPath: Codable, Equatable {
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

public extension GetThingShadowRequest {
    public func asIotDataModelGetThingShadowOperationInputPath() -> GetThingShadowOperationInputPath {
        return GetThingShadowOperationInputPath(
            thingName: thingName)
    }
}

/**
 Structure to encode the path input for the Publish
 operation.
 */
public struct PublishOperationInputPath: Codable, Equatable {
    public var topic: Topic

    public init(topic: Topic) {
        self.topic = topic
    }

    enum CodingKeys: String, CodingKey {
        case topic
    }

    public func validate() throws {
    }
}

public extension PublishRequest {
    public func asIotDataModelPublishOperationInputPath() -> PublishOperationInputPath {
        return PublishOperationInputPath(
            topic: topic)
    }
}

/**
 Structure to encode the query input for the Publish
 operation.
 */
public struct PublishOperationInputQuery: Codable, Equatable {
    public var qos: Qos?

    public init(qos: Qos? = nil) {
        self.qos = qos
    }

    enum CodingKeys: String, CodingKey {
        case qos
    }

    public func validate() throws {
        try qos?.validateAsQos()
    }
}

public extension PublishRequest {
    public func asIotDataModelPublishOperationInputQuery() -> PublishOperationInputQuery {
        return PublishOperationInputQuery(
            qos: qos)
    }
}

/**
 Structure to encode the path input for the UpdateThingShadow
 operation.
 */
public struct UpdateThingShadowOperationInputPath: Codable, Equatable {
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

public extension UpdateThingShadowRequest {
    public func asIotDataModelUpdateThingShadowOperationInputPath() -> UpdateThingShadowOperationInputPath {
        return UpdateThingShadowOperationInputPath(
            thingName: thingName)
    }
}
