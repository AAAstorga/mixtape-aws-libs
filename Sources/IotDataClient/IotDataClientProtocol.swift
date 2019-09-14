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
// IotDataClientProtocol.swift
// IotDataClient
//

import Foundation
import IotDataModel
import SmokeHTTPClient

/**
 Client Protocol for the IotData service.
 */
public protocol IotDataClientProtocol {
    typealias DeleteThingShadowSyncType = (_ input: IotDataModel.DeleteThingShadowRequest) throws -> IotDataModel.DeleteThingShadowResponse
    typealias DeleteThingShadowAsyncType = (_ input: IotDataModel.DeleteThingShadowRequest, _ completion: @escaping (HTTPResult<IotDataModel.DeleteThingShadowResponse>) -> ()) throws -> ()
    typealias GetThingShadowSyncType = (_ input: IotDataModel.GetThingShadowRequest) throws -> IotDataModel.GetThingShadowResponse
    typealias GetThingShadowAsyncType = (_ input: IotDataModel.GetThingShadowRequest, _ completion: @escaping (HTTPResult<IotDataModel.GetThingShadowResponse>) -> ()) throws -> ()
    typealias PublishSyncType = (_ input: IotDataModel.PublishRequest) throws -> ()
    typealias PublishAsyncType = (_ input: IotDataModel.PublishRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias UpdateThingShadowSyncType = (_ input: IotDataModel.UpdateThingShadowRequest) throws -> IotDataModel.UpdateThingShadowResponse
    typealias UpdateThingShadowAsyncType = (_ input: IotDataModel.UpdateThingShadowRequest, _ completion: @escaping (HTTPResult<IotDataModel.UpdateThingShadowResponse>) -> ()) throws -> ()

    /**
     Invokes the DeleteThingShadow operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteThingShadowRequest object being passed to this operation.
         - completion: The DeleteThingShadowResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteThingShadowResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, methodNotAllowed, resourceNotFound, serviceUnavailable, throttling, unauthorized, unsupportedDocumentEncoding.
     */
    func deleteThingShadowAsync(input: IotDataModel.DeleteThingShadowRequest, completion: @escaping (HTTPResult<IotDataModel.DeleteThingShadowResponse>) -> ()) throws

    /**
     Invokes the DeleteThingShadow operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteThingShadowRequest object being passed to this operation.
     - Returns: The DeleteThingShadowResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, methodNotAllowed, resourceNotFound, serviceUnavailable, throttling, unauthorized, unsupportedDocumentEncoding.
     */
    func deleteThingShadowSync(input: IotDataModel.DeleteThingShadowRequest) throws -> IotDataModel.DeleteThingShadowResponse

    /**
     Invokes the GetThingShadow operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetThingShadowRequest object being passed to this operation.
         - completion: The GetThingShadowResponse object or an error will be passed to this 
           callback when the operation is complete. The GetThingShadowResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, methodNotAllowed, resourceNotFound, serviceUnavailable, throttling, unauthorized, unsupportedDocumentEncoding.
     */
    func getThingShadowAsync(input: IotDataModel.GetThingShadowRequest, completion: @escaping (HTTPResult<IotDataModel.GetThingShadowResponse>) -> ()) throws

    /**
     Invokes the GetThingShadow operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetThingShadowRequest object being passed to this operation.
     - Returns: The GetThingShadowResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, methodNotAllowed, resourceNotFound, serviceUnavailable, throttling, unauthorized, unsupportedDocumentEncoding.
     */
    func getThingShadowSync(input: IotDataModel.GetThingShadowRequest) throws -> IotDataModel.GetThingShadowResponse

    /**
     Invokes the Publish operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PublishRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalFailure, invalidRequest, methodNotAllowed, unauthorized.
     */
    func publishAsync(input: IotDataModel.PublishRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the Publish operation waiting for the response before returning.

     - Parameters:
         - input: The validated PublishRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, methodNotAllowed, unauthorized.
     */
    func publishSync(input: IotDataModel.PublishRequest) throws

    /**
     Invokes the UpdateThingShadow operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateThingShadowRequest object being passed to this operation.
         - completion: The UpdateThingShadowResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateThingShadowResponse
           object will be validated before being returned to caller.
           The possible errors are: conflict, internalFailure, invalidRequest, methodNotAllowed, requestEntityTooLarge, serviceUnavailable, throttling, unauthorized, unsupportedDocumentEncoding.
     */
    func updateThingShadowAsync(input: IotDataModel.UpdateThingShadowRequest, completion: @escaping (HTTPResult<IotDataModel.UpdateThingShadowResponse>) -> ()) throws

    /**
     Invokes the UpdateThingShadow operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateThingShadowRequest object being passed to this operation.
     - Returns: The UpdateThingShadowResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalFailure, invalidRequest, methodNotAllowed, requestEntityTooLarge, serviceUnavailable, throttling, unauthorized, unsupportedDocumentEncoding.
     */
    func updateThingShadowSync(input: IotDataModel.UpdateThingShadowRequest) throws -> IotDataModel.UpdateThingShadowResponse
}
