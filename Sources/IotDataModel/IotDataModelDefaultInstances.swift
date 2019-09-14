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
// IotDataModelDefaultInstances.swift
// IotDataModel
//

import Foundation

public extension ConflictException {
    /**
     Default instance of the ConflictException structure.
     */
    public static let __default: IotDataModel.ConflictException = {
        let defaultInstance = IotDataModel.ConflictException(
            message: nil)

        return defaultInstance
    }()
}

public extension DeleteThingShadowRequest {
    /**
     Default instance of the DeleteThingShadowRequest structure.
     */
    public static let __default: IotDataModel.DeleteThingShadowRequest = {
        let defaultInstance = IotDataModel.DeleteThingShadowRequest(
            thingName: "0")

        return defaultInstance
    }()
}

public extension DeleteThingShadowResponse {
    /**
     Default instance of the DeleteThingShadowResponse structure.
     */
    public static let __default: IotDataModel.DeleteThingShadowResponse = {
        let defaultInstance = IotDataModel.DeleteThingShadowResponse(
            payload: Data())

        return defaultInstance
    }()
}

public extension GetThingShadowRequest {
    /**
     Default instance of the GetThingShadowRequest structure.
     */
    public static let __default: IotDataModel.GetThingShadowRequest = {
        let defaultInstance = IotDataModel.GetThingShadowRequest(
            thingName: "0")

        return defaultInstance
    }()
}

public extension GetThingShadowResponse {
    /**
     Default instance of the GetThingShadowResponse structure.
     */
    public static let __default: IotDataModel.GetThingShadowResponse = {
        let defaultInstance = IotDataModel.GetThingShadowResponse(
            payload: nil)

        return defaultInstance
    }()
}

public extension InternalFailureException {
    /**
     Default instance of the InternalFailureException structure.
     */
    public static let __default: IotDataModel.InternalFailureException = {
        let defaultInstance = IotDataModel.InternalFailureException(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidRequestException {
    /**
     Default instance of the InvalidRequestException structure.
     */
    public static let __default: IotDataModel.InvalidRequestException = {
        let defaultInstance = IotDataModel.InvalidRequestException(
            message: nil)

        return defaultInstance
    }()
}

public extension MethodNotAllowedException {
    /**
     Default instance of the MethodNotAllowedException structure.
     */
    public static let __default: IotDataModel.MethodNotAllowedException = {
        let defaultInstance = IotDataModel.MethodNotAllowedException(
            message: nil)

        return defaultInstance
    }()
}

public extension PublishRequest {
    /**
     Default instance of the PublishRequest structure.
     */
    public static let __default: IotDataModel.PublishRequest = {
        let defaultInstance = IotDataModel.PublishRequest(
            payload: nil,
            qos: nil,
            topic: "value")

        return defaultInstance
    }()
}

public extension RequestEntityTooLargeException {
    /**
     Default instance of the RequestEntityTooLargeException structure.
     */
    public static let __default: IotDataModel.RequestEntityTooLargeException = {
        let defaultInstance = IotDataModel.RequestEntityTooLargeException(
            message: nil)

        return defaultInstance
    }()
}

public extension ResourceNotFoundException {
    /**
     Default instance of the ResourceNotFoundException structure.
     */
    public static let __default: IotDataModel.ResourceNotFoundException = {
        let defaultInstance = IotDataModel.ResourceNotFoundException(
            message: nil)

        return defaultInstance
    }()
}

public extension ServiceUnavailableException {
    /**
     Default instance of the ServiceUnavailableException structure.
     */
    public static let __default: IotDataModel.ServiceUnavailableException = {
        let defaultInstance = IotDataModel.ServiceUnavailableException(
            message: nil)

        return defaultInstance
    }()
}

public extension ThrottlingException {
    /**
     Default instance of the ThrottlingException structure.
     */
    public static let __default: IotDataModel.ThrottlingException = {
        let defaultInstance = IotDataModel.ThrottlingException(
            message: nil)

        return defaultInstance
    }()
}

public extension UnauthorizedException {
    /**
     Default instance of the UnauthorizedException structure.
     */
    public static let __default: IotDataModel.UnauthorizedException = {
        let defaultInstance = IotDataModel.UnauthorizedException(
            message: nil)

        return defaultInstance
    }()
}

public extension UnsupportedDocumentEncodingException {
    /**
     Default instance of the UnsupportedDocumentEncodingException structure.
     */
    public static let __default: IotDataModel.UnsupportedDocumentEncodingException = {
        let defaultInstance = IotDataModel.UnsupportedDocumentEncodingException(
            message: nil)

        return defaultInstance
    }()
}

public extension UpdateThingShadowRequest {
    /**
     Default instance of the UpdateThingShadowRequest structure.
     */
    public static let __default: IotDataModel.UpdateThingShadowRequest = {
        let defaultInstance = IotDataModel.UpdateThingShadowRequest(
            payload: Data(),
            thingName: "0")

        return defaultInstance
    }()
}

public extension UpdateThingShadowResponse {
    /**
     Default instance of the UpdateThingShadowResponse structure.
     */
    public static let __default: IotDataModel.UpdateThingShadowResponse = {
        let defaultInstance = IotDataModel.UpdateThingShadowResponse(
            payload: nil)

        return defaultInstance
    }()
}
