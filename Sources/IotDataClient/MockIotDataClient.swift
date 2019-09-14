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
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment type_body_length
// -- Generated Code; do not edit --
//
// MockIotDataClient.swift
// IotDataClient
//

import Foundation
import IotDataModel
import SmokeHTTPClient

/**
 Mock Client for the IotData service by default returns the `__default` property of its return type.
 */
public struct MockIotDataClient: IotDataClientProtocol {
    let deleteThingShadowAsyncOverride: IotDataClientProtocol.DeleteThingShadowAsyncType?
    let deleteThingShadowSyncOverride: IotDataClientProtocol.DeleteThingShadowSyncType?
    let getThingShadowAsyncOverride: IotDataClientProtocol.GetThingShadowAsyncType?
    let getThingShadowSyncOverride: IotDataClientProtocol.GetThingShadowSyncType?
    let publishAsyncOverride: IotDataClientProtocol.PublishAsyncType?
    let publishSyncOverride: IotDataClientProtocol.PublishSyncType?
    let updateThingShadowAsyncOverride: IotDataClientProtocol.UpdateThingShadowAsyncType?
    let updateThingShadowSyncOverride: IotDataClientProtocol.UpdateThingShadowSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            deleteThingShadowAsync: IotDataClientProtocol.DeleteThingShadowAsyncType? = nil,
            deleteThingShadowSync: IotDataClientProtocol.DeleteThingShadowSyncType? = nil,
            getThingShadowAsync: IotDataClientProtocol.GetThingShadowAsyncType? = nil,
            getThingShadowSync: IotDataClientProtocol.GetThingShadowSyncType? = nil,
            publishAsync: IotDataClientProtocol.PublishAsyncType? = nil,
            publishSync: IotDataClientProtocol.PublishSyncType? = nil,
            updateThingShadowAsync: IotDataClientProtocol.UpdateThingShadowAsyncType? = nil,
            updateThingShadowSync: IotDataClientProtocol.UpdateThingShadowSyncType? = nil) {
        self.deleteThingShadowAsyncOverride = deleteThingShadowAsync
        self.deleteThingShadowSyncOverride = deleteThingShadowSync
        self.getThingShadowAsyncOverride = getThingShadowAsync
        self.getThingShadowSyncOverride = getThingShadowSync
        self.publishAsyncOverride = publishAsync
        self.publishSyncOverride = publishSync
        self.updateThingShadowAsyncOverride = updateThingShadowAsync
        self.updateThingShadowSyncOverride = updateThingShadowSync
    }

    /**
     Invokes the DeleteThingShadow operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteThingShadowRequest object being passed to this operation.
         - completion: The DeleteThingShadowResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteThingShadowResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, methodNotAllowed, resourceNotFound, serviceUnavailable, throttling, unauthorized, unsupportedDocumentEncoding.
     */
    public func deleteThingShadowAsync(input: IotDataModel.DeleteThingShadowRequest, completion: @escaping (HTTPResult<IotDataModel.DeleteThingShadowResponse>) -> ()) throws {
        if let deleteThingShadowAsyncOverride = deleteThingShadowAsyncOverride {
            return try deleteThingShadowAsyncOverride(input, completion)
        }

        let result = DeleteThingShadowResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the DeleteThingShadow operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteThingShadowRequest object being passed to this operation.
     - Returns: The DeleteThingShadowResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, methodNotAllowed, resourceNotFound, serviceUnavailable, throttling, unauthorized, unsupportedDocumentEncoding.
     */
    public func deleteThingShadowSync(input: IotDataModel.DeleteThingShadowRequest) throws -> IotDataModel.DeleteThingShadowResponse {
        if let deleteThingShadowSyncOverride = deleteThingShadowSyncOverride {
            return try deleteThingShadowSyncOverride(input)
        }

        return DeleteThingShadowResponse.__default
    }

    /**
     Invokes the GetThingShadow operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetThingShadowRequest object being passed to this operation.
         - completion: The GetThingShadowResponse object or an error will be passed to this 
           callback when the operation is complete. The GetThingShadowResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, methodNotAllowed, resourceNotFound, serviceUnavailable, throttling, unauthorized, unsupportedDocumentEncoding.
     */
    public func getThingShadowAsync(input: IotDataModel.GetThingShadowRequest, completion: @escaping (HTTPResult<IotDataModel.GetThingShadowResponse>) -> ()) throws {
        if let getThingShadowAsyncOverride = getThingShadowAsyncOverride {
            return try getThingShadowAsyncOverride(input, completion)
        }

        let result = GetThingShadowResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the GetThingShadow operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetThingShadowRequest object being passed to this operation.
     - Returns: The GetThingShadowResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, methodNotAllowed, resourceNotFound, serviceUnavailable, throttling, unauthorized, unsupportedDocumentEncoding.
     */
    public func getThingShadowSync(input: IotDataModel.GetThingShadowRequest) throws -> IotDataModel.GetThingShadowResponse {
        if let getThingShadowSyncOverride = getThingShadowSyncOverride {
            return try getThingShadowSyncOverride(input)
        }

        return GetThingShadowResponse.__default
    }

    /**
     Invokes the Publish operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PublishRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalFailure, invalidRequest, methodNotAllowed, unauthorized.
     */
    public func publishAsync(input: IotDataModel.PublishRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        if let publishAsyncOverride = publishAsyncOverride {
            return try publishAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the Publish operation waiting for the response before returning.

     - Parameters:
         - input: The validated PublishRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, methodNotAllowed, unauthorized.
     */
    public func publishSync(input: IotDataModel.PublishRequest) throws {
        if let publishSyncOverride = publishSyncOverride {
            return try publishSyncOverride(input)
        }

    }

    /**
     Invokes the UpdateThingShadow operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateThingShadowRequest object being passed to this operation.
         - completion: The UpdateThingShadowResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateThingShadowResponse
           object will be validated before being returned to caller.
           The possible errors are: conflict, internalFailure, invalidRequest, methodNotAllowed, requestEntityTooLarge, serviceUnavailable, throttling, unauthorized, unsupportedDocumentEncoding.
     */
    public func updateThingShadowAsync(input: IotDataModel.UpdateThingShadowRequest, completion: @escaping (HTTPResult<IotDataModel.UpdateThingShadowResponse>) -> ()) throws {
        if let updateThingShadowAsyncOverride = updateThingShadowAsyncOverride {
            return try updateThingShadowAsyncOverride(input, completion)
        }

        let result = UpdateThingShadowResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the UpdateThingShadow operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateThingShadowRequest object being passed to this operation.
     - Returns: The UpdateThingShadowResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalFailure, invalidRequest, methodNotAllowed, requestEntityTooLarge, serviceUnavailable, throttling, unauthorized, unsupportedDocumentEncoding.
     */
    public func updateThingShadowSync(input: IotDataModel.UpdateThingShadowRequest) throws -> IotDataModel.UpdateThingShadowResponse {
        if let updateThingShadowSyncOverride = updateThingShadowSyncOverride {
            return try updateThingShadowSyncOverride(input)
        }

        return UpdateThingShadowResponse.__default
    }
}
