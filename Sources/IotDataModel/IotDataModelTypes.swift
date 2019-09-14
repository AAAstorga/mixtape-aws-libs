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
// IotDataModelTypes.swift
// IotDataModel
//

import Foundation

/**
 Type definition for the ErrorMessage1 field.
 */
public typealias ErrorMessage1 = String

/**
 Type definition for the JsonDocument field.
 */
public typealias JsonDocument = Data

/**
 Type definition for the Payload field.
 */
public typealias Payload = Data

/**
 Type definition for the Qos field.
 */
public typealias Qos = Int

/**
 Type definition for the ThingName field.
 */
public typealias ThingName = String

/**
 Type definition for the Topic field.
 */
public typealias Topic = String

/**
 Type definition for the ErrorMessage2 field.
 */
public typealias ErrorMessage2 = String

/**
 Validation for the Qos field.
*/
extension IotDataModel.Qos {
    public func validateAsQos() throws {
        if self < 0 {
            throw IotDataCodingError.validationError(reason: "The provided value to Qos violated the minimum range constraint.")
        }

        if self > 1 {
            throw IotDataCodingError.validationError(reason: "The provided value to Qos violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the ThingName field.
*/
extension IotDataModel.ThingName {
    public func validateAsThingName() throws {
        if self.count < 1 {
            throw IotDataCodingError.validationError(reason: "The provided value to ThingName violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw IotDataCodingError.validationError(reason: "The provided value to ThingName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9_-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotDataCodingError.validationError(
                    reason: "The provided value to ThingName violated the regular expression constraint.")
        }
    }
}
