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
// AWSIotDataClient.swift
// IotDataClient
//

import Foundation
import IotDataModel
import SmokeHTTPClient
import SmokeAWSCore
import SmokeAWSHttp
import NIO
import NIOHTTP1

public enum IotDataClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

private extension IotDataError {
    func isRetriable() -> Bool {
        return false
    }
}

private extension Swift.Error {
    func isRetriable() -> Bool {
        if let typedError = self as? IotDataError {
            return typedError.isRetriable()
        } else {
            return true
        }
    }
}

/**
 AWS Client for the IotData service.
 */
public struct AWSIotDataClient: IotDataClientProtocol {
    let httpClient: HTTPClient
    let awsRegion: AWSRegion
    let service: String
    let target: String?
    let retryConfiguration: HTTPClientRetryConfiguration
    let retryOnErrorProvider: (Swift.Error) -> Bool
    let credentialsProvider: CredentialsProvider
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                endpointHostName: String,
                endpointPort: Int = 443,
                service: String = "data.iot",
                contentType: String = "application/x-amz-rest-json",
                target: String? = nil,
                connectionTimeoutSeconds: Int = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopProvider = .spawnNewThreads) {
        let clientDelegate = JSONAWSHttpClientDelegate<IotDataError>()

        self.httpClient = HTTPClient(endpointHostName: endpointHostName,
                                     endpointPort: endpointPort,
                                     contentType: contentType,
                                     clientDelegate: clientDelegate,
                                     connectionTimeoutSeconds: connectionTimeoutSeconds,
                                     eventLoopProvider: eventLoopProvider)
        self.awsRegion = awsRegion
        self.service = service
        self.target = target
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.retryOnErrorProvider = { error in error.isRetriable() }
    }

    /**
     Gracefully shuts down this client. This function is idempotent and
     will handle being called multiple times.
     */
    public func close() {
        httpClient.close()
    }

    /**
     Waits for the client to be closed. If close() is not called,
     this will block forever.
     */
    public func wait() {
        httpClient.wait()
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotDataModelOperations.deleteThingShadow.rawValue,
                    target: target)

        let requestInput = DeleteThingShadowOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/things/{thingName}/shadow",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotDataModelOperations.deleteThingShadow.rawValue,
                    target: target)

        let requestInput = DeleteThingShadowOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/things/{thingName}/shadow",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotDataModelOperations.getThingShadow.rawValue,
                    target: target)

        let requestInput = GetThingShadowOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/things/{thingName}/shadow",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotDataModelOperations.getThingShadow.rawValue,
                    target: target)

        let requestInput = GetThingShadowOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/things/{thingName}/shadow",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotDataModelOperations.publish.rawValue,
                    target: target)

        let requestInput = PublishOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/topics/{topic}",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the Publish operation waiting for the response before returning.

     - Parameters:
         - input: The validated PublishRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, methodNotAllowed, unauthorized.
     */
    public func publishSync(input: IotDataModel.PublishRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotDataModelOperations.publish.rawValue,
                    target: target)

        let requestInput = PublishOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/topics/{topic}",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotDataModelOperations.updateThingShadow.rawValue,
                    target: target)

        let requestInput = UpdateThingShadowOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/things/{thingName}/shadow",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotDataModelOperations.updateThingShadow.rawValue,
                    target: target)

        let requestInput = UpdateThingShadowOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/things/{thingName}/shadow",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }
}
