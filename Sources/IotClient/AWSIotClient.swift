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
// AWSIotClient.swift
// IotClient
//

import Foundation
import IotModel
import SmokeHTTPClient
import SmokeAWSCore
import SmokeAWSHttp
import NIO
import NIOHTTP1

public enum IotClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

private extension IotError {
    func isRetriable() -> Bool {
        return false
    }
}

private extension Swift.Error {
    func isRetriable() -> Bool {
        if let typedError = self as? IotError {
            return typedError.isRetriable()
        } else {
            return true
        }
    }
}

/**
 AWS Client for the Iot service.
 */
public struct AWSIotClient: IotClientProtocol {
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
                service: String = "iot",
                contentType: String = "application/x-amz-rest-json",
                target: String? = nil,
                connectionTimeoutSeconds: Int = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopProvider = .spawnNewThreads) {
        let clientDelegate = JSONAWSHttpClientDelegate<IotError>()

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
     Invokes the AcceptCertificateTransfer operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcceptCertificateTransferRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, transferAlreadyCompleted, unauthorized.
     */
    public func acceptCertificateTransferAsync(input: IotModel.AcceptCertificateTransferRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.acceptCertificateTransfer.rawValue,
                    target: target)

        let requestInput = AcceptCertificateTransferOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/accept-certificate-transfer/{certificateId}",
            httpMethod: .PATCH,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the AcceptCertificateTransfer operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcceptCertificateTransferRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, transferAlreadyCompleted, unauthorized.
     */
    public func acceptCertificateTransferSync(input: IotModel.AcceptCertificateTransferRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.acceptCertificateTransfer.rawValue,
                    target: target)

        let requestInput = AcceptCertificateTransferOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/accept-certificate-transfer/{certificateId}",
            httpMethod: .PATCH,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the AddThingToBillingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddThingToBillingGroupRequest object being passed to this operation.
         - completion: The AddThingToBillingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The AddThingToBillingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func addThingToBillingGroupAsync(input: IotModel.AddThingToBillingGroupRequest, completion: @escaping (HTTPResult<IotModel.AddThingToBillingGroupResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.addThingToBillingGroup.rawValue,
                    target: target)

        let requestInput = AddThingToBillingGroupOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/billing-groups/addThingToBillingGroup",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the AddThingToBillingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddThingToBillingGroupRequest object being passed to this operation.
     - Returns: The AddThingToBillingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func addThingToBillingGroupSync(input: IotModel.AddThingToBillingGroupRequest) throws -> IotModel.AddThingToBillingGroupResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.addThingToBillingGroup.rawValue,
                    target: target)

        let requestInput = AddThingToBillingGroupOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/billing-groups/addThingToBillingGroup",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the AddThingToThingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddThingToThingGroupRequest object being passed to this operation.
         - completion: The AddThingToThingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The AddThingToThingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func addThingToThingGroupAsync(input: IotModel.AddThingToThingGroupRequest, completion: @escaping (HTTPResult<IotModel.AddThingToThingGroupResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.addThingToThingGroup.rawValue,
                    target: target)

        let requestInput = AddThingToThingGroupOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/thing-groups/addThingToThingGroup",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the AddThingToThingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddThingToThingGroupRequest object being passed to this operation.
     - Returns: The AddThingToThingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func addThingToThingGroupSync(input: IotModel.AddThingToThingGroupRequest) throws -> IotModel.AddThingToThingGroupResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.addThingToThingGroup.rawValue,
                    target: target)

        let requestInput = AddThingToThingGroupOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/thing-groups/addThingToThingGroup",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the AssociateTargetsWithJob operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateTargetsWithJobRequest object being passed to this operation.
         - completion: The AssociateTargetsWithJobResponse object or an error will be passed to this 
           callback when the operation is complete. The AssociateTargetsWithJobResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling.
     */
    public func associateTargetsWithJobAsync(input: IotModel.AssociateTargetsWithJobRequest, completion: @escaping (HTTPResult<IotModel.AssociateTargetsWithJobResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.associateTargetsWithJob.rawValue,
                    target: target)

        let requestInput = AssociateTargetsWithJobOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/jobs/{jobId}/targets",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the AssociateTargetsWithJob operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateTargetsWithJobRequest object being passed to this operation.
     - Returns: The AssociateTargetsWithJobResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling.
     */
    public func associateTargetsWithJobSync(input: IotModel.AssociateTargetsWithJobRequest) throws -> IotModel.AssociateTargetsWithJobResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.associateTargetsWithJob.rawValue,
                    target: target)

        let requestInput = AssociateTargetsWithJobOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/jobs/{jobId}/targets",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the AttachPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachPolicyRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func attachPolicyAsync(input: IotModel.AttachPolicyRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.attachPolicy.rawValue,
                    target: target)

        let requestInput = AttachPolicyOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/target-policies/{policyName}",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the AttachPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachPolicyRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func attachPolicySync(input: IotModel.AttachPolicyRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.attachPolicy.rawValue,
                    target: target)

        let requestInput = AttachPolicyOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/target-policies/{policyName}",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the AttachPrincipalPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachPrincipalPolicyRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func attachPrincipalPolicyAsync(input: IotModel.AttachPrincipalPolicyRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.attachPrincipalPolicy.rawValue,
                    target: target)

        let requestInput = AttachPrincipalPolicyOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/principal-policies/{policyName}",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the AttachPrincipalPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachPrincipalPolicyRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func attachPrincipalPolicySync(input: IotModel.AttachPrincipalPolicyRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.attachPrincipalPolicy.rawValue,
                    target: target)

        let requestInput = AttachPrincipalPolicyOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/principal-policies/{policyName}",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the AttachSecurityProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachSecurityProfileRequest object being passed to this operation.
         - completion: The AttachSecurityProfileResponse object or an error will be passed to this 
           callback when the operation is complete. The AttachSecurityProfileResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceNotFound, throttling, versionConflict.
     */
    public func attachSecurityProfileAsync(input: IotModel.AttachSecurityProfileRequest, completion: @escaping (HTTPResult<IotModel.AttachSecurityProfileResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.attachSecurityProfile.rawValue,
                    target: target)

        let requestInput = AttachSecurityProfileOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/security-profiles/{securityProfileName}/targets",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the AttachSecurityProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachSecurityProfileRequest object being passed to this operation.
     - Returns: The AttachSecurityProfileResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceNotFound, throttling, versionConflict.
     */
    public func attachSecurityProfileSync(input: IotModel.AttachSecurityProfileRequest) throws -> IotModel.AttachSecurityProfileResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.attachSecurityProfile.rawValue,
                    target: target)

        let requestInput = AttachSecurityProfileOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/security-profiles/{securityProfileName}/targets",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the AttachThingPrincipal operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachThingPrincipalRequest object being passed to this operation.
         - completion: The AttachThingPrincipalResponse object or an error will be passed to this 
           callback when the operation is complete. The AttachThingPrincipalResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func attachThingPrincipalAsync(input: IotModel.AttachThingPrincipalRequest, completion: @escaping (HTTPResult<IotModel.AttachThingPrincipalResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.attachThingPrincipal.rawValue,
                    target: target)

        let requestInput = AttachThingPrincipalOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/things/{thingName}/principals",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the AttachThingPrincipal operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachThingPrincipalRequest object being passed to this operation.
     - Returns: The AttachThingPrincipalResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func attachThingPrincipalSync(input: IotModel.AttachThingPrincipalRequest) throws -> IotModel.AttachThingPrincipalResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.attachThingPrincipal.rawValue,
                    target: target)

        let requestInput = AttachThingPrincipalOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/things/{thingName}/principals",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CancelAuditMitigationActionsTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelAuditMitigationActionsTaskRequest object being passed to this operation.
         - completion: The CancelAuditMitigationActionsTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The CancelAuditMitigationActionsTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func cancelAuditMitigationActionsTaskAsync(input: IotModel.CancelAuditMitigationActionsTaskRequest, completion: @escaping (HTTPResult<IotModel.CancelAuditMitigationActionsTaskResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.cancelAuditMitigationActionsTask.rawValue,
                    target: target)

        let requestInput = CancelAuditMitigationActionsTaskOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/audit/mitigationactions/tasks/{taskId}/cancel",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CancelAuditMitigationActionsTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelAuditMitigationActionsTaskRequest object being passed to this operation.
     - Returns: The CancelAuditMitigationActionsTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func cancelAuditMitigationActionsTaskSync(input: IotModel.CancelAuditMitigationActionsTaskRequest) throws -> IotModel.CancelAuditMitigationActionsTaskResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.cancelAuditMitigationActionsTask.rawValue,
                    target: target)

        let requestInput = CancelAuditMitigationActionsTaskOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/audit/mitigationactions/tasks/{taskId}/cancel",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CancelAuditTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelAuditTaskRequest object being passed to this operation.
         - completion: The CancelAuditTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The CancelAuditTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func cancelAuditTaskAsync(input: IotModel.CancelAuditTaskRequest, completion: @escaping (HTTPResult<IotModel.CancelAuditTaskResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.cancelAuditTask.rawValue,
                    target: target)

        let requestInput = CancelAuditTaskOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/audit/tasks/{taskId}/cancel",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CancelAuditTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelAuditTaskRequest object being passed to this operation.
     - Returns: The CancelAuditTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func cancelAuditTaskSync(input: IotModel.CancelAuditTaskRequest) throws -> IotModel.CancelAuditTaskResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.cancelAuditTask.rawValue,
                    target: target)

        let requestInput = CancelAuditTaskOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/audit/tasks/{taskId}/cancel",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CancelCertificateTransfer operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelCertificateTransferRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, transferAlreadyCompleted, unauthorized.
     */
    public func cancelCertificateTransferAsync(input: IotModel.CancelCertificateTransferRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.cancelCertificateTransfer.rawValue,
                    target: target)

        let requestInput = CancelCertificateTransferOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/cancel-certificate-transfer/{certificateId}",
            httpMethod: .PATCH,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CancelCertificateTransfer operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelCertificateTransferRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, transferAlreadyCompleted, unauthorized.
     */
    public func cancelCertificateTransferSync(input: IotModel.CancelCertificateTransferRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.cancelCertificateTransfer.rawValue,
                    target: target)

        let requestInput = CancelCertificateTransferOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/cancel-certificate-transfer/{certificateId}",
            httpMethod: .PATCH,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CancelJob operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelJobRequest object being passed to this operation.
         - completion: The CancelJobResponse object or an error will be passed to this 
           callback when the operation is complete. The CancelJobResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    public func cancelJobAsync(input: IotModel.CancelJobRequest, completion: @escaping (HTTPResult<IotModel.CancelJobResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.cancelJob.rawValue,
                    target: target)

        let requestInput = CancelJobOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/jobs/{jobId}/cancel",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CancelJob operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelJobRequest object being passed to this operation.
     - Returns: The CancelJobResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    public func cancelJobSync(input: IotModel.CancelJobRequest) throws -> IotModel.CancelJobResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.cancelJob.rawValue,
                    target: target)

        let requestInput = CancelJobOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/jobs/{jobId}/cancel",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CancelJobExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelJobExecutionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidRequest, invalidStateTransition, resourceNotFound, serviceUnavailable, throttling, versionConflict.
     */
    public func cancelJobExecutionAsync(input: IotModel.CancelJobExecutionRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.cancelJobExecution.rawValue,
                    target: target)

        let requestInput = CancelJobExecutionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/things/{thingName}/jobs/{jobId}/cancel",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CancelJobExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelJobExecutionRequest object being passed to this operation.
     - Throws: invalidRequest, invalidStateTransition, resourceNotFound, serviceUnavailable, throttling, versionConflict.
     */
    public func cancelJobExecutionSync(input: IotModel.CancelJobExecutionRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.cancelJobExecution.rawValue,
                    target: target)

        let requestInput = CancelJobExecutionOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/things/{thingName}/jobs/{jobId}/cancel",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ClearDefaultAuthorizer operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ClearDefaultAuthorizerRequest object being passed to this operation.
         - completion: The ClearDefaultAuthorizerResponse object or an error will be passed to this 
           callback when the operation is complete. The ClearDefaultAuthorizerResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func clearDefaultAuthorizerAsync(input: IotModel.ClearDefaultAuthorizerRequest, completion: @escaping (HTTPResult<IotModel.ClearDefaultAuthorizerResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.clearDefaultAuthorizer.rawValue,
                    target: target)

        let requestInput = ClearDefaultAuthorizerOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/default-authorizer",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ClearDefaultAuthorizer operation waiting for the response before returning.

     - Parameters:
         - input: The validated ClearDefaultAuthorizerRequest object being passed to this operation.
     - Returns: The ClearDefaultAuthorizerResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func clearDefaultAuthorizerSync(input: IotModel.ClearDefaultAuthorizerRequest) throws -> IotModel.ClearDefaultAuthorizerResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.clearDefaultAuthorizer.rawValue,
                    target: target)

        let requestInput = ClearDefaultAuthorizerOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/default-authorizer",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateAuthorizer operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateAuthorizerRequest object being passed to this operation.
         - completion: The CreateAuthorizerResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateAuthorizerResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceAlreadyExists, serviceUnavailable, throttling, unauthorized.
     */
    public func createAuthorizerAsync(input: IotModel.CreateAuthorizerRequest, completion: @escaping (HTTPResult<IotModel.CreateAuthorizerResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createAuthorizer.rawValue,
                    target: target)

        let requestInput = CreateAuthorizerOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/authorizer/{authorizerName}",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateAuthorizer operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateAuthorizerRequest object being passed to this operation.
     - Returns: The CreateAuthorizerResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceAlreadyExists, serviceUnavailable, throttling, unauthorized.
     */
    public func createAuthorizerSync(input: IotModel.CreateAuthorizerRequest) throws -> IotModel.CreateAuthorizerResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createAuthorizer.rawValue,
                    target: target)

        let requestInput = CreateAuthorizerOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/authorizer/{authorizerName}",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateBillingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateBillingGroupRequest object being passed to this operation.
         - completion: The CreateBillingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateBillingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceAlreadyExists, throttling.
     */
    public func createBillingGroupAsync(input: IotModel.CreateBillingGroupRequest, completion: @escaping (HTTPResult<IotModel.CreateBillingGroupResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createBillingGroup.rawValue,
                    target: target)

        let requestInput = CreateBillingGroupOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/billing-groups/{billingGroupName}",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateBillingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateBillingGroupRequest object being passed to this operation.
     - Returns: The CreateBillingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceAlreadyExists, throttling.
     */
    public func createBillingGroupSync(input: IotModel.CreateBillingGroupRequest) throws -> IotModel.CreateBillingGroupResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createBillingGroup.rawValue,
                    target: target)

        let requestInput = CreateBillingGroupOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/billing-groups/{billingGroupName}",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateCertificateFromCsr operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateCertificateFromCsrRequest object being passed to this operation.
         - completion: The CreateCertificateFromCsrResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateCertificateFromCsrResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func createCertificateFromCsrAsync(input: IotModel.CreateCertificateFromCsrRequest, completion: @escaping (HTTPResult<IotModel.CreateCertificateFromCsrResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createCertificateFromCsr.rawValue,
                    target: target)

        let requestInput = CreateCertificateFromCsrOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/certificates",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateCertificateFromCsr operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateCertificateFromCsrRequest object being passed to this operation.
     - Returns: The CreateCertificateFromCsrResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func createCertificateFromCsrSync(input: IotModel.CreateCertificateFromCsrRequest) throws -> IotModel.CreateCertificateFromCsrResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createCertificateFromCsr.rawValue,
                    target: target)

        let requestInput = CreateCertificateFromCsrOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/certificates",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateDynamicThingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDynamicThingGroupRequest object being passed to this operation.
         - completion: The CreateDynamicThingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateDynamicThingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidQuery, invalidRequest, limitExceeded, resourceAlreadyExists, resourceNotFound, throttling.
     */
    public func createDynamicThingGroupAsync(input: IotModel.CreateDynamicThingGroupRequest, completion: @escaping (HTTPResult<IotModel.CreateDynamicThingGroupResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createDynamicThingGroup.rawValue,
                    target: target)

        let requestInput = CreateDynamicThingGroupOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/dynamic-thing-groups/{thingGroupName}",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateDynamicThingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDynamicThingGroupRequest object being passed to this operation.
     - Returns: The CreateDynamicThingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidQuery, invalidRequest, limitExceeded, resourceAlreadyExists, resourceNotFound, throttling.
     */
    public func createDynamicThingGroupSync(input: IotModel.CreateDynamicThingGroupRequest) throws -> IotModel.CreateDynamicThingGroupResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createDynamicThingGroup.rawValue,
                    target: target)

        let requestInput = CreateDynamicThingGroupOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/dynamic-thing-groups/{thingGroupName}",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateJob operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateJobRequest object being passed to this operation.
         - completion: The CreateJobResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateJobResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidRequest, limitExceeded, resourceAlreadyExists, resourceNotFound, serviceUnavailable, throttling.
     */
    public func createJobAsync(input: IotModel.CreateJobRequest, completion: @escaping (HTTPResult<IotModel.CreateJobResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createJob.rawValue,
                    target: target)

        let requestInput = CreateJobOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/jobs/{jobId}",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateJob operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateJobRequest object being passed to this operation.
     - Returns: The CreateJobResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidRequest, limitExceeded, resourceAlreadyExists, resourceNotFound, serviceUnavailable, throttling.
     */
    public func createJobSync(input: IotModel.CreateJobRequest) throws -> IotModel.CreateJobResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createJob.rawValue,
                    target: target)

        let requestInput = CreateJobOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/jobs/{jobId}",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateKeysAndCertificate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateKeysAndCertificateRequest object being passed to this operation.
         - completion: The CreateKeysAndCertificateResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateKeysAndCertificateResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func createKeysAndCertificateAsync(input: IotModel.CreateKeysAndCertificateRequest, completion: @escaping (HTTPResult<IotModel.CreateKeysAndCertificateResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createKeysAndCertificate.rawValue,
                    target: target)

        let requestInput = CreateKeysAndCertificateOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/keys-and-certificate",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateKeysAndCertificate operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateKeysAndCertificateRequest object being passed to this operation.
     - Returns: The CreateKeysAndCertificateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func createKeysAndCertificateSync(input: IotModel.CreateKeysAndCertificateRequest) throws -> IotModel.CreateKeysAndCertificateResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createKeysAndCertificate.rawValue,
                    target: target)

        let requestInput = CreateKeysAndCertificateOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/keys-and-certificate",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateMitigationAction operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateMitigationActionRequest object being passed to this operation.
         - completion: The CreateMitigationActionResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateMitigationActionResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceAlreadyExists, throttling.
     */
    public func createMitigationActionAsync(input: IotModel.CreateMitigationActionRequest, completion: @escaping (HTTPResult<IotModel.CreateMitigationActionResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createMitigationAction.rawValue,
                    target: target)

        let requestInput = CreateMitigationActionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/mitigationactions/actions/{actionName}",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateMitigationAction operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateMitigationActionRequest object being passed to this operation.
     - Returns: The CreateMitigationActionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceAlreadyExists, throttling.
     */
    public func createMitigationActionSync(input: IotModel.CreateMitigationActionRequest) throws -> IotModel.CreateMitigationActionResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createMitigationAction.rawValue,
                    target: target)

        let requestInput = CreateMitigationActionOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/mitigationactions/actions/{actionName}",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateOTAUpdate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateOTAUpdateRequest object being passed to this operation.
         - completion: The CreateOTAUpdateResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateOTAUpdateResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceAlreadyExists, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func createOTAUpdateAsync(input: IotModel.CreateOTAUpdateRequest, completion: @escaping (HTTPResult<IotModel.CreateOTAUpdateResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createOTAUpdate.rawValue,
                    target: target)

        let requestInput = CreateOTAUpdateOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/otaUpdates/{otaUpdateId}",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateOTAUpdate operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateOTAUpdateRequest object being passed to this operation.
     - Returns: The CreateOTAUpdateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceAlreadyExists, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func createOTAUpdateSync(input: IotModel.CreateOTAUpdateRequest) throws -> IotModel.CreateOTAUpdateResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createOTAUpdate.rawValue,
                    target: target)

        let requestInput = CreateOTAUpdateOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/otaUpdates/{otaUpdateId}",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreatePolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreatePolicyRequest object being passed to this operation.
         - completion: The CreatePolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The CreatePolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, malformedPolicy, resourceAlreadyExists, serviceUnavailable, throttling, unauthorized.
     */
    public func createPolicyAsync(input: IotModel.CreatePolicyRequest, completion: @escaping (HTTPResult<IotModel.CreatePolicyResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createPolicy.rawValue,
                    target: target)

        let requestInput = CreatePolicyOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/policies/{policyName}",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreatePolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreatePolicyRequest object being passed to this operation.
     - Returns: The CreatePolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, malformedPolicy, resourceAlreadyExists, serviceUnavailable, throttling, unauthorized.
     */
    public func createPolicySync(input: IotModel.CreatePolicyRequest) throws -> IotModel.CreatePolicyResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createPolicy.rawValue,
                    target: target)

        let requestInput = CreatePolicyOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/policies/{policyName}",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreatePolicyVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreatePolicyVersionRequest object being passed to this operation.
         - completion: The CreatePolicyVersionResponse object or an error will be passed to this 
           callback when the operation is complete. The CreatePolicyVersionResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, malformedPolicy, resourceNotFound, serviceUnavailable, throttling, unauthorized, versionsLimitExceeded.
     */
    public func createPolicyVersionAsync(input: IotModel.CreatePolicyVersionRequest, completion: @escaping (HTTPResult<IotModel.CreatePolicyVersionResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createPolicyVersion.rawValue,
                    target: target)

        let requestInput = CreatePolicyVersionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/policies/{policyName}/version",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreatePolicyVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreatePolicyVersionRequest object being passed to this operation.
     - Returns: The CreatePolicyVersionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, malformedPolicy, resourceNotFound, serviceUnavailable, throttling, unauthorized, versionsLimitExceeded.
     */
    public func createPolicyVersionSync(input: IotModel.CreatePolicyVersionRequest) throws -> IotModel.CreatePolicyVersionResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createPolicyVersion.rawValue,
                    target: target)

        let requestInput = CreatePolicyVersionOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/policies/{policyName}/version",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateRoleAlias operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateRoleAliasRequest object being passed to this operation.
         - completion: The CreateRoleAliasResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateRoleAliasResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceAlreadyExists, serviceUnavailable, throttling, unauthorized.
     */
    public func createRoleAliasAsync(input: IotModel.CreateRoleAliasRequest, completion: @escaping (HTTPResult<IotModel.CreateRoleAliasResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createRoleAlias.rawValue,
                    target: target)

        let requestInput = CreateRoleAliasOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/role-aliases/{roleAlias}",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateRoleAlias operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateRoleAliasRequest object being passed to this operation.
     - Returns: The CreateRoleAliasResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceAlreadyExists, serviceUnavailable, throttling, unauthorized.
     */
    public func createRoleAliasSync(input: IotModel.CreateRoleAliasRequest) throws -> IotModel.CreateRoleAliasResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createRoleAlias.rawValue,
                    target: target)

        let requestInput = CreateRoleAliasOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/role-aliases/{roleAlias}",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateScheduledAudit operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateScheduledAuditRequest object being passed to this operation.
         - completion: The CreateScheduledAuditResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateScheduledAuditResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceAlreadyExists, throttling.
     */
    public func createScheduledAuditAsync(input: IotModel.CreateScheduledAuditRequest, completion: @escaping (HTTPResult<IotModel.CreateScheduledAuditResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createScheduledAudit.rawValue,
                    target: target)

        let requestInput = CreateScheduledAuditOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/audit/scheduledaudits/{scheduledAuditName}",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateScheduledAudit operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateScheduledAuditRequest object being passed to this operation.
     - Returns: The CreateScheduledAuditResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceAlreadyExists, throttling.
     */
    public func createScheduledAuditSync(input: IotModel.CreateScheduledAuditRequest) throws -> IotModel.CreateScheduledAuditResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createScheduledAudit.rawValue,
                    target: target)

        let requestInput = CreateScheduledAuditOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/audit/scheduledaudits/{scheduledAuditName}",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateSecurityProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateSecurityProfileRequest object being passed to this operation.
         - completion: The CreateSecurityProfileResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateSecurityProfileResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceAlreadyExists, throttling.
     */
    public func createSecurityProfileAsync(input: IotModel.CreateSecurityProfileRequest, completion: @escaping (HTTPResult<IotModel.CreateSecurityProfileResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createSecurityProfile.rawValue,
                    target: target)

        let requestInput = CreateSecurityProfileOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/security-profiles/{securityProfileName}",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateSecurityProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateSecurityProfileRequest object being passed to this operation.
     - Returns: The CreateSecurityProfileResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceAlreadyExists, throttling.
     */
    public func createSecurityProfileSync(input: IotModel.CreateSecurityProfileRequest) throws -> IotModel.CreateSecurityProfileResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createSecurityProfile.rawValue,
                    target: target)

        let requestInput = CreateSecurityProfileOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/security-profiles/{securityProfileName}",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateStream operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateStreamRequest object being passed to this operation.
         - completion: The CreateStreamResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateStreamResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceAlreadyExists, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func createStreamAsync(input: IotModel.CreateStreamRequest, completion: @escaping (HTTPResult<IotModel.CreateStreamResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createStream.rawValue,
                    target: target)

        let requestInput = CreateStreamOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/streams/{streamId}",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateStream operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateStreamRequest object being passed to this operation.
     - Returns: The CreateStreamResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceAlreadyExists, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func createStreamSync(input: IotModel.CreateStreamRequest) throws -> IotModel.CreateStreamResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createStream.rawValue,
                    target: target)

        let requestInput = CreateStreamOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/streams/{streamId}",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateThing operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateThingRequest object being passed to this operation.
         - completion: The CreateThingResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateThingResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceAlreadyExists, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func createThingAsync(input: IotModel.CreateThingRequest, completion: @escaping (HTTPResult<IotModel.CreateThingResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createThing.rawValue,
                    target: target)

        let requestInput = CreateThingOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/things/{thingName}",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateThing operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateThingRequest object being passed to this operation.
     - Returns: The CreateThingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceAlreadyExists, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func createThingSync(input: IotModel.CreateThingRequest) throws -> IotModel.CreateThingResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createThing.rawValue,
                    target: target)

        let requestInput = CreateThingOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/things/{thingName}",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateThingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateThingGroupRequest object being passed to this operation.
         - completion: The CreateThingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateThingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceAlreadyExists, throttling.
     */
    public func createThingGroupAsync(input: IotModel.CreateThingGroupRequest, completion: @escaping (HTTPResult<IotModel.CreateThingGroupResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createThingGroup.rawValue,
                    target: target)

        let requestInput = CreateThingGroupOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/thing-groups/{thingGroupName}",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateThingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateThingGroupRequest object being passed to this operation.
     - Returns: The CreateThingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceAlreadyExists, throttling.
     */
    public func createThingGroupSync(input: IotModel.CreateThingGroupRequest) throws -> IotModel.CreateThingGroupResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createThingGroup.rawValue,
                    target: target)

        let requestInput = CreateThingGroupOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/thing-groups/{thingGroupName}",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateThingType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateThingTypeRequest object being passed to this operation.
         - completion: The CreateThingTypeResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateThingTypeResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceAlreadyExists, serviceUnavailable, throttling, unauthorized.
     */
    public func createThingTypeAsync(input: IotModel.CreateThingTypeRequest, completion: @escaping (HTTPResult<IotModel.CreateThingTypeResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createThingType.rawValue,
                    target: target)

        let requestInput = CreateThingTypeOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/thing-types/{thingTypeName}",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateThingType operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateThingTypeRequest object being passed to this operation.
     - Returns: The CreateThingTypeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceAlreadyExists, serviceUnavailable, throttling, unauthorized.
     */
    public func createThingTypeSync(input: IotModel.CreateThingTypeRequest) throws -> IotModel.CreateThingTypeResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createThingType.rawValue,
                    target: target)

        let requestInput = CreateThingTypeOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/thing-types/{thingTypeName}",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateTopicRule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTopicRuleRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: conflictingResourceUpdate, internal, invalidRequest, resourceAlreadyExists, serviceUnavailable, sqlParse.
     */
    public func createTopicRuleAsync(input: IotModel.CreateTopicRuleRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createTopicRule.rawValue,
                    target: target)

        let requestInput = CreateTopicRuleOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/rules/{ruleName}",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateTopicRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTopicRuleRequest object being passed to this operation.
     - Throws: conflictingResourceUpdate, internal, invalidRequest, resourceAlreadyExists, serviceUnavailable, sqlParse.
     */
    public func createTopicRuleSync(input: IotModel.CreateTopicRuleRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.createTopicRule.rawValue,
                    target: target)

        let requestInput = CreateTopicRuleOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/rules/{ruleName}",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteAccountAuditConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteAccountAuditConfigurationRequest object being passed to this operation.
         - completion: The DeleteAccountAuditConfigurationResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteAccountAuditConfigurationResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func deleteAccountAuditConfigurationAsync(input: IotModel.DeleteAccountAuditConfigurationRequest, completion: @escaping (HTTPResult<IotModel.DeleteAccountAuditConfigurationResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteAccountAuditConfiguration.rawValue,
                    target: target)

        let requestInput = DeleteAccountAuditConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/audit/configuration",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteAccountAuditConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteAccountAuditConfigurationRequest object being passed to this operation.
     - Returns: The DeleteAccountAuditConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func deleteAccountAuditConfigurationSync(input: IotModel.DeleteAccountAuditConfigurationRequest) throws -> IotModel.DeleteAccountAuditConfigurationResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteAccountAuditConfiguration.rawValue,
                    target: target)

        let requestInput = DeleteAccountAuditConfigurationOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/audit/configuration",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteAuthorizer operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteAuthorizerRequest object being passed to this operation.
         - completion: The DeleteAuthorizerResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteAuthorizerResponse
           object will be validated before being returned to caller.
           The possible errors are: deleteConflict, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func deleteAuthorizerAsync(input: IotModel.DeleteAuthorizerRequest, completion: @escaping (HTTPResult<IotModel.DeleteAuthorizerResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteAuthorizer.rawValue,
                    target: target)

        let requestInput = DeleteAuthorizerOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/authorizer/{authorizerName}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteAuthorizer operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteAuthorizerRequest object being passed to this operation.
     - Returns: The DeleteAuthorizerResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: deleteConflict, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func deleteAuthorizerSync(input: IotModel.DeleteAuthorizerRequest) throws -> IotModel.DeleteAuthorizerResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteAuthorizer.rawValue,
                    target: target)

        let requestInput = DeleteAuthorizerOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/authorizer/{authorizerName}",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBillingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBillingGroupRequest object being passed to this operation.
         - completion: The DeleteBillingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteBillingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling, versionConflict.
     */
    public func deleteBillingGroupAsync(input: IotModel.DeleteBillingGroupRequest, completion: @escaping (HTTPResult<IotModel.DeleteBillingGroupResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteBillingGroup.rawValue,
                    target: target)

        let requestInput = DeleteBillingGroupOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/billing-groups/{billingGroupName}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBillingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBillingGroupRequest object being passed to this operation.
     - Returns: The DeleteBillingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling, versionConflict.
     */
    public func deleteBillingGroupSync(input: IotModel.DeleteBillingGroupRequest) throws -> IotModel.DeleteBillingGroupResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteBillingGroup.rawValue,
                    target: target)

        let requestInput = DeleteBillingGroupOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/billing-groups/{billingGroupName}",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteCACertificate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteCACertificateRequest object being passed to this operation.
         - completion: The DeleteCACertificateResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteCACertificateResponse
           object will be validated before being returned to caller.
           The possible errors are: certificateState, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func deleteCACertificateAsync(input: IotModel.DeleteCACertificateRequest, completion: @escaping (HTTPResult<IotModel.DeleteCACertificateResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteCACertificate.rawValue,
                    target: target)

        let requestInput = DeleteCACertificateOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/cacertificate/{caCertificateId}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteCACertificate operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteCACertificateRequest object being passed to this operation.
     - Returns: The DeleteCACertificateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: certificateState, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func deleteCACertificateSync(input: IotModel.DeleteCACertificateRequest) throws -> IotModel.DeleteCACertificateResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteCACertificate.rawValue,
                    target: target)

        let requestInput = DeleteCACertificateOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/cacertificate/{caCertificateId}",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteCertificate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteCertificateRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: certificateState, deleteConflict, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func deleteCertificateAsync(input: IotModel.DeleteCertificateRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteCertificate.rawValue,
                    target: target)

        let requestInput = DeleteCertificateOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/certificates/{certificateId}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteCertificate operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteCertificateRequest object being passed to this operation.
     - Throws: certificateState, deleteConflict, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func deleteCertificateSync(input: IotModel.DeleteCertificateRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteCertificate.rawValue,
                    target: target)

        let requestInput = DeleteCertificateOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/certificates/{certificateId}",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteDynamicThingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDynamicThingGroupRequest object being passed to this operation.
         - completion: The DeleteDynamicThingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteDynamicThingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling, versionConflict.
     */
    public func deleteDynamicThingGroupAsync(input: IotModel.DeleteDynamicThingGroupRequest, completion: @escaping (HTTPResult<IotModel.DeleteDynamicThingGroupResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteDynamicThingGroup.rawValue,
                    target: target)

        let requestInput = DeleteDynamicThingGroupOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/dynamic-thing-groups/{thingGroupName}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteDynamicThingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDynamicThingGroupRequest object being passed to this operation.
     - Returns: The DeleteDynamicThingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling, versionConflict.
     */
    public func deleteDynamicThingGroupSync(input: IotModel.DeleteDynamicThingGroupRequest) throws -> IotModel.DeleteDynamicThingGroupResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteDynamicThingGroup.rawValue,
                    target: target)

        let requestInput = DeleteDynamicThingGroupOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/dynamic-thing-groups/{thingGroupName}",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteJob operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteJobRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidRequest, invalidStateTransition, limitExceeded, resourceNotFound, serviceUnavailable, throttling.
     */
    public func deleteJobAsync(input: IotModel.DeleteJobRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteJob.rawValue,
                    target: target)

        let requestInput = DeleteJobOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/jobs/{jobId}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteJob operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteJobRequest object being passed to this operation.
     - Throws: invalidRequest, invalidStateTransition, limitExceeded, resourceNotFound, serviceUnavailable, throttling.
     */
    public func deleteJobSync(input: IotModel.DeleteJobRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteJob.rawValue,
                    target: target)

        let requestInput = DeleteJobOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/jobs/{jobId}",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteJobExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteJobExecutionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidRequest, invalidStateTransition, resourceNotFound, serviceUnavailable, throttling.
     */
    public func deleteJobExecutionAsync(input: IotModel.DeleteJobExecutionRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteJobExecution.rawValue,
                    target: target)

        let requestInput = DeleteJobExecutionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/things/{thingName}/jobs/{jobId}/executionNumber/{executionNumber}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteJobExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteJobExecutionRequest object being passed to this operation.
     - Throws: invalidRequest, invalidStateTransition, resourceNotFound, serviceUnavailable, throttling.
     */
    public func deleteJobExecutionSync(input: IotModel.DeleteJobExecutionRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteJobExecution.rawValue,
                    target: target)

        let requestInput = DeleteJobExecutionOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/things/{thingName}/jobs/{jobId}/executionNumber/{executionNumber}",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteMitigationAction operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteMitigationActionRequest object being passed to this operation.
         - completion: The DeleteMitigationActionResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteMitigationActionResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling.
     */
    public func deleteMitigationActionAsync(input: IotModel.DeleteMitigationActionRequest, completion: @escaping (HTTPResult<IotModel.DeleteMitigationActionResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteMitigationAction.rawValue,
                    target: target)

        let requestInput = DeleteMitigationActionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/mitigationactions/actions/{actionName}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteMitigationAction operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteMitigationActionRequest object being passed to this operation.
     - Returns: The DeleteMitigationActionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling.
     */
    public func deleteMitigationActionSync(input: IotModel.DeleteMitigationActionRequest) throws -> IotModel.DeleteMitigationActionResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteMitigationAction.rawValue,
                    target: target)

        let requestInput = DeleteMitigationActionOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/mitigationactions/actions/{actionName}",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteOTAUpdate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteOTAUpdateRequest object being passed to this operation.
         - completion: The DeleteOTAUpdateResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteOTAUpdateResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized, versionConflict.
     */
    public func deleteOTAUpdateAsync(input: IotModel.DeleteOTAUpdateRequest, completion: @escaping (HTTPResult<IotModel.DeleteOTAUpdateResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteOTAUpdate.rawValue,
                    target: target)

        let requestInput = DeleteOTAUpdateOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/otaUpdates/{otaUpdateId}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteOTAUpdate operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteOTAUpdateRequest object being passed to this operation.
     - Returns: The DeleteOTAUpdateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized, versionConflict.
     */
    public func deleteOTAUpdateSync(input: IotModel.DeleteOTAUpdateRequest) throws -> IotModel.DeleteOTAUpdateResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteOTAUpdate.rawValue,
                    target: target)

        let requestInput = DeleteOTAUpdateOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/otaUpdates/{otaUpdateId}",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeletePolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeletePolicyRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: deleteConflict, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func deletePolicyAsync(input: IotModel.DeletePolicyRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deletePolicy.rawValue,
                    target: target)

        let requestInput = DeletePolicyOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/policies/{policyName}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeletePolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeletePolicyRequest object being passed to this operation.
     - Throws: deleteConflict, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func deletePolicySync(input: IotModel.DeletePolicyRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deletePolicy.rawValue,
                    target: target)

        let requestInput = DeletePolicyOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/policies/{policyName}",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeletePolicyVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeletePolicyVersionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: deleteConflict, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func deletePolicyVersionAsync(input: IotModel.DeletePolicyVersionRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deletePolicyVersion.rawValue,
                    target: target)

        let requestInput = DeletePolicyVersionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/policies/{policyName}/version/{policyVersionId}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeletePolicyVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeletePolicyVersionRequest object being passed to this operation.
     - Throws: deleteConflict, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func deletePolicyVersionSync(input: IotModel.DeletePolicyVersionRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deletePolicyVersion.rawValue,
                    target: target)

        let requestInput = DeletePolicyVersionOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/policies/{policyName}/version/{policyVersionId}",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteRegistrationCode operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteRegistrationCodeRequest object being passed to this operation.
         - completion: The DeleteRegistrationCodeResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteRegistrationCodeResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func deleteRegistrationCodeAsync(input: IotModel.DeleteRegistrationCodeRequest, completion: @escaping (HTTPResult<IotModel.DeleteRegistrationCodeResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteRegistrationCode.rawValue,
                    target: target)

        let requestInput = DeleteRegistrationCodeOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/registrationcode",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteRegistrationCode operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteRegistrationCodeRequest object being passed to this operation.
     - Returns: The DeleteRegistrationCodeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func deleteRegistrationCodeSync(input: IotModel.DeleteRegistrationCodeRequest) throws -> IotModel.DeleteRegistrationCodeResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteRegistrationCode.rawValue,
                    target: target)

        let requestInput = DeleteRegistrationCodeOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/registrationcode",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteRoleAlias operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteRoleAliasRequest object being passed to this operation.
         - completion: The DeleteRoleAliasResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteRoleAliasResponse
           object will be validated before being returned to caller.
           The possible errors are: deleteConflict, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func deleteRoleAliasAsync(input: IotModel.DeleteRoleAliasRequest, completion: @escaping (HTTPResult<IotModel.DeleteRoleAliasResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteRoleAlias.rawValue,
                    target: target)

        let requestInput = DeleteRoleAliasOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/role-aliases/{roleAlias}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteRoleAlias operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteRoleAliasRequest object being passed to this operation.
     - Returns: The DeleteRoleAliasResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: deleteConflict, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func deleteRoleAliasSync(input: IotModel.DeleteRoleAliasRequest) throws -> IotModel.DeleteRoleAliasResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteRoleAlias.rawValue,
                    target: target)

        let requestInput = DeleteRoleAliasOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/role-aliases/{roleAlias}",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteScheduledAudit operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteScheduledAuditRequest object being passed to this operation.
         - completion: The DeleteScheduledAuditResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteScheduledAuditResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func deleteScheduledAuditAsync(input: IotModel.DeleteScheduledAuditRequest, completion: @escaping (HTTPResult<IotModel.DeleteScheduledAuditResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteScheduledAudit.rawValue,
                    target: target)

        let requestInput = DeleteScheduledAuditOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/audit/scheduledaudits/{scheduledAuditName}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteScheduledAudit operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteScheduledAuditRequest object being passed to this operation.
     - Returns: The DeleteScheduledAuditResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func deleteScheduledAuditSync(input: IotModel.DeleteScheduledAuditRequest) throws -> IotModel.DeleteScheduledAuditResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteScheduledAudit.rawValue,
                    target: target)

        let requestInput = DeleteScheduledAuditOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/audit/scheduledaudits/{scheduledAuditName}",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteSecurityProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteSecurityProfileRequest object being passed to this operation.
         - completion: The DeleteSecurityProfileResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteSecurityProfileResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling, versionConflict.
     */
    public func deleteSecurityProfileAsync(input: IotModel.DeleteSecurityProfileRequest, completion: @escaping (HTTPResult<IotModel.DeleteSecurityProfileResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteSecurityProfile.rawValue,
                    target: target)

        let requestInput = DeleteSecurityProfileOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/security-profiles/{securityProfileName}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteSecurityProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteSecurityProfileRequest object being passed to this operation.
     - Returns: The DeleteSecurityProfileResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling, versionConflict.
     */
    public func deleteSecurityProfileSync(input: IotModel.DeleteSecurityProfileRequest) throws -> IotModel.DeleteSecurityProfileResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteSecurityProfile.rawValue,
                    target: target)

        let requestInput = DeleteSecurityProfileOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/security-profiles/{securityProfileName}",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteStream operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteStreamRequest object being passed to this operation.
         - completion: The DeleteStreamResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteStreamResponse
           object will be validated before being returned to caller.
           The possible errors are: deleteConflict, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func deleteStreamAsync(input: IotModel.DeleteStreamRequest, completion: @escaping (HTTPResult<IotModel.DeleteStreamResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteStream.rawValue,
                    target: target)

        let requestInput = DeleteStreamOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/streams/{streamId}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteStream operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteStreamRequest object being passed to this operation.
     - Returns: The DeleteStreamResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: deleteConflict, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func deleteStreamSync(input: IotModel.DeleteStreamRequest) throws -> IotModel.DeleteStreamResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteStream.rawValue,
                    target: target)

        let requestInput = DeleteStreamOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/streams/{streamId}",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteThing operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteThingRequest object being passed to this operation.
         - completion: The DeleteThingResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteThingResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized, versionConflict.
     */
    public func deleteThingAsync(input: IotModel.DeleteThingRequest, completion: @escaping (HTTPResult<IotModel.DeleteThingResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteThing.rawValue,
                    target: target)

        let requestInput = DeleteThingOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/things/{thingName}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteThing operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteThingRequest object being passed to this operation.
     - Returns: The DeleteThingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized, versionConflict.
     */
    public func deleteThingSync(input: IotModel.DeleteThingRequest) throws -> IotModel.DeleteThingResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteThing.rawValue,
                    target: target)

        let requestInput = DeleteThingOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/things/{thingName}",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteThingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteThingGroupRequest object being passed to this operation.
         - completion: The DeleteThingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteThingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling, versionConflict.
     */
    public func deleteThingGroupAsync(input: IotModel.DeleteThingGroupRequest, completion: @escaping (HTTPResult<IotModel.DeleteThingGroupResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteThingGroup.rawValue,
                    target: target)

        let requestInput = DeleteThingGroupOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/thing-groups/{thingGroupName}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteThingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteThingGroupRequest object being passed to this operation.
     - Returns: The DeleteThingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling, versionConflict.
     */
    public func deleteThingGroupSync(input: IotModel.DeleteThingGroupRequest) throws -> IotModel.DeleteThingGroupResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteThingGroup.rawValue,
                    target: target)

        let requestInput = DeleteThingGroupOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/thing-groups/{thingGroupName}",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteThingType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteThingTypeRequest object being passed to this operation.
         - completion: The DeleteThingTypeResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteThingTypeResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func deleteThingTypeAsync(input: IotModel.DeleteThingTypeRequest, completion: @escaping (HTTPResult<IotModel.DeleteThingTypeResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteThingType.rawValue,
                    target: target)

        let requestInput = DeleteThingTypeOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/thing-types/{thingTypeName}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteThingType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteThingTypeRequest object being passed to this operation.
     - Returns: The DeleteThingTypeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func deleteThingTypeSync(input: IotModel.DeleteThingTypeRequest) throws -> IotModel.DeleteThingTypeResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteThingType.rawValue,
                    target: target)

        let requestInput = DeleteThingTypeOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/thing-types/{thingTypeName}",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteTopicRule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTopicRuleRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: conflictingResourceUpdate, internal, invalidRequest, serviceUnavailable, unauthorized.
     */
    public func deleteTopicRuleAsync(input: IotModel.DeleteTopicRuleRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteTopicRule.rawValue,
                    target: target)

        let requestInput = DeleteTopicRuleOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/rules/{ruleName}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteTopicRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTopicRuleRequest object being passed to this operation.
     - Throws: conflictingResourceUpdate, internal, invalidRequest, serviceUnavailable, unauthorized.
     */
    public func deleteTopicRuleSync(input: IotModel.DeleteTopicRuleRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteTopicRule.rawValue,
                    target: target)

        let requestInput = DeleteTopicRuleOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/rules/{ruleName}",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteV2LoggingLevel operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteV2LoggingLevelRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internal, invalidRequest, serviceUnavailable.
     */
    public func deleteV2LoggingLevelAsync(input: IotModel.DeleteV2LoggingLevelRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteV2LoggingLevel.rawValue,
                    target: target)

        let requestInput = DeleteV2LoggingLevelOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/v2LoggingLevel",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteV2LoggingLevel operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteV2LoggingLevelRequest object being passed to this operation.
     - Throws: internal, invalidRequest, serviceUnavailable.
     */
    public func deleteV2LoggingLevelSync(input: IotModel.DeleteV2LoggingLevelRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deleteV2LoggingLevel.rawValue,
                    target: target)

        let requestInput = DeleteV2LoggingLevelOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/v2LoggingLevel",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeprecateThingType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeprecateThingTypeRequest object being passed to this operation.
         - completion: The DeprecateThingTypeResponse object or an error will be passed to this 
           callback when the operation is complete. The DeprecateThingTypeResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func deprecateThingTypeAsync(input: IotModel.DeprecateThingTypeRequest, completion: @escaping (HTTPResult<IotModel.DeprecateThingTypeResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deprecateThingType.rawValue,
                    target: target)

        let requestInput = DeprecateThingTypeOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/thing-types/{thingTypeName}/deprecate",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeprecateThingType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeprecateThingTypeRequest object being passed to this operation.
     - Returns: The DeprecateThingTypeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func deprecateThingTypeSync(input: IotModel.DeprecateThingTypeRequest) throws -> IotModel.DeprecateThingTypeResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.deprecateThingType.rawValue,
                    target: target)

        let requestInput = DeprecateThingTypeOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/thing-types/{thingTypeName}/deprecate",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeAccountAuditConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAccountAuditConfigurationRequest object being passed to this operation.
         - completion: The DescribeAccountAuditConfigurationResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeAccountAuditConfigurationResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, throttling.
     */
    public func describeAccountAuditConfigurationAsync(input: IotModel.DescribeAccountAuditConfigurationRequest, completion: @escaping (HTTPResult<IotModel.DescribeAccountAuditConfigurationResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeAccountAuditConfiguration.rawValue,
                    target: target)

        let requestInput = DescribeAccountAuditConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/audit/configuration",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeAccountAuditConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAccountAuditConfigurationRequest object being passed to this operation.
     - Returns: The DescribeAccountAuditConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, throttling.
     */
    public func describeAccountAuditConfigurationSync(input: IotModel.DescribeAccountAuditConfigurationRequest) throws -> IotModel.DescribeAccountAuditConfigurationResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeAccountAuditConfiguration.rawValue,
                    target: target)

        let requestInput = DescribeAccountAuditConfigurationOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/audit/configuration",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeAuditFinding operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAuditFindingRequest object being passed to this operation.
         - completion: The DescribeAuditFindingResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeAuditFindingResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func describeAuditFindingAsync(input: IotModel.DescribeAuditFindingRequest, completion: @escaping (HTTPResult<IotModel.DescribeAuditFindingResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeAuditFinding.rawValue,
                    target: target)

        let requestInput = DescribeAuditFindingOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/audit/findings/{findingId}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeAuditFinding operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAuditFindingRequest object being passed to this operation.
     - Returns: The DescribeAuditFindingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func describeAuditFindingSync(input: IotModel.DescribeAuditFindingRequest) throws -> IotModel.DescribeAuditFindingResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeAuditFinding.rawValue,
                    target: target)

        let requestInput = DescribeAuditFindingOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/audit/findings/{findingId}",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeAuditMitigationActionsTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAuditMitigationActionsTaskRequest object being passed to this operation.
         - completion: The DescribeAuditMitigationActionsTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeAuditMitigationActionsTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func describeAuditMitigationActionsTaskAsync(input: IotModel.DescribeAuditMitigationActionsTaskRequest, completion: @escaping (HTTPResult<IotModel.DescribeAuditMitigationActionsTaskResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeAuditMitigationActionsTask.rawValue,
                    target: target)

        let requestInput = DescribeAuditMitigationActionsTaskOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/audit/mitigationactions/tasks/{taskId}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeAuditMitigationActionsTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAuditMitigationActionsTaskRequest object being passed to this operation.
     - Returns: The DescribeAuditMitigationActionsTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func describeAuditMitigationActionsTaskSync(input: IotModel.DescribeAuditMitigationActionsTaskRequest) throws -> IotModel.DescribeAuditMitigationActionsTaskResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeAuditMitigationActionsTask.rawValue,
                    target: target)

        let requestInput = DescribeAuditMitigationActionsTaskOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/audit/mitigationactions/tasks/{taskId}",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeAuditTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAuditTaskRequest object being passed to this operation.
         - completion: The DescribeAuditTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeAuditTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func describeAuditTaskAsync(input: IotModel.DescribeAuditTaskRequest, completion: @escaping (HTTPResult<IotModel.DescribeAuditTaskResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeAuditTask.rawValue,
                    target: target)

        let requestInput = DescribeAuditTaskOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/audit/tasks/{taskId}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeAuditTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAuditTaskRequest object being passed to this operation.
     - Returns: The DescribeAuditTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func describeAuditTaskSync(input: IotModel.DescribeAuditTaskRequest) throws -> IotModel.DescribeAuditTaskResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeAuditTask.rawValue,
                    target: target)

        let requestInput = DescribeAuditTaskOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/audit/tasks/{taskId}",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeAuthorizer operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAuthorizerRequest object being passed to this operation.
         - completion: The DescribeAuthorizerResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeAuthorizerResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func describeAuthorizerAsync(input: IotModel.DescribeAuthorizerRequest, completion: @escaping (HTTPResult<IotModel.DescribeAuthorizerResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeAuthorizer.rawValue,
                    target: target)

        let requestInput = DescribeAuthorizerOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/authorizer/{authorizerName}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeAuthorizer operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAuthorizerRequest object being passed to this operation.
     - Returns: The DescribeAuthorizerResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func describeAuthorizerSync(input: IotModel.DescribeAuthorizerRequest) throws -> IotModel.DescribeAuthorizerResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeAuthorizer.rawValue,
                    target: target)

        let requestInput = DescribeAuthorizerOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/authorizer/{authorizerName}",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeBillingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeBillingGroupRequest object being passed to this operation.
         - completion: The DescribeBillingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeBillingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func describeBillingGroupAsync(input: IotModel.DescribeBillingGroupRequest, completion: @escaping (HTTPResult<IotModel.DescribeBillingGroupResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeBillingGroup.rawValue,
                    target: target)

        let requestInput = DescribeBillingGroupOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/billing-groups/{billingGroupName}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeBillingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeBillingGroupRequest object being passed to this operation.
     - Returns: The DescribeBillingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func describeBillingGroupSync(input: IotModel.DescribeBillingGroupRequest) throws -> IotModel.DescribeBillingGroupResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeBillingGroup.rawValue,
                    target: target)

        let requestInput = DescribeBillingGroupOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/billing-groups/{billingGroupName}",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeCACertificate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCACertificateRequest object being passed to this operation.
         - completion: The DescribeCACertificateResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeCACertificateResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func describeCACertificateAsync(input: IotModel.DescribeCACertificateRequest, completion: @escaping (HTTPResult<IotModel.DescribeCACertificateResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeCACertificate.rawValue,
                    target: target)

        let requestInput = DescribeCACertificateOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/cacertificate/{caCertificateId}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeCACertificate operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCACertificateRequest object being passed to this operation.
     - Returns: The DescribeCACertificateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func describeCACertificateSync(input: IotModel.DescribeCACertificateRequest) throws -> IotModel.DescribeCACertificateResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeCACertificate.rawValue,
                    target: target)

        let requestInput = DescribeCACertificateOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/cacertificate/{caCertificateId}",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeCertificate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCertificateRequest object being passed to this operation.
         - completion: The DescribeCertificateResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeCertificateResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func describeCertificateAsync(input: IotModel.DescribeCertificateRequest, completion: @escaping (HTTPResult<IotModel.DescribeCertificateResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeCertificate.rawValue,
                    target: target)

        let requestInput = DescribeCertificateOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/certificates/{certificateId}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeCertificate operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCertificateRequest object being passed to this operation.
     - Returns: The DescribeCertificateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func describeCertificateSync(input: IotModel.DescribeCertificateRequest) throws -> IotModel.DescribeCertificateResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeCertificate.rawValue,
                    target: target)

        let requestInput = DescribeCertificateOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/certificates/{certificateId}",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeDefaultAuthorizer operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDefaultAuthorizerRequest object being passed to this operation.
         - completion: The DescribeDefaultAuthorizerResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeDefaultAuthorizerResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func describeDefaultAuthorizerAsync(input: IotModel.DescribeDefaultAuthorizerRequest, completion: @escaping (HTTPResult<IotModel.DescribeDefaultAuthorizerResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeDefaultAuthorizer.rawValue,
                    target: target)

        let requestInput = DescribeDefaultAuthorizerOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/default-authorizer",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeDefaultAuthorizer operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDefaultAuthorizerRequest object being passed to this operation.
     - Returns: The DescribeDefaultAuthorizerResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func describeDefaultAuthorizerSync(input: IotModel.DescribeDefaultAuthorizerRequest) throws -> IotModel.DescribeDefaultAuthorizerResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeDefaultAuthorizer.rawValue,
                    target: target)

        let requestInput = DescribeDefaultAuthorizerOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/default-authorizer",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEndpointRequest object being passed to this operation.
         - completion: The DescribeEndpointResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeEndpointResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling, unauthorized.
     */
    public func describeEndpointAsync(input: IotModel.DescribeEndpointRequest, completion: @escaping (HTTPResult<IotModel.DescribeEndpointResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeEndpoint.rawValue,
                    target: target)

        let requestInput = DescribeEndpointOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/endpoint",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEndpointRequest object being passed to this operation.
     - Returns: The DescribeEndpointResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling, unauthorized.
     */
    public func describeEndpointSync(input: IotModel.DescribeEndpointRequest) throws -> IotModel.DescribeEndpointResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeEndpoint.rawValue,
                    target: target)

        let requestInput = DescribeEndpointOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/endpoint",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeEventConfigurations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEventConfigurationsRequest object being passed to this operation.
         - completion: The DescribeEventConfigurationsResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeEventConfigurationsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, throttling.
     */
    public func describeEventConfigurationsAsync(input: IotModel.DescribeEventConfigurationsRequest, completion: @escaping (HTTPResult<IotModel.DescribeEventConfigurationsResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeEventConfigurations.rawValue,
                    target: target)

        let requestInput = DescribeEventConfigurationsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/event-configurations",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeEventConfigurations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEventConfigurationsRequest object being passed to this operation.
     - Returns: The DescribeEventConfigurationsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, throttling.
     */
    public func describeEventConfigurationsSync(input: IotModel.DescribeEventConfigurationsRequest) throws -> IotModel.DescribeEventConfigurationsResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeEventConfigurations.rawValue,
                    target: target)

        let requestInput = DescribeEventConfigurationsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/event-configurations",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeIndex operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeIndexRequest object being passed to this operation.
         - completion: The DescribeIndexResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeIndexResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func describeIndexAsync(input: IotModel.DescribeIndexRequest, completion: @escaping (HTTPResult<IotModel.DescribeIndexResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeIndex.rawValue,
                    target: target)

        let requestInput = DescribeIndexOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/indices/{indexName}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeIndex operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeIndexRequest object being passed to this operation.
     - Returns: The DescribeIndexResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func describeIndexSync(input: IotModel.DescribeIndexRequest) throws -> IotModel.DescribeIndexResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeIndex.rawValue,
                    target: target)

        let requestInput = DescribeIndexOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/indices/{indexName}",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeJob operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeJobRequest object being passed to this operation.
         - completion: The DescribeJobResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeJobResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    public func describeJobAsync(input: IotModel.DescribeJobRequest, completion: @escaping (HTTPResult<IotModel.DescribeJobResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeJob.rawValue,
                    target: target)

        let requestInput = DescribeJobOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/jobs/{jobId}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeJob operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeJobRequest object being passed to this operation.
     - Returns: The DescribeJobResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    public func describeJobSync(input: IotModel.DescribeJobRequest) throws -> IotModel.DescribeJobResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeJob.rawValue,
                    target: target)

        let requestInput = DescribeJobOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/jobs/{jobId}",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeJobExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeJobExecutionRequest object being passed to this operation.
         - completion: The DescribeJobExecutionResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeJobExecutionResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    public func describeJobExecutionAsync(input: IotModel.DescribeJobExecutionRequest, completion: @escaping (HTTPResult<IotModel.DescribeJobExecutionResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeJobExecution.rawValue,
                    target: target)

        let requestInput = DescribeJobExecutionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/things/{thingName}/jobs/{jobId}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeJobExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeJobExecutionRequest object being passed to this operation.
     - Returns: The DescribeJobExecutionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    public func describeJobExecutionSync(input: IotModel.DescribeJobExecutionRequest) throws -> IotModel.DescribeJobExecutionResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeJobExecution.rawValue,
                    target: target)

        let requestInput = DescribeJobExecutionOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/things/{thingName}/jobs/{jobId}",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeMitigationAction operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeMitigationActionRequest object being passed to this operation.
         - completion: The DescribeMitigationActionResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeMitigationActionResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func describeMitigationActionAsync(input: IotModel.DescribeMitigationActionRequest, completion: @escaping (HTTPResult<IotModel.DescribeMitigationActionResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeMitigationAction.rawValue,
                    target: target)

        let requestInput = DescribeMitigationActionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/mitigationactions/actions/{actionName}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeMitigationAction operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeMitigationActionRequest object being passed to this operation.
     - Returns: The DescribeMitigationActionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func describeMitigationActionSync(input: IotModel.DescribeMitigationActionRequest) throws -> IotModel.DescribeMitigationActionResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeMitigationAction.rawValue,
                    target: target)

        let requestInput = DescribeMitigationActionOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/mitigationactions/actions/{actionName}",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeRoleAlias operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeRoleAliasRequest object being passed to this operation.
         - completion: The DescribeRoleAliasResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeRoleAliasResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func describeRoleAliasAsync(input: IotModel.DescribeRoleAliasRequest, completion: @escaping (HTTPResult<IotModel.DescribeRoleAliasResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeRoleAlias.rawValue,
                    target: target)

        let requestInput = DescribeRoleAliasOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/role-aliases/{roleAlias}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeRoleAlias operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeRoleAliasRequest object being passed to this operation.
     - Returns: The DescribeRoleAliasResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func describeRoleAliasSync(input: IotModel.DescribeRoleAliasRequest) throws -> IotModel.DescribeRoleAliasResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeRoleAlias.rawValue,
                    target: target)

        let requestInput = DescribeRoleAliasOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/role-aliases/{roleAlias}",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeScheduledAudit operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeScheduledAuditRequest object being passed to this operation.
         - completion: The DescribeScheduledAuditResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeScheduledAuditResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func describeScheduledAuditAsync(input: IotModel.DescribeScheduledAuditRequest, completion: @escaping (HTTPResult<IotModel.DescribeScheduledAuditResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeScheduledAudit.rawValue,
                    target: target)

        let requestInput = DescribeScheduledAuditOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/audit/scheduledaudits/{scheduledAuditName}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeScheduledAudit operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeScheduledAuditRequest object being passed to this operation.
     - Returns: The DescribeScheduledAuditResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func describeScheduledAuditSync(input: IotModel.DescribeScheduledAuditRequest) throws -> IotModel.DescribeScheduledAuditResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeScheduledAudit.rawValue,
                    target: target)

        let requestInput = DescribeScheduledAuditOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/audit/scheduledaudits/{scheduledAuditName}",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeSecurityProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSecurityProfileRequest object being passed to this operation.
         - completion: The DescribeSecurityProfileResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeSecurityProfileResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func describeSecurityProfileAsync(input: IotModel.DescribeSecurityProfileRequest, completion: @escaping (HTTPResult<IotModel.DescribeSecurityProfileResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeSecurityProfile.rawValue,
                    target: target)

        let requestInput = DescribeSecurityProfileOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/security-profiles/{securityProfileName}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeSecurityProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSecurityProfileRequest object being passed to this operation.
     - Returns: The DescribeSecurityProfileResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func describeSecurityProfileSync(input: IotModel.DescribeSecurityProfileRequest) throws -> IotModel.DescribeSecurityProfileResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeSecurityProfile.rawValue,
                    target: target)

        let requestInput = DescribeSecurityProfileOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/security-profiles/{securityProfileName}",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeStream operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStreamRequest object being passed to this operation.
         - completion: The DescribeStreamResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeStreamResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func describeStreamAsync(input: IotModel.DescribeStreamRequest, completion: @escaping (HTTPResult<IotModel.DescribeStreamResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeStream.rawValue,
                    target: target)

        let requestInput = DescribeStreamOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/streams/{streamId}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeStream operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStreamRequest object being passed to this operation.
     - Returns: The DescribeStreamResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func describeStreamSync(input: IotModel.DescribeStreamRequest) throws -> IotModel.DescribeStreamResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeStream.rawValue,
                    target: target)

        let requestInput = DescribeStreamOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/streams/{streamId}",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeThing operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeThingRequest object being passed to this operation.
         - completion: The DescribeThingResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeThingResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func describeThingAsync(input: IotModel.DescribeThingRequest, completion: @escaping (HTTPResult<IotModel.DescribeThingResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeThing.rawValue,
                    target: target)

        let requestInput = DescribeThingOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/things/{thingName}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeThing operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeThingRequest object being passed to this operation.
     - Returns: The DescribeThingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func describeThingSync(input: IotModel.DescribeThingRequest) throws -> IotModel.DescribeThingResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeThing.rawValue,
                    target: target)

        let requestInput = DescribeThingOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/things/{thingName}",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeThingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeThingGroupRequest object being passed to this operation.
         - completion: The DescribeThingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeThingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func describeThingGroupAsync(input: IotModel.DescribeThingGroupRequest, completion: @escaping (HTTPResult<IotModel.DescribeThingGroupResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeThingGroup.rawValue,
                    target: target)

        let requestInput = DescribeThingGroupOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/thing-groups/{thingGroupName}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeThingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeThingGroupRequest object being passed to this operation.
     - Returns: The DescribeThingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func describeThingGroupSync(input: IotModel.DescribeThingGroupRequest) throws -> IotModel.DescribeThingGroupResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeThingGroup.rawValue,
                    target: target)

        let requestInput = DescribeThingGroupOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/thing-groups/{thingGroupName}",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeThingRegistrationTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeThingRegistrationTaskRequest object being passed to this operation.
         - completion: The DescribeThingRegistrationTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeThingRegistrationTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling, unauthorized.
     */
    public func describeThingRegistrationTaskAsync(input: IotModel.DescribeThingRegistrationTaskRequest, completion: @escaping (HTTPResult<IotModel.DescribeThingRegistrationTaskResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeThingRegistrationTask.rawValue,
                    target: target)

        let requestInput = DescribeThingRegistrationTaskOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/thing-registration-tasks/{taskId}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeThingRegistrationTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeThingRegistrationTaskRequest object being passed to this operation.
     - Returns: The DescribeThingRegistrationTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling, unauthorized.
     */
    public func describeThingRegistrationTaskSync(input: IotModel.DescribeThingRegistrationTaskRequest) throws -> IotModel.DescribeThingRegistrationTaskResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeThingRegistrationTask.rawValue,
                    target: target)

        let requestInput = DescribeThingRegistrationTaskOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/thing-registration-tasks/{taskId}",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeThingType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeThingTypeRequest object being passed to this operation.
         - completion: The DescribeThingTypeResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeThingTypeResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func describeThingTypeAsync(input: IotModel.DescribeThingTypeRequest, completion: @escaping (HTTPResult<IotModel.DescribeThingTypeResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeThingType.rawValue,
                    target: target)

        let requestInput = DescribeThingTypeOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/thing-types/{thingTypeName}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeThingType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeThingTypeRequest object being passed to this operation.
     - Returns: The DescribeThingTypeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func describeThingTypeSync(input: IotModel.DescribeThingTypeRequest) throws -> IotModel.DescribeThingTypeResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.describeThingType.rawValue,
                    target: target)

        let requestInput = DescribeThingTypeOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/thing-types/{thingTypeName}",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DetachPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachPolicyRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, serviceUnavailable, throttling, unauthorized.
     */
    public func detachPolicyAsync(input: IotModel.DetachPolicyRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.detachPolicy.rawValue,
                    target: target)

        let requestInput = DetachPolicyOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/target-policies/{policyName}",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DetachPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachPolicyRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, limitExceeded, serviceUnavailable, throttling, unauthorized.
     */
    public func detachPolicySync(input: IotModel.DetachPolicyRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.detachPolicy.rawValue,
                    target: target)

        let requestInput = DetachPolicyOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/target-policies/{policyName}",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DetachPrincipalPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachPrincipalPolicyRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func detachPrincipalPolicyAsync(input: IotModel.DetachPrincipalPolicyRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.detachPrincipalPolicy.rawValue,
                    target: target)

        let requestInput = DetachPrincipalPolicyOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/principal-policies/{policyName}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DetachPrincipalPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachPrincipalPolicyRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func detachPrincipalPolicySync(input: IotModel.DetachPrincipalPolicyRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.detachPrincipalPolicy.rawValue,
                    target: target)

        let requestInput = DetachPrincipalPolicyOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/principal-policies/{policyName}",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DetachSecurityProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachSecurityProfileRequest object being passed to this operation.
         - completion: The DetachSecurityProfileResponse object or an error will be passed to this 
           callback when the operation is complete. The DetachSecurityProfileResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func detachSecurityProfileAsync(input: IotModel.DetachSecurityProfileRequest, completion: @escaping (HTTPResult<IotModel.DetachSecurityProfileResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.detachSecurityProfile.rawValue,
                    target: target)

        let requestInput = DetachSecurityProfileOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/security-profiles/{securityProfileName}/targets",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DetachSecurityProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachSecurityProfileRequest object being passed to this operation.
     - Returns: The DetachSecurityProfileResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func detachSecurityProfileSync(input: IotModel.DetachSecurityProfileRequest) throws -> IotModel.DetachSecurityProfileResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.detachSecurityProfile.rawValue,
                    target: target)

        let requestInput = DetachSecurityProfileOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/security-profiles/{securityProfileName}/targets",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DetachThingPrincipal operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachThingPrincipalRequest object being passed to this operation.
         - completion: The DetachThingPrincipalResponse object or an error will be passed to this 
           callback when the operation is complete. The DetachThingPrincipalResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func detachThingPrincipalAsync(input: IotModel.DetachThingPrincipalRequest, completion: @escaping (HTTPResult<IotModel.DetachThingPrincipalResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.detachThingPrincipal.rawValue,
                    target: target)

        let requestInput = DetachThingPrincipalOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/things/{thingName}/principals",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DetachThingPrincipal operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachThingPrincipalRequest object being passed to this operation.
     - Returns: The DetachThingPrincipalResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func detachThingPrincipalSync(input: IotModel.DetachThingPrincipalRequest) throws -> IotModel.DetachThingPrincipalResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.detachThingPrincipal.rawValue,
                    target: target)

        let requestInput = DetachThingPrincipalOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/things/{thingName}/principals",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DisableTopicRule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableTopicRuleRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: conflictingResourceUpdate, internal, invalidRequest, serviceUnavailable, unauthorized.
     */
    public func disableTopicRuleAsync(input: IotModel.DisableTopicRuleRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.disableTopicRule.rawValue,
                    target: target)

        let requestInput = DisableTopicRuleOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/rules/{ruleName}/disable",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DisableTopicRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableTopicRuleRequest object being passed to this operation.
     - Throws: conflictingResourceUpdate, internal, invalidRequest, serviceUnavailable, unauthorized.
     */
    public func disableTopicRuleSync(input: IotModel.DisableTopicRuleRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.disableTopicRule.rawValue,
                    target: target)

        let requestInput = DisableTopicRuleOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/rules/{ruleName}/disable",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the EnableTopicRule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableTopicRuleRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: conflictingResourceUpdate, internal, invalidRequest, serviceUnavailable, unauthorized.
     */
    public func enableTopicRuleAsync(input: IotModel.EnableTopicRuleRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.enableTopicRule.rawValue,
                    target: target)

        let requestInput = EnableTopicRuleOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/rules/{ruleName}/enable",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the EnableTopicRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableTopicRuleRequest object being passed to this operation.
     - Throws: conflictingResourceUpdate, internal, invalidRequest, serviceUnavailable, unauthorized.
     */
    public func enableTopicRuleSync(input: IotModel.EnableTopicRuleRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.enableTopicRule.rawValue,
                    target: target)

        let requestInput = EnableTopicRuleOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/rules/{ruleName}/enable",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetEffectivePolicies operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetEffectivePoliciesRequest object being passed to this operation.
         - completion: The GetEffectivePoliciesResponse object or an error will be passed to this 
           callback when the operation is complete. The GetEffectivePoliciesResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func getEffectivePoliciesAsync(input: IotModel.GetEffectivePoliciesRequest, completion: @escaping (HTTPResult<IotModel.GetEffectivePoliciesResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.getEffectivePolicies.rawValue,
                    target: target)

        let requestInput = GetEffectivePoliciesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/effective-policies",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetEffectivePolicies operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetEffectivePoliciesRequest object being passed to this operation.
     - Returns: The GetEffectivePoliciesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func getEffectivePoliciesSync(input: IotModel.GetEffectivePoliciesRequest) throws -> IotModel.GetEffectivePoliciesResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.getEffectivePolicies.rawValue,
                    target: target)

        let requestInput = GetEffectivePoliciesOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/effective-policies",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetIndexingConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetIndexingConfigurationRequest object being passed to this operation.
         - completion: The GetIndexingConfigurationResponse object or an error will be passed to this 
           callback when the operation is complete. The GetIndexingConfigurationResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func getIndexingConfigurationAsync(input: IotModel.GetIndexingConfigurationRequest, completion: @escaping (HTTPResult<IotModel.GetIndexingConfigurationResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.getIndexingConfiguration.rawValue,
                    target: target)

        let requestInput = GetIndexingConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/indexing/config",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetIndexingConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetIndexingConfigurationRequest object being passed to this operation.
     - Returns: The GetIndexingConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func getIndexingConfigurationSync(input: IotModel.GetIndexingConfigurationRequest) throws -> IotModel.GetIndexingConfigurationResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.getIndexingConfiguration.rawValue,
                    target: target)

        let requestInput = GetIndexingConfigurationOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/indexing/config",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetJobDocument operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetJobDocumentRequest object being passed to this operation.
         - completion: The GetJobDocumentResponse object or an error will be passed to this 
           callback when the operation is complete. The GetJobDocumentResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    public func getJobDocumentAsync(input: IotModel.GetJobDocumentRequest, completion: @escaping (HTTPResult<IotModel.GetJobDocumentResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.getJobDocument.rawValue,
                    target: target)

        let requestInput = GetJobDocumentOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/jobs/{jobId}/job-document",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetJobDocument operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetJobDocumentRequest object being passed to this operation.
     - Returns: The GetJobDocumentResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    public func getJobDocumentSync(input: IotModel.GetJobDocumentRequest) throws -> IotModel.GetJobDocumentResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.getJobDocument.rawValue,
                    target: target)

        let requestInput = GetJobDocumentOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/jobs/{jobId}/job-document",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetLoggingOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetLoggingOptionsRequest object being passed to this operation.
         - completion: The GetLoggingOptionsResponse object or an error will be passed to this 
           callback when the operation is complete. The GetLoggingOptionsResponse
           object will be validated before being returned to caller.
           The possible errors are: internal, invalidRequest, serviceUnavailable.
     */
    public func getLoggingOptionsAsync(input: IotModel.GetLoggingOptionsRequest, completion: @escaping (HTTPResult<IotModel.GetLoggingOptionsResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.getLoggingOptions.rawValue,
                    target: target)

        let requestInput = GetLoggingOptionsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/loggingOptions",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetLoggingOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetLoggingOptionsRequest object being passed to this operation.
     - Returns: The GetLoggingOptionsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internal, invalidRequest, serviceUnavailable.
     */
    public func getLoggingOptionsSync(input: IotModel.GetLoggingOptionsRequest) throws -> IotModel.GetLoggingOptionsResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.getLoggingOptions.rawValue,
                    target: target)

        let requestInput = GetLoggingOptionsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/loggingOptions",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetOTAUpdate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetOTAUpdateRequest object being passed to this operation.
         - completion: The GetOTAUpdateResponse object or an error will be passed to this 
           callback when the operation is complete. The GetOTAUpdateResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func getOTAUpdateAsync(input: IotModel.GetOTAUpdateRequest, completion: @escaping (HTTPResult<IotModel.GetOTAUpdateResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.getOTAUpdate.rawValue,
                    target: target)

        let requestInput = GetOTAUpdateOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/otaUpdates/{otaUpdateId}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetOTAUpdate operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetOTAUpdateRequest object being passed to this operation.
     - Returns: The GetOTAUpdateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func getOTAUpdateSync(input: IotModel.GetOTAUpdateRequest) throws -> IotModel.GetOTAUpdateResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.getOTAUpdate.rawValue,
                    target: target)

        let requestInput = GetOTAUpdateOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/otaUpdates/{otaUpdateId}",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetPolicyRequest object being passed to this operation.
         - completion: The GetPolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The GetPolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func getPolicyAsync(input: IotModel.GetPolicyRequest, completion: @escaping (HTTPResult<IotModel.GetPolicyResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.getPolicy.rawValue,
                    target: target)

        let requestInput = GetPolicyOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/policies/{policyName}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPolicyRequest object being passed to this operation.
     - Returns: The GetPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func getPolicySync(input: IotModel.GetPolicyRequest) throws -> IotModel.GetPolicyResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.getPolicy.rawValue,
                    target: target)

        let requestInput = GetPolicyOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/policies/{policyName}",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetPolicyVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetPolicyVersionRequest object being passed to this operation.
         - completion: The GetPolicyVersionResponse object or an error will be passed to this 
           callback when the operation is complete. The GetPolicyVersionResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func getPolicyVersionAsync(input: IotModel.GetPolicyVersionRequest, completion: @escaping (HTTPResult<IotModel.GetPolicyVersionResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.getPolicyVersion.rawValue,
                    target: target)

        let requestInput = GetPolicyVersionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/policies/{policyName}/version/{policyVersionId}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetPolicyVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPolicyVersionRequest object being passed to this operation.
     - Returns: The GetPolicyVersionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func getPolicyVersionSync(input: IotModel.GetPolicyVersionRequest) throws -> IotModel.GetPolicyVersionResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.getPolicyVersion.rawValue,
                    target: target)

        let requestInput = GetPolicyVersionOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/policies/{policyName}/version/{policyVersionId}",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetRegistrationCode operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetRegistrationCodeRequest object being passed to this operation.
         - completion: The GetRegistrationCodeResponse object or an error will be passed to this 
           callback when the operation is complete. The GetRegistrationCodeResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func getRegistrationCodeAsync(input: IotModel.GetRegistrationCodeRequest, completion: @escaping (HTTPResult<IotModel.GetRegistrationCodeResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.getRegistrationCode.rawValue,
                    target: target)

        let requestInput = GetRegistrationCodeOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/registrationcode",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetRegistrationCode operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetRegistrationCodeRequest object being passed to this operation.
     - Returns: The GetRegistrationCodeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func getRegistrationCodeSync(input: IotModel.GetRegistrationCodeRequest) throws -> IotModel.GetRegistrationCodeResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.getRegistrationCode.rawValue,
                    target: target)

        let requestInput = GetRegistrationCodeOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/registrationcode",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetStatistics operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetStatisticsRequest object being passed to this operation.
         - completion: The GetStatisticsResponse object or an error will be passed to this 
           callback when the operation is complete. The GetStatisticsResponse
           object will be validated before being returned to caller.
           The possible errors are: indexNotReady, internalFailure, invalidAggregation, invalidQuery, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func getStatisticsAsync(input: IotModel.GetStatisticsRequest, completion: @escaping (HTTPResult<IotModel.GetStatisticsResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.getStatistics.rawValue,
                    target: target)

        let requestInput = GetStatisticsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/indices/statistics",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetStatistics operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetStatisticsRequest object being passed to this operation.
     - Returns: The GetStatisticsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: indexNotReady, internalFailure, invalidAggregation, invalidQuery, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func getStatisticsSync(input: IotModel.GetStatisticsRequest) throws -> IotModel.GetStatisticsResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.getStatistics.rawValue,
                    target: target)

        let requestInput = GetStatisticsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/indices/statistics",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetTopicRule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetTopicRuleRequest object being passed to this operation.
         - completion: The GetTopicRuleResponse object or an error will be passed to this 
           callback when the operation is complete. The GetTopicRuleResponse
           object will be validated before being returned to caller.
           The possible errors are: internal, invalidRequest, serviceUnavailable, unauthorized.
     */
    public func getTopicRuleAsync(input: IotModel.GetTopicRuleRequest, completion: @escaping (HTTPResult<IotModel.GetTopicRuleResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.getTopicRule.rawValue,
                    target: target)

        let requestInput = GetTopicRuleOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/rules/{ruleName}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetTopicRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTopicRuleRequest object being passed to this operation.
     - Returns: The GetTopicRuleResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internal, invalidRequest, serviceUnavailable, unauthorized.
     */
    public func getTopicRuleSync(input: IotModel.GetTopicRuleRequest) throws -> IotModel.GetTopicRuleResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.getTopicRule.rawValue,
                    target: target)

        let requestInput = GetTopicRuleOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/rules/{ruleName}",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetV2LoggingOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetV2LoggingOptionsRequest object being passed to this operation.
         - completion: The GetV2LoggingOptionsResponse object or an error will be passed to this 
           callback when the operation is complete. The GetV2LoggingOptionsResponse
           object will be validated before being returned to caller.
           The possible errors are: internal, notConfigured, serviceUnavailable.
     */
    public func getV2LoggingOptionsAsync(input: IotModel.GetV2LoggingOptionsRequest, completion: @escaping (HTTPResult<IotModel.GetV2LoggingOptionsResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.getV2LoggingOptions.rawValue,
                    target: target)

        let requestInput = GetV2LoggingOptionsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/v2LoggingOptions",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetV2LoggingOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetV2LoggingOptionsRequest object being passed to this operation.
     - Returns: The GetV2LoggingOptionsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internal, notConfigured, serviceUnavailable.
     */
    public func getV2LoggingOptionsSync(input: IotModel.GetV2LoggingOptionsRequest) throws -> IotModel.GetV2LoggingOptionsResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.getV2LoggingOptions.rawValue,
                    target: target)

        let requestInput = GetV2LoggingOptionsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/v2LoggingOptions",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListActiveViolations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListActiveViolationsRequest object being passed to this operation.
         - completion: The ListActiveViolationsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListActiveViolationsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func listActiveViolationsAsync(input: IotModel.ListActiveViolationsRequest, completion: @escaping (HTTPResult<IotModel.ListActiveViolationsResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listActiveViolations.rawValue,
                    target: target)

        let requestInput = ListActiveViolationsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/active-violations",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListActiveViolations operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListActiveViolationsRequest object being passed to this operation.
     - Returns: The ListActiveViolationsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func listActiveViolationsSync(input: IotModel.ListActiveViolationsRequest) throws -> IotModel.ListActiveViolationsResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listActiveViolations.rawValue,
                    target: target)

        let requestInput = ListActiveViolationsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/active-violations",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListAttachedPolicies operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListAttachedPoliciesRequest object being passed to this operation.
         - completion: The ListAttachedPoliciesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListAttachedPoliciesResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func listAttachedPoliciesAsync(input: IotModel.ListAttachedPoliciesRequest, completion: @escaping (HTTPResult<IotModel.ListAttachedPoliciesResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listAttachedPolicies.rawValue,
                    target: target)

        let requestInput = ListAttachedPoliciesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/attached-policies/{target}",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListAttachedPolicies operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListAttachedPoliciesRequest object being passed to this operation.
     - Returns: The ListAttachedPoliciesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func listAttachedPoliciesSync(input: IotModel.ListAttachedPoliciesRequest) throws -> IotModel.ListAttachedPoliciesResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listAttachedPolicies.rawValue,
                    target: target)

        let requestInput = ListAttachedPoliciesOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/attached-policies/{target}",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListAuditFindings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListAuditFindingsRequest object being passed to this operation.
         - completion: The ListAuditFindingsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListAuditFindingsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling.
     */
    public func listAuditFindingsAsync(input: IotModel.ListAuditFindingsRequest, completion: @escaping (HTTPResult<IotModel.ListAuditFindingsResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listAuditFindings.rawValue,
                    target: target)

        let requestInput = ListAuditFindingsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/audit/findings",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListAuditFindings operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListAuditFindingsRequest object being passed to this operation.
     - Returns: The ListAuditFindingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling.
     */
    public func listAuditFindingsSync(input: IotModel.ListAuditFindingsRequest) throws -> IotModel.ListAuditFindingsResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listAuditFindings.rawValue,
                    target: target)

        let requestInput = ListAuditFindingsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/audit/findings",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListAuditMitigationActionsExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListAuditMitigationActionsExecutionsRequest object being passed to this operation.
         - completion: The ListAuditMitigationActionsExecutionsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListAuditMitigationActionsExecutionsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling.
     */
    public func listAuditMitigationActionsExecutionsAsync(input: IotModel.ListAuditMitigationActionsExecutionsRequest, completion: @escaping (HTTPResult<IotModel.ListAuditMitigationActionsExecutionsResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listAuditMitigationActionsExecutions.rawValue,
                    target: target)

        let requestInput = ListAuditMitigationActionsExecutionsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/audit/mitigationactions/executions",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListAuditMitigationActionsExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListAuditMitigationActionsExecutionsRequest object being passed to this operation.
     - Returns: The ListAuditMitigationActionsExecutionsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling.
     */
    public func listAuditMitigationActionsExecutionsSync(input: IotModel.ListAuditMitigationActionsExecutionsRequest) throws -> IotModel.ListAuditMitigationActionsExecutionsResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listAuditMitigationActionsExecutions.rawValue,
                    target: target)

        let requestInput = ListAuditMitigationActionsExecutionsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/audit/mitigationactions/executions",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListAuditMitigationActionsTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListAuditMitigationActionsTasksRequest object being passed to this operation.
         - completion: The ListAuditMitigationActionsTasksResponse object or an error will be passed to this 
           callback when the operation is complete. The ListAuditMitigationActionsTasksResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling.
     */
    public func listAuditMitigationActionsTasksAsync(input: IotModel.ListAuditMitigationActionsTasksRequest, completion: @escaping (HTTPResult<IotModel.ListAuditMitigationActionsTasksResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listAuditMitigationActionsTasks.rawValue,
                    target: target)

        let requestInput = ListAuditMitigationActionsTasksOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/audit/mitigationactions/tasks",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListAuditMitigationActionsTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListAuditMitigationActionsTasksRequest object being passed to this operation.
     - Returns: The ListAuditMitigationActionsTasksResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling.
     */
    public func listAuditMitigationActionsTasksSync(input: IotModel.ListAuditMitigationActionsTasksRequest) throws -> IotModel.ListAuditMitigationActionsTasksResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listAuditMitigationActionsTasks.rawValue,
                    target: target)

        let requestInput = ListAuditMitigationActionsTasksOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/audit/mitigationactions/tasks",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListAuditTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListAuditTasksRequest object being passed to this operation.
         - completion: The ListAuditTasksResponse object or an error will be passed to this 
           callback when the operation is complete. The ListAuditTasksResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling.
     */
    public func listAuditTasksAsync(input: IotModel.ListAuditTasksRequest, completion: @escaping (HTTPResult<IotModel.ListAuditTasksResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listAuditTasks.rawValue,
                    target: target)

        let requestInput = ListAuditTasksOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/audit/tasks",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListAuditTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListAuditTasksRequest object being passed to this operation.
     - Returns: The ListAuditTasksResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling.
     */
    public func listAuditTasksSync(input: IotModel.ListAuditTasksRequest) throws -> IotModel.ListAuditTasksResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listAuditTasks.rawValue,
                    target: target)

        let requestInput = ListAuditTasksOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/audit/tasks",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListAuthorizers operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListAuthorizersRequest object being passed to this operation.
         - completion: The ListAuthorizersResponse object or an error will be passed to this 
           callback when the operation is complete. The ListAuthorizersResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func listAuthorizersAsync(input: IotModel.ListAuthorizersRequest, completion: @escaping (HTTPResult<IotModel.ListAuthorizersResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listAuthorizers.rawValue,
                    target: target)

        let requestInput = ListAuthorizersOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/authorizers/",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListAuthorizers operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListAuthorizersRequest object being passed to this operation.
     - Returns: The ListAuthorizersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func listAuthorizersSync(input: IotModel.ListAuthorizersRequest) throws -> IotModel.ListAuthorizersResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listAuthorizers.rawValue,
                    target: target)

        let requestInput = ListAuthorizersOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/authorizers/",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListBillingGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBillingGroupsRequest object being passed to this operation.
         - completion: The ListBillingGroupsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListBillingGroupsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func listBillingGroupsAsync(input: IotModel.ListBillingGroupsRequest, completion: @escaping (HTTPResult<IotModel.ListBillingGroupsResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listBillingGroups.rawValue,
                    target: target)

        let requestInput = ListBillingGroupsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/billing-groups",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListBillingGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBillingGroupsRequest object being passed to this operation.
     - Returns: The ListBillingGroupsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func listBillingGroupsSync(input: IotModel.ListBillingGroupsRequest) throws -> IotModel.ListBillingGroupsResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listBillingGroups.rawValue,
                    target: target)

        let requestInput = ListBillingGroupsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/billing-groups",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListCACertificates operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListCACertificatesRequest object being passed to this operation.
         - completion: The ListCACertificatesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListCACertificatesResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func listCACertificatesAsync(input: IotModel.ListCACertificatesRequest, completion: @escaping (HTTPResult<IotModel.ListCACertificatesResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listCACertificates.rawValue,
                    target: target)

        let requestInput = ListCACertificatesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/cacertificates",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListCACertificates operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListCACertificatesRequest object being passed to this operation.
     - Returns: The ListCACertificatesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func listCACertificatesSync(input: IotModel.ListCACertificatesRequest) throws -> IotModel.ListCACertificatesResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listCACertificates.rawValue,
                    target: target)

        let requestInput = ListCACertificatesOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/cacertificates",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListCertificates operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListCertificatesRequest object being passed to this operation.
         - completion: The ListCertificatesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListCertificatesResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func listCertificatesAsync(input: IotModel.ListCertificatesRequest, completion: @escaping (HTTPResult<IotModel.ListCertificatesResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listCertificates.rawValue,
                    target: target)

        let requestInput = ListCertificatesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/certificates",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListCertificates operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListCertificatesRequest object being passed to this operation.
     - Returns: The ListCertificatesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func listCertificatesSync(input: IotModel.ListCertificatesRequest) throws -> IotModel.ListCertificatesResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listCertificates.rawValue,
                    target: target)

        let requestInput = ListCertificatesOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/certificates",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListCertificatesByCA operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListCertificatesByCARequest object being passed to this operation.
         - completion: The ListCertificatesByCAResponse object or an error will be passed to this 
           callback when the operation is complete. The ListCertificatesByCAResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func listCertificatesByCAAsync(input: IotModel.ListCertificatesByCARequest, completion: @escaping (HTTPResult<IotModel.ListCertificatesByCAResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listCertificatesByCA.rawValue,
                    target: target)

        let requestInput = ListCertificatesByCAOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/certificates-by-ca/{caCertificateId}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListCertificatesByCA operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListCertificatesByCARequest object being passed to this operation.
     - Returns: The ListCertificatesByCAResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func listCertificatesByCASync(input: IotModel.ListCertificatesByCARequest) throws -> IotModel.ListCertificatesByCAResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listCertificatesByCA.rawValue,
                    target: target)

        let requestInput = ListCertificatesByCAOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/certificates-by-ca/{caCertificateId}",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListIndices operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListIndicesRequest object being passed to this operation.
         - completion: The ListIndicesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListIndicesResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func listIndicesAsync(input: IotModel.ListIndicesRequest, completion: @escaping (HTTPResult<IotModel.ListIndicesResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listIndices.rawValue,
                    target: target)

        let requestInput = ListIndicesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/indices",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListIndices operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListIndicesRequest object being passed to this operation.
     - Returns: The ListIndicesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func listIndicesSync(input: IotModel.ListIndicesRequest) throws -> IotModel.ListIndicesResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listIndices.rawValue,
                    target: target)

        let requestInput = ListIndicesOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/indices",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListJobExecutionsForJob operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListJobExecutionsForJobRequest object being passed to this operation.
         - completion: The ListJobExecutionsForJobResponse object or an error will be passed to this 
           callback when the operation is complete. The ListJobExecutionsForJobResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    public func listJobExecutionsForJobAsync(input: IotModel.ListJobExecutionsForJobRequest, completion: @escaping (HTTPResult<IotModel.ListJobExecutionsForJobResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listJobExecutionsForJob.rawValue,
                    target: target)

        let requestInput = ListJobExecutionsForJobOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/jobs/{jobId}/things",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListJobExecutionsForJob operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListJobExecutionsForJobRequest object being passed to this operation.
     - Returns: The ListJobExecutionsForJobResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    public func listJobExecutionsForJobSync(input: IotModel.ListJobExecutionsForJobRequest) throws -> IotModel.ListJobExecutionsForJobResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listJobExecutionsForJob.rawValue,
                    target: target)

        let requestInput = ListJobExecutionsForJobOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/jobs/{jobId}/things",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListJobExecutionsForThing operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListJobExecutionsForThingRequest object being passed to this operation.
         - completion: The ListJobExecutionsForThingResponse object or an error will be passed to this 
           callback when the operation is complete. The ListJobExecutionsForThingResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    public func listJobExecutionsForThingAsync(input: IotModel.ListJobExecutionsForThingRequest, completion: @escaping (HTTPResult<IotModel.ListJobExecutionsForThingResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listJobExecutionsForThing.rawValue,
                    target: target)

        let requestInput = ListJobExecutionsForThingOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/things/{thingName}/jobs",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListJobExecutionsForThing operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListJobExecutionsForThingRequest object being passed to this operation.
     - Returns: The ListJobExecutionsForThingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    public func listJobExecutionsForThingSync(input: IotModel.ListJobExecutionsForThingRequest) throws -> IotModel.ListJobExecutionsForThingResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listJobExecutionsForThing.rawValue,
                    target: target)

        let requestInput = ListJobExecutionsForThingOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/things/{thingName}/jobs",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListJobs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListJobsRequest object being passed to this operation.
         - completion: The ListJobsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListJobsResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    public func listJobsAsync(input: IotModel.ListJobsRequest, completion: @escaping (HTTPResult<IotModel.ListJobsResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listJobs.rawValue,
                    target: target)

        let requestInput = ListJobsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/jobs",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListJobs operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListJobsRequest object being passed to this operation.
     - Returns: The ListJobsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    public func listJobsSync(input: IotModel.ListJobsRequest) throws -> IotModel.ListJobsResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listJobs.rawValue,
                    target: target)

        let requestInput = ListJobsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/jobs",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListMitigationActions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListMitigationActionsRequest object being passed to this operation.
         - completion: The ListMitigationActionsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListMitigationActionsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling.
     */
    public func listMitigationActionsAsync(input: IotModel.ListMitigationActionsRequest, completion: @escaping (HTTPResult<IotModel.ListMitigationActionsResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listMitigationActions.rawValue,
                    target: target)

        let requestInput = ListMitigationActionsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/mitigationactions/actions",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListMitigationActions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListMitigationActionsRequest object being passed to this operation.
     - Returns: The ListMitigationActionsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling.
     */
    public func listMitigationActionsSync(input: IotModel.ListMitigationActionsRequest) throws -> IotModel.ListMitigationActionsResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listMitigationActions.rawValue,
                    target: target)

        let requestInput = ListMitigationActionsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/mitigationactions/actions",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListOTAUpdates operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListOTAUpdatesRequest object being passed to this operation.
         - completion: The ListOTAUpdatesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListOTAUpdatesResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func listOTAUpdatesAsync(input: IotModel.ListOTAUpdatesRequest, completion: @escaping (HTTPResult<IotModel.ListOTAUpdatesResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listOTAUpdates.rawValue,
                    target: target)

        let requestInput = ListOTAUpdatesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/otaUpdates",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListOTAUpdates operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListOTAUpdatesRequest object being passed to this operation.
     - Returns: The ListOTAUpdatesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func listOTAUpdatesSync(input: IotModel.ListOTAUpdatesRequest) throws -> IotModel.ListOTAUpdatesResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listOTAUpdates.rawValue,
                    target: target)

        let requestInput = ListOTAUpdatesOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/otaUpdates",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListOutgoingCertificates operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListOutgoingCertificatesRequest object being passed to this operation.
         - completion: The ListOutgoingCertificatesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListOutgoingCertificatesResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func listOutgoingCertificatesAsync(input: IotModel.ListOutgoingCertificatesRequest, completion: @escaping (HTTPResult<IotModel.ListOutgoingCertificatesResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listOutgoingCertificates.rawValue,
                    target: target)

        let requestInput = ListOutgoingCertificatesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/certificates-out-going",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListOutgoingCertificates operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListOutgoingCertificatesRequest object being passed to this operation.
     - Returns: The ListOutgoingCertificatesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func listOutgoingCertificatesSync(input: IotModel.ListOutgoingCertificatesRequest) throws -> IotModel.ListOutgoingCertificatesResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listOutgoingCertificates.rawValue,
                    target: target)

        let requestInput = ListOutgoingCertificatesOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/certificates-out-going",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListPolicies operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPoliciesRequest object being passed to this operation.
         - completion: The ListPoliciesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListPoliciesResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func listPoliciesAsync(input: IotModel.ListPoliciesRequest, completion: @escaping (HTTPResult<IotModel.ListPoliciesResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listPolicies.rawValue,
                    target: target)

        let requestInput = ListPoliciesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/policies",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListPolicies operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPoliciesRequest object being passed to this operation.
     - Returns: The ListPoliciesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func listPoliciesSync(input: IotModel.ListPoliciesRequest) throws -> IotModel.ListPoliciesResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listPolicies.rawValue,
                    target: target)

        let requestInput = ListPoliciesOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/policies",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListPolicyPrincipals operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPolicyPrincipalsRequest object being passed to this operation.
         - completion: The ListPolicyPrincipalsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListPolicyPrincipalsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func listPolicyPrincipalsAsync(input: IotModel.ListPolicyPrincipalsRequest, completion: @escaping (HTTPResult<IotModel.ListPolicyPrincipalsResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listPolicyPrincipals.rawValue,
                    target: target)

        let requestInput = ListPolicyPrincipalsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/policy-principals",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListPolicyPrincipals operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPolicyPrincipalsRequest object being passed to this operation.
     - Returns: The ListPolicyPrincipalsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func listPolicyPrincipalsSync(input: IotModel.ListPolicyPrincipalsRequest) throws -> IotModel.ListPolicyPrincipalsResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listPolicyPrincipals.rawValue,
                    target: target)

        let requestInput = ListPolicyPrincipalsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/policy-principals",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListPolicyVersions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPolicyVersionsRequest object being passed to this operation.
         - completion: The ListPolicyVersionsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListPolicyVersionsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func listPolicyVersionsAsync(input: IotModel.ListPolicyVersionsRequest, completion: @escaping (HTTPResult<IotModel.ListPolicyVersionsResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listPolicyVersions.rawValue,
                    target: target)

        let requestInput = ListPolicyVersionsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/policies/{policyName}/version",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListPolicyVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPolicyVersionsRequest object being passed to this operation.
     - Returns: The ListPolicyVersionsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func listPolicyVersionsSync(input: IotModel.ListPolicyVersionsRequest) throws -> IotModel.ListPolicyVersionsResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listPolicyVersions.rawValue,
                    target: target)

        let requestInput = ListPolicyVersionsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/policies/{policyName}/version",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListPrincipalPolicies operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPrincipalPoliciesRequest object being passed to this operation.
         - completion: The ListPrincipalPoliciesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListPrincipalPoliciesResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func listPrincipalPoliciesAsync(input: IotModel.ListPrincipalPoliciesRequest, completion: @escaping (HTTPResult<IotModel.ListPrincipalPoliciesResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listPrincipalPolicies.rawValue,
                    target: target)

        let requestInput = ListPrincipalPoliciesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/principal-policies",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListPrincipalPolicies operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPrincipalPoliciesRequest object being passed to this operation.
     - Returns: The ListPrincipalPoliciesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func listPrincipalPoliciesSync(input: IotModel.ListPrincipalPoliciesRequest) throws -> IotModel.ListPrincipalPoliciesResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listPrincipalPolicies.rawValue,
                    target: target)

        let requestInput = ListPrincipalPoliciesOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/principal-policies",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListPrincipalThings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPrincipalThingsRequest object being passed to this operation.
         - completion: The ListPrincipalThingsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListPrincipalThingsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func listPrincipalThingsAsync(input: IotModel.ListPrincipalThingsRequest, completion: @escaping (HTTPResult<IotModel.ListPrincipalThingsResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listPrincipalThings.rawValue,
                    target: target)

        let requestInput = ListPrincipalThingsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/principals/things",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListPrincipalThings operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPrincipalThingsRequest object being passed to this operation.
     - Returns: The ListPrincipalThingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func listPrincipalThingsSync(input: IotModel.ListPrincipalThingsRequest) throws -> IotModel.ListPrincipalThingsResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listPrincipalThings.rawValue,
                    target: target)

        let requestInput = ListPrincipalThingsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/principals/things",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListRoleAliases operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListRoleAliasesRequest object being passed to this operation.
         - completion: The ListRoleAliasesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListRoleAliasesResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func listRoleAliasesAsync(input: IotModel.ListRoleAliasesRequest, completion: @escaping (HTTPResult<IotModel.ListRoleAliasesResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listRoleAliases.rawValue,
                    target: target)

        let requestInput = ListRoleAliasesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/role-aliases",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListRoleAliases operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListRoleAliasesRequest object being passed to this operation.
     - Returns: The ListRoleAliasesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func listRoleAliasesSync(input: IotModel.ListRoleAliasesRequest) throws -> IotModel.ListRoleAliasesResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listRoleAliases.rawValue,
                    target: target)

        let requestInput = ListRoleAliasesOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/role-aliases",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListScheduledAudits operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListScheduledAuditsRequest object being passed to this operation.
         - completion: The ListScheduledAuditsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListScheduledAuditsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling.
     */
    public func listScheduledAuditsAsync(input: IotModel.ListScheduledAuditsRequest, completion: @escaping (HTTPResult<IotModel.ListScheduledAuditsResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listScheduledAudits.rawValue,
                    target: target)

        let requestInput = ListScheduledAuditsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/audit/scheduledaudits",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListScheduledAudits operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListScheduledAuditsRequest object being passed to this operation.
     - Returns: The ListScheduledAuditsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling.
     */
    public func listScheduledAuditsSync(input: IotModel.ListScheduledAuditsRequest) throws -> IotModel.ListScheduledAuditsResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listScheduledAudits.rawValue,
                    target: target)

        let requestInput = ListScheduledAuditsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/audit/scheduledaudits",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListSecurityProfiles operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSecurityProfilesRequest object being passed to this operation.
         - completion: The ListSecurityProfilesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListSecurityProfilesResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling.
     */
    public func listSecurityProfilesAsync(input: IotModel.ListSecurityProfilesRequest, completion: @escaping (HTTPResult<IotModel.ListSecurityProfilesResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listSecurityProfiles.rawValue,
                    target: target)

        let requestInput = ListSecurityProfilesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/security-profiles",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListSecurityProfiles operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSecurityProfilesRequest object being passed to this operation.
     - Returns: The ListSecurityProfilesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling.
     */
    public func listSecurityProfilesSync(input: IotModel.ListSecurityProfilesRequest) throws -> IotModel.ListSecurityProfilesResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listSecurityProfiles.rawValue,
                    target: target)

        let requestInput = ListSecurityProfilesOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/security-profiles",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListSecurityProfilesForTarget operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSecurityProfilesForTargetRequest object being passed to this operation.
         - completion: The ListSecurityProfilesForTargetResponse object or an error will be passed to this 
           callback when the operation is complete. The ListSecurityProfilesForTargetResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func listSecurityProfilesForTargetAsync(input: IotModel.ListSecurityProfilesForTargetRequest, completion: @escaping (HTTPResult<IotModel.ListSecurityProfilesForTargetResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listSecurityProfilesForTarget.rawValue,
                    target: target)

        let requestInput = ListSecurityProfilesForTargetOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/security-profiles-for-target",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListSecurityProfilesForTarget operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSecurityProfilesForTargetRequest object being passed to this operation.
     - Returns: The ListSecurityProfilesForTargetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func listSecurityProfilesForTargetSync(input: IotModel.ListSecurityProfilesForTargetRequest) throws -> IotModel.ListSecurityProfilesForTargetResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listSecurityProfilesForTarget.rawValue,
                    target: target)

        let requestInput = ListSecurityProfilesForTargetOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/security-profiles-for-target",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListStreams operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListStreamsRequest object being passed to this operation.
         - completion: The ListStreamsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListStreamsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func listStreamsAsync(input: IotModel.ListStreamsRequest, completion: @escaping (HTTPResult<IotModel.ListStreamsResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listStreams.rawValue,
                    target: target)

        let requestInput = ListStreamsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/streams",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListStreams operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListStreamsRequest object being passed to this operation.
     - Returns: The ListStreamsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func listStreamsSync(input: IotModel.ListStreamsRequest) throws -> IotModel.ListStreamsResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listStreams.rawValue,
                    target: target)

        let requestInput = ListStreamsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/streams",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
         - completion: The ListTagsForResourceResponse object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func listTagsForResourceAsync(input: IotModel.ListTagsForResourceRequest, completion: @escaping (HTTPResult<IotModel.ListTagsForResourceResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listTagsForResource.rawValue,
                    target: target)

        let requestInput = ListTagsForResourceOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/tags",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ListTagsForResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func listTagsForResourceSync(input: IotModel.ListTagsForResourceRequest) throws -> IotModel.ListTagsForResourceResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listTagsForResource.rawValue,
                    target: target)

        let requestInput = ListTagsForResourceOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/tags",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListTargetsForPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTargetsForPolicyRequest object being passed to this operation.
         - completion: The ListTargetsForPolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The ListTargetsForPolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func listTargetsForPolicyAsync(input: IotModel.ListTargetsForPolicyRequest, completion: @escaping (HTTPResult<IotModel.ListTargetsForPolicyResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listTargetsForPolicy.rawValue,
                    target: target)

        let requestInput = ListTargetsForPolicyOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/policy-targets/{policyName}",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListTargetsForPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTargetsForPolicyRequest object being passed to this operation.
     - Returns: The ListTargetsForPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func listTargetsForPolicySync(input: IotModel.ListTargetsForPolicyRequest) throws -> IotModel.ListTargetsForPolicyResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listTargetsForPolicy.rawValue,
                    target: target)

        let requestInput = ListTargetsForPolicyOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/policy-targets/{policyName}",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListTargetsForSecurityProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTargetsForSecurityProfileRequest object being passed to this operation.
         - completion: The ListTargetsForSecurityProfileResponse object or an error will be passed to this 
           callback when the operation is complete. The ListTargetsForSecurityProfileResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func listTargetsForSecurityProfileAsync(input: IotModel.ListTargetsForSecurityProfileRequest, completion: @escaping (HTTPResult<IotModel.ListTargetsForSecurityProfileResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listTargetsForSecurityProfile.rawValue,
                    target: target)

        let requestInput = ListTargetsForSecurityProfileOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/security-profiles/{securityProfileName}/targets",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListTargetsForSecurityProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTargetsForSecurityProfileRequest object being passed to this operation.
     - Returns: The ListTargetsForSecurityProfileResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func listTargetsForSecurityProfileSync(input: IotModel.ListTargetsForSecurityProfileRequest) throws -> IotModel.ListTargetsForSecurityProfileResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listTargetsForSecurityProfile.rawValue,
                    target: target)

        let requestInput = ListTargetsForSecurityProfileOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/security-profiles/{securityProfileName}/targets",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListThingGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListThingGroupsRequest object being passed to this operation.
         - completion: The ListThingGroupsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListThingGroupsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound.
     */
    public func listThingGroupsAsync(input: IotModel.ListThingGroupsRequest, completion: @escaping (HTTPResult<IotModel.ListThingGroupsResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listThingGroups.rawValue,
                    target: target)

        let requestInput = ListThingGroupsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/thing-groups",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListThingGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListThingGroupsRequest object being passed to this operation.
     - Returns: The ListThingGroupsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound.
     */
    public func listThingGroupsSync(input: IotModel.ListThingGroupsRequest) throws -> IotModel.ListThingGroupsResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listThingGroups.rawValue,
                    target: target)

        let requestInput = ListThingGroupsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/thing-groups",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListThingGroupsForThing operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListThingGroupsForThingRequest object being passed to this operation.
         - completion: The ListThingGroupsForThingResponse object or an error will be passed to this 
           callback when the operation is complete. The ListThingGroupsForThingResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound.
     */
    public func listThingGroupsForThingAsync(input: IotModel.ListThingGroupsForThingRequest, completion: @escaping (HTTPResult<IotModel.ListThingGroupsForThingResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listThingGroupsForThing.rawValue,
                    target: target)

        let requestInput = ListThingGroupsForThingOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/things/{thingName}/thing-groups",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListThingGroupsForThing operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListThingGroupsForThingRequest object being passed to this operation.
     - Returns: The ListThingGroupsForThingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound.
     */
    public func listThingGroupsForThingSync(input: IotModel.ListThingGroupsForThingRequest) throws -> IotModel.ListThingGroupsForThingResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listThingGroupsForThing.rawValue,
                    target: target)

        let requestInput = ListThingGroupsForThingOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/things/{thingName}/thing-groups",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListThingPrincipals operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListThingPrincipalsRequest object being passed to this operation.
         - completion: The ListThingPrincipalsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListThingPrincipalsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func listThingPrincipalsAsync(input: IotModel.ListThingPrincipalsRequest, completion: @escaping (HTTPResult<IotModel.ListThingPrincipalsResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listThingPrincipals.rawValue,
                    target: target)

        let requestInput = ListThingPrincipalsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/things/{thingName}/principals",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListThingPrincipals operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListThingPrincipalsRequest object being passed to this operation.
     - Returns: The ListThingPrincipalsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func listThingPrincipalsSync(input: IotModel.ListThingPrincipalsRequest) throws -> IotModel.ListThingPrincipalsResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listThingPrincipals.rawValue,
                    target: target)

        let requestInput = ListThingPrincipalsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/things/{thingName}/principals",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListThingRegistrationTaskReports operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListThingRegistrationTaskReportsRequest object being passed to this operation.
         - completion: The ListThingRegistrationTaskReportsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListThingRegistrationTaskReportsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling, unauthorized.
     */
    public func listThingRegistrationTaskReportsAsync(input: IotModel.ListThingRegistrationTaskReportsRequest, completion: @escaping (HTTPResult<IotModel.ListThingRegistrationTaskReportsResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listThingRegistrationTaskReports.rawValue,
                    target: target)

        let requestInput = ListThingRegistrationTaskReportsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/thing-registration-tasks/{taskId}/reports",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListThingRegistrationTaskReports operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListThingRegistrationTaskReportsRequest object being passed to this operation.
     - Returns: The ListThingRegistrationTaskReportsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling, unauthorized.
     */
    public func listThingRegistrationTaskReportsSync(input: IotModel.ListThingRegistrationTaskReportsRequest) throws -> IotModel.ListThingRegistrationTaskReportsResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listThingRegistrationTaskReports.rawValue,
                    target: target)

        let requestInput = ListThingRegistrationTaskReportsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/thing-registration-tasks/{taskId}/reports",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListThingRegistrationTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListThingRegistrationTasksRequest object being passed to this operation.
         - completion: The ListThingRegistrationTasksResponse object or an error will be passed to this 
           callback when the operation is complete. The ListThingRegistrationTasksResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling, unauthorized.
     */
    public func listThingRegistrationTasksAsync(input: IotModel.ListThingRegistrationTasksRequest, completion: @escaping (HTTPResult<IotModel.ListThingRegistrationTasksResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listThingRegistrationTasks.rawValue,
                    target: target)

        let requestInput = ListThingRegistrationTasksOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/thing-registration-tasks",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListThingRegistrationTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListThingRegistrationTasksRequest object being passed to this operation.
     - Returns: The ListThingRegistrationTasksResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling, unauthorized.
     */
    public func listThingRegistrationTasksSync(input: IotModel.ListThingRegistrationTasksRequest) throws -> IotModel.ListThingRegistrationTasksResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listThingRegistrationTasks.rawValue,
                    target: target)

        let requestInput = ListThingRegistrationTasksOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/thing-registration-tasks",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListThingTypes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListThingTypesRequest object being passed to this operation.
         - completion: The ListThingTypesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListThingTypesResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func listThingTypesAsync(input: IotModel.ListThingTypesRequest, completion: @escaping (HTTPResult<IotModel.ListThingTypesResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listThingTypes.rawValue,
                    target: target)

        let requestInput = ListThingTypesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/thing-types",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListThingTypes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListThingTypesRequest object being passed to this operation.
     - Returns: The ListThingTypesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func listThingTypesSync(input: IotModel.ListThingTypesRequest) throws -> IotModel.ListThingTypesResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listThingTypes.rawValue,
                    target: target)

        let requestInput = ListThingTypesOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/thing-types",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListThings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListThingsRequest object being passed to this operation.
         - completion: The ListThingsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListThingsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func listThingsAsync(input: IotModel.ListThingsRequest, completion: @escaping (HTTPResult<IotModel.ListThingsResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listThings.rawValue,
                    target: target)

        let requestInput = ListThingsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/things",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListThings operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListThingsRequest object being passed to this operation.
     - Returns: The ListThingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func listThingsSync(input: IotModel.ListThingsRequest) throws -> IotModel.ListThingsResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listThings.rawValue,
                    target: target)

        let requestInput = ListThingsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/things",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListThingsInBillingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListThingsInBillingGroupRequest object being passed to this operation.
         - completion: The ListThingsInBillingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The ListThingsInBillingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func listThingsInBillingGroupAsync(input: IotModel.ListThingsInBillingGroupRequest, completion: @escaping (HTTPResult<IotModel.ListThingsInBillingGroupResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listThingsInBillingGroup.rawValue,
                    target: target)

        let requestInput = ListThingsInBillingGroupOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/billing-groups/{billingGroupName}/things",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListThingsInBillingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListThingsInBillingGroupRequest object being passed to this operation.
     - Returns: The ListThingsInBillingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func listThingsInBillingGroupSync(input: IotModel.ListThingsInBillingGroupRequest) throws -> IotModel.ListThingsInBillingGroupResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listThingsInBillingGroup.rawValue,
                    target: target)

        let requestInput = ListThingsInBillingGroupOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/billing-groups/{billingGroupName}/things",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListThingsInThingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListThingsInThingGroupRequest object being passed to this operation.
         - completion: The ListThingsInThingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The ListThingsInThingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound.
     */
    public func listThingsInThingGroupAsync(input: IotModel.ListThingsInThingGroupRequest, completion: @escaping (HTTPResult<IotModel.ListThingsInThingGroupResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listThingsInThingGroup.rawValue,
                    target: target)

        let requestInput = ListThingsInThingGroupOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/thing-groups/{thingGroupName}/things",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListThingsInThingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListThingsInThingGroupRequest object being passed to this operation.
     - Returns: The ListThingsInThingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound.
     */
    public func listThingsInThingGroupSync(input: IotModel.ListThingsInThingGroupRequest) throws -> IotModel.ListThingsInThingGroupResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listThingsInThingGroup.rawValue,
                    target: target)

        let requestInput = ListThingsInThingGroupOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/thing-groups/{thingGroupName}/things",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListTopicRules operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTopicRulesRequest object being passed to this operation.
         - completion: The ListTopicRulesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListTopicRulesResponse
           object will be validated before being returned to caller.
           The possible errors are: internal, invalidRequest, serviceUnavailable.
     */
    public func listTopicRulesAsync(input: IotModel.ListTopicRulesRequest, completion: @escaping (HTTPResult<IotModel.ListTopicRulesResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listTopicRules.rawValue,
                    target: target)

        let requestInput = ListTopicRulesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/rules",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListTopicRules operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTopicRulesRequest object being passed to this operation.
     - Returns: The ListTopicRulesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internal, invalidRequest, serviceUnavailable.
     */
    public func listTopicRulesSync(input: IotModel.ListTopicRulesRequest) throws -> IotModel.ListTopicRulesResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listTopicRules.rawValue,
                    target: target)

        let requestInput = ListTopicRulesOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/rules",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListV2LoggingLevels operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListV2LoggingLevelsRequest object being passed to this operation.
         - completion: The ListV2LoggingLevelsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListV2LoggingLevelsResponse
           object will be validated before being returned to caller.
           The possible errors are: internal, invalidRequest, notConfigured, serviceUnavailable.
     */
    public func listV2LoggingLevelsAsync(input: IotModel.ListV2LoggingLevelsRequest, completion: @escaping (HTTPResult<IotModel.ListV2LoggingLevelsResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listV2LoggingLevels.rawValue,
                    target: target)

        let requestInput = ListV2LoggingLevelsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/v2LoggingLevel",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListV2LoggingLevels operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListV2LoggingLevelsRequest object being passed to this operation.
     - Returns: The ListV2LoggingLevelsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internal, invalidRequest, notConfigured, serviceUnavailable.
     */
    public func listV2LoggingLevelsSync(input: IotModel.ListV2LoggingLevelsRequest) throws -> IotModel.ListV2LoggingLevelsResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listV2LoggingLevels.rawValue,
                    target: target)

        let requestInput = ListV2LoggingLevelsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/v2LoggingLevel",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListViolationEvents operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListViolationEventsRequest object being passed to this operation.
         - completion: The ListViolationEventsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListViolationEventsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling.
     */
    public func listViolationEventsAsync(input: IotModel.ListViolationEventsRequest, completion: @escaping (HTTPResult<IotModel.ListViolationEventsResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listViolationEvents.rawValue,
                    target: target)

        let requestInput = ListViolationEventsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/violation-events",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListViolationEvents operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListViolationEventsRequest object being passed to this operation.
     - Returns: The ListViolationEventsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling.
     */
    public func listViolationEventsSync(input: IotModel.ListViolationEventsRequest) throws -> IotModel.ListViolationEventsResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.listViolationEvents.rawValue,
                    target: target)

        let requestInput = ListViolationEventsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/violation-events",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RegisterCACertificate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterCACertificateRequest object being passed to this operation.
         - completion: The RegisterCACertificateResponse object or an error will be passed to this 
           callback when the operation is complete. The RegisterCACertificateResponse
           object will be validated before being returned to caller.
           The possible errors are: certificateValidation, internalFailure, invalidRequest, limitExceeded, registrationCodeValidation, resourceAlreadyExists, serviceUnavailable, throttling, unauthorized.
     */
    public func registerCACertificateAsync(input: IotModel.RegisterCACertificateRequest, completion: @escaping (HTTPResult<IotModel.RegisterCACertificateResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.registerCACertificate.rawValue,
                    target: target)

        let requestInput = RegisterCACertificateOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/cacertificate",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RegisterCACertificate operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterCACertificateRequest object being passed to this operation.
     - Returns: The RegisterCACertificateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: certificateValidation, internalFailure, invalidRequest, limitExceeded, registrationCodeValidation, resourceAlreadyExists, serviceUnavailable, throttling, unauthorized.
     */
    public func registerCACertificateSync(input: IotModel.RegisterCACertificateRequest) throws -> IotModel.RegisterCACertificateResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.registerCACertificate.rawValue,
                    target: target)

        let requestInput = RegisterCACertificateOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/cacertificate",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RegisterCertificate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterCertificateRequest object being passed to this operation.
         - completion: The RegisterCertificateResponse object or an error will be passed to this 
           callback when the operation is complete. The RegisterCertificateResponse
           object will be validated before being returned to caller.
           The possible errors are: certificateConflict, certificateState, certificateValidation, internalFailure, invalidRequest, resourceAlreadyExists, serviceUnavailable, throttling, unauthorized.
     */
    public func registerCertificateAsync(input: IotModel.RegisterCertificateRequest, completion: @escaping (HTTPResult<IotModel.RegisterCertificateResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.registerCertificate.rawValue,
                    target: target)

        let requestInput = RegisterCertificateOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/certificate/register",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RegisterCertificate operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterCertificateRequest object being passed to this operation.
     - Returns: The RegisterCertificateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: certificateConflict, certificateState, certificateValidation, internalFailure, invalidRequest, resourceAlreadyExists, serviceUnavailable, throttling, unauthorized.
     */
    public func registerCertificateSync(input: IotModel.RegisterCertificateRequest) throws -> IotModel.RegisterCertificateResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.registerCertificate.rawValue,
                    target: target)

        let requestInput = RegisterCertificateOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/certificate/register",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RegisterThing operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterThingRequest object being passed to this operation.
         - completion: The RegisterThingResponse object or an error will be passed to this 
           callback when the operation is complete. The RegisterThingResponse
           object will be validated before being returned to caller.
           The possible errors are: conflictingResourceUpdate, internalFailure, invalidRequest, resourceRegistrationFailure, serviceUnavailable, throttling, unauthorized.
     */
    public func registerThingAsync(input: IotModel.RegisterThingRequest, completion: @escaping (HTTPResult<IotModel.RegisterThingResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.registerThing.rawValue,
                    target: target)

        let requestInput = RegisterThingOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/things",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RegisterThing operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterThingRequest object being passed to this operation.
     - Returns: The RegisterThingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflictingResourceUpdate, internalFailure, invalidRequest, resourceRegistrationFailure, serviceUnavailable, throttling, unauthorized.
     */
    public func registerThingSync(input: IotModel.RegisterThingRequest) throws -> IotModel.RegisterThingResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.registerThing.rawValue,
                    target: target)

        let requestInput = RegisterThingOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/things",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RejectCertificateTransfer operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RejectCertificateTransferRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, transferAlreadyCompleted, unauthorized.
     */
    public func rejectCertificateTransferAsync(input: IotModel.RejectCertificateTransferRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.rejectCertificateTransfer.rawValue,
                    target: target)

        let requestInput = RejectCertificateTransferOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/reject-certificate-transfer/{certificateId}",
            httpMethod: .PATCH,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RejectCertificateTransfer operation waiting for the response before returning.

     - Parameters:
         - input: The validated RejectCertificateTransferRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, transferAlreadyCompleted, unauthorized.
     */
    public func rejectCertificateTransferSync(input: IotModel.RejectCertificateTransferRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.rejectCertificateTransfer.rawValue,
                    target: target)

        let requestInput = RejectCertificateTransferOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/reject-certificate-transfer/{certificateId}",
            httpMethod: .PATCH,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RemoveThingFromBillingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveThingFromBillingGroupRequest object being passed to this operation.
         - completion: The RemoveThingFromBillingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The RemoveThingFromBillingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func removeThingFromBillingGroupAsync(input: IotModel.RemoveThingFromBillingGroupRequest, completion: @escaping (HTTPResult<IotModel.RemoveThingFromBillingGroupResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.removeThingFromBillingGroup.rawValue,
                    target: target)

        let requestInput = RemoveThingFromBillingGroupOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/billing-groups/removeThingFromBillingGroup",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RemoveThingFromBillingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveThingFromBillingGroupRequest object being passed to this operation.
     - Returns: The RemoveThingFromBillingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func removeThingFromBillingGroupSync(input: IotModel.RemoveThingFromBillingGroupRequest) throws -> IotModel.RemoveThingFromBillingGroupResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.removeThingFromBillingGroup.rawValue,
                    target: target)

        let requestInput = RemoveThingFromBillingGroupOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/billing-groups/removeThingFromBillingGroup",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RemoveThingFromThingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveThingFromThingGroupRequest object being passed to this operation.
         - completion: The RemoveThingFromThingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The RemoveThingFromThingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func removeThingFromThingGroupAsync(input: IotModel.RemoveThingFromThingGroupRequest, completion: @escaping (HTTPResult<IotModel.RemoveThingFromThingGroupResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.removeThingFromThingGroup.rawValue,
                    target: target)

        let requestInput = RemoveThingFromThingGroupOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/thing-groups/removeThingFromThingGroup",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RemoveThingFromThingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveThingFromThingGroupRequest object being passed to this operation.
     - Returns: The RemoveThingFromThingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func removeThingFromThingGroupSync(input: IotModel.RemoveThingFromThingGroupRequest) throws -> IotModel.RemoveThingFromThingGroupResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.removeThingFromThingGroup.rawValue,
                    target: target)

        let requestInput = RemoveThingFromThingGroupOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/thing-groups/removeThingFromThingGroup",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ReplaceTopicRule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceTopicRuleRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: conflictingResourceUpdate, internal, invalidRequest, serviceUnavailable, sqlParse, unauthorized.
     */
    public func replaceTopicRuleAsync(input: IotModel.ReplaceTopicRuleRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.replaceTopicRule.rawValue,
                    target: target)

        let requestInput = ReplaceTopicRuleOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/rules/{ruleName}",
            httpMethod: .PATCH,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ReplaceTopicRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceTopicRuleRequest object being passed to this operation.
     - Throws: conflictingResourceUpdate, internal, invalidRequest, serviceUnavailable, sqlParse, unauthorized.
     */
    public func replaceTopicRuleSync(input: IotModel.ReplaceTopicRuleRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.replaceTopicRule.rawValue,
                    target: target)

        let requestInput = ReplaceTopicRuleOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/rules/{ruleName}",
            httpMethod: .PATCH,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SearchIndex operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SearchIndexRequest object being passed to this operation.
         - completion: The SearchIndexResponse object or an error will be passed to this 
           callback when the operation is complete. The SearchIndexResponse
           object will be validated before being returned to caller.
           The possible errors are: indexNotReady, internalFailure, invalidQuery, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func searchIndexAsync(input: IotModel.SearchIndexRequest, completion: @escaping (HTTPResult<IotModel.SearchIndexResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.searchIndex.rawValue,
                    target: target)

        let requestInput = SearchIndexOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/indices/search",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SearchIndex operation waiting for the response before returning.

     - Parameters:
         - input: The validated SearchIndexRequest object being passed to this operation.
     - Returns: The SearchIndexResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: indexNotReady, internalFailure, invalidQuery, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func searchIndexSync(input: IotModel.SearchIndexRequest) throws -> IotModel.SearchIndexResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.searchIndex.rawValue,
                    target: target)

        let requestInput = SearchIndexOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/indices/search",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SetDefaultAuthorizer operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetDefaultAuthorizerRequest object being passed to this operation.
         - completion: The SetDefaultAuthorizerResponse object or an error will be passed to this 
           callback when the operation is complete. The SetDefaultAuthorizerResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceAlreadyExists, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func setDefaultAuthorizerAsync(input: IotModel.SetDefaultAuthorizerRequest, completion: @escaping (HTTPResult<IotModel.SetDefaultAuthorizerResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.setDefaultAuthorizer.rawValue,
                    target: target)

        let requestInput = SetDefaultAuthorizerOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/default-authorizer",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SetDefaultAuthorizer operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetDefaultAuthorizerRequest object being passed to this operation.
     - Returns: The SetDefaultAuthorizerResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceAlreadyExists, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func setDefaultAuthorizerSync(input: IotModel.SetDefaultAuthorizerRequest) throws -> IotModel.SetDefaultAuthorizerResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.setDefaultAuthorizer.rawValue,
                    target: target)

        let requestInput = SetDefaultAuthorizerOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/default-authorizer",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SetDefaultPolicyVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetDefaultPolicyVersionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func setDefaultPolicyVersionAsync(input: IotModel.SetDefaultPolicyVersionRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.setDefaultPolicyVersion.rawValue,
                    target: target)

        let requestInput = SetDefaultPolicyVersionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/policies/{policyName}/version/{policyVersionId}",
            httpMethod: .PATCH,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SetDefaultPolicyVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetDefaultPolicyVersionRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func setDefaultPolicyVersionSync(input: IotModel.SetDefaultPolicyVersionRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.setDefaultPolicyVersion.rawValue,
                    target: target)

        let requestInput = SetDefaultPolicyVersionOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/policies/{policyName}/version/{policyVersionId}",
            httpMethod: .PATCH,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SetLoggingOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetLoggingOptionsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internal, invalidRequest, serviceUnavailable.
     */
    public func setLoggingOptionsAsync(input: IotModel.SetLoggingOptionsRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.setLoggingOptions.rawValue,
                    target: target)

        let requestInput = SetLoggingOptionsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/loggingOptions",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SetLoggingOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetLoggingOptionsRequest object being passed to this operation.
     - Throws: internal, invalidRequest, serviceUnavailable.
     */
    public func setLoggingOptionsSync(input: IotModel.SetLoggingOptionsRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.setLoggingOptions.rawValue,
                    target: target)

        let requestInput = SetLoggingOptionsOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/loggingOptions",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SetV2LoggingLevel operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetV2LoggingLevelRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internal, invalidRequest, notConfigured, serviceUnavailable.
     */
    public func setV2LoggingLevelAsync(input: IotModel.SetV2LoggingLevelRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.setV2LoggingLevel.rawValue,
                    target: target)

        let requestInput = SetV2LoggingLevelOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/v2LoggingLevel",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SetV2LoggingLevel operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetV2LoggingLevelRequest object being passed to this operation.
     - Throws: internal, invalidRequest, notConfigured, serviceUnavailable.
     */
    public func setV2LoggingLevelSync(input: IotModel.SetV2LoggingLevelRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.setV2LoggingLevel.rawValue,
                    target: target)

        let requestInput = SetV2LoggingLevelOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/v2LoggingLevel",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SetV2LoggingOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetV2LoggingOptionsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internal, invalidRequest, serviceUnavailable.
     */
    public func setV2LoggingOptionsAsync(input: IotModel.SetV2LoggingOptionsRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.setV2LoggingOptions.rawValue,
                    target: target)

        let requestInput = SetV2LoggingOptionsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/v2LoggingOptions",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SetV2LoggingOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetV2LoggingOptionsRequest object being passed to this operation.
     - Throws: internal, invalidRequest, serviceUnavailable.
     */
    public func setV2LoggingOptionsSync(input: IotModel.SetV2LoggingOptionsRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.setV2LoggingOptions.rawValue,
                    target: target)

        let requestInput = SetV2LoggingOptionsOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/v2LoggingOptions",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the StartAuditMitigationActionsTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartAuditMitigationActionsTaskRequest object being passed to this operation.
         - completion: The StartAuditMitigationActionsTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The StartAuditMitigationActionsTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, taskAlreadyExists, throttling.
     */
    public func startAuditMitigationActionsTaskAsync(input: IotModel.StartAuditMitigationActionsTaskRequest, completion: @escaping (HTTPResult<IotModel.StartAuditMitigationActionsTaskResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.startAuditMitigationActionsTask.rawValue,
                    target: target)

        let requestInput = StartAuditMitigationActionsTaskOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/audit/mitigationactions/tasks/{taskId}",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the StartAuditMitigationActionsTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartAuditMitigationActionsTaskRequest object being passed to this operation.
     - Returns: The StartAuditMitigationActionsTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, taskAlreadyExists, throttling.
     */
    public func startAuditMitigationActionsTaskSync(input: IotModel.StartAuditMitigationActionsTaskRequest) throws -> IotModel.StartAuditMitigationActionsTaskResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.startAuditMitigationActionsTask.rawValue,
                    target: target)

        let requestInput = StartAuditMitigationActionsTaskOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/audit/mitigationactions/tasks/{taskId}",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the StartOnDemandAuditTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartOnDemandAuditTaskRequest object being passed to this operation.
         - completion: The StartOnDemandAuditTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The StartOnDemandAuditTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, throttling.
     */
    public func startOnDemandAuditTaskAsync(input: IotModel.StartOnDemandAuditTaskRequest, completion: @escaping (HTTPResult<IotModel.StartOnDemandAuditTaskResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.startOnDemandAuditTask.rawValue,
                    target: target)

        let requestInput = StartOnDemandAuditTaskOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/audit/tasks",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the StartOnDemandAuditTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartOnDemandAuditTaskRequest object being passed to this operation.
     - Returns: The StartOnDemandAuditTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, throttling.
     */
    public func startOnDemandAuditTaskSync(input: IotModel.StartOnDemandAuditTaskRequest) throws -> IotModel.StartOnDemandAuditTaskResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.startOnDemandAuditTask.rawValue,
                    target: target)

        let requestInput = StartOnDemandAuditTaskOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/audit/tasks",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the StartThingRegistrationTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartThingRegistrationTaskRequest object being passed to this operation.
         - completion: The StartThingRegistrationTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The StartThingRegistrationTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling, unauthorized.
     */
    public func startThingRegistrationTaskAsync(input: IotModel.StartThingRegistrationTaskRequest, completion: @escaping (HTTPResult<IotModel.StartThingRegistrationTaskResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.startThingRegistrationTask.rawValue,
                    target: target)

        let requestInput = StartThingRegistrationTaskOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/thing-registration-tasks",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the StartThingRegistrationTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartThingRegistrationTaskRequest object being passed to this operation.
     - Returns: The StartThingRegistrationTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling, unauthorized.
     */
    public func startThingRegistrationTaskSync(input: IotModel.StartThingRegistrationTaskRequest) throws -> IotModel.StartThingRegistrationTaskResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.startThingRegistrationTask.rawValue,
                    target: target)

        let requestInput = StartThingRegistrationTaskOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/thing-registration-tasks",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the StopThingRegistrationTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopThingRegistrationTaskRequest object being passed to this operation.
         - completion: The StopThingRegistrationTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The StopThingRegistrationTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling, unauthorized.
     */
    public func stopThingRegistrationTaskAsync(input: IotModel.StopThingRegistrationTaskRequest, completion: @escaping (HTTPResult<IotModel.StopThingRegistrationTaskResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.stopThingRegistrationTask.rawValue,
                    target: target)

        let requestInput = StopThingRegistrationTaskOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/thing-registration-tasks/{taskId}/cancel",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the StopThingRegistrationTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopThingRegistrationTaskRequest object being passed to this operation.
     - Returns: The StopThingRegistrationTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling, unauthorized.
     */
    public func stopThingRegistrationTaskSync(input: IotModel.StopThingRegistrationTaskRequest) throws -> IotModel.StopThingRegistrationTaskResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.stopThingRegistrationTask.rawValue,
                    target: target)

        let requestInput = StopThingRegistrationTaskOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/thing-registration-tasks/{taskId}/cancel",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
         - completion: The TagResourceResponse object or an error will be passed to this 
           callback when the operation is complete. The TagResourceResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceNotFound, throttling.
     */
    public func tagResourceAsync(input: IotModel.TagResourceRequest, completion: @escaping (HTTPResult<IotModel.TagResourceResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.tagResource.rawValue,
                    target: target)

        let requestInput = TagResourceOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/tags",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: The TagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceNotFound, throttling.
     */
    public func tagResourceSync(input: IotModel.TagResourceRequest) throws -> IotModel.TagResourceResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.tagResource.rawValue,
                    target: target)

        let requestInput = TagResourceOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/tags",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the TestAuthorization operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TestAuthorizationRequest object being passed to this operation.
         - completion: The TestAuthorizationResponse object or an error will be passed to this 
           callback when the operation is complete. The TestAuthorizationResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func testAuthorizationAsync(input: IotModel.TestAuthorizationRequest, completion: @escaping (HTTPResult<IotModel.TestAuthorizationResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.testAuthorization.rawValue,
                    target: target)

        let requestInput = TestAuthorizationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/test-authorization",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the TestAuthorization operation waiting for the response before returning.

     - Parameters:
         - input: The validated TestAuthorizationRequest object being passed to this operation.
     - Returns: The TestAuthorizationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func testAuthorizationSync(input: IotModel.TestAuthorizationRequest) throws -> IotModel.TestAuthorizationResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.testAuthorization.rawValue,
                    target: target)

        let requestInput = TestAuthorizationOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/test-authorization",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the TestInvokeAuthorizer operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TestInvokeAuthorizerRequest object being passed to this operation.
         - completion: The TestInvokeAuthorizerResponse object or an error will be passed to this 
           callback when the operation is complete. The TestInvokeAuthorizerResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, invalidResponse, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func testInvokeAuthorizerAsync(input: IotModel.TestInvokeAuthorizerRequest, completion: @escaping (HTTPResult<IotModel.TestInvokeAuthorizerResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.testInvokeAuthorizer.rawValue,
                    target: target)

        let requestInput = TestInvokeAuthorizerOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/authorizer/{authorizerName}/test",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the TestInvokeAuthorizer operation waiting for the response before returning.

     - Parameters:
         - input: The validated TestInvokeAuthorizerRequest object being passed to this operation.
     - Returns: The TestInvokeAuthorizerResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, invalidResponse, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func testInvokeAuthorizerSync(input: IotModel.TestInvokeAuthorizerRequest) throws -> IotModel.TestInvokeAuthorizerResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.testInvokeAuthorizer.rawValue,
                    target: target)

        let requestInput = TestInvokeAuthorizerOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/authorizer/{authorizerName}/test",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the TransferCertificate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TransferCertificateRequest object being passed to this operation.
         - completion: The TransferCertificateResponse object or an error will be passed to this 
           callback when the operation is complete. The TransferCertificateResponse
           object will be validated before being returned to caller.
           The possible errors are: certificateState, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, transferConflict, unauthorized.
     */
    public func transferCertificateAsync(input: IotModel.TransferCertificateRequest, completion: @escaping (HTTPResult<IotModel.TransferCertificateResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.transferCertificate.rawValue,
                    target: target)

        let requestInput = TransferCertificateOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/transfer-certificate/{certificateId}",
            httpMethod: .PATCH,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the TransferCertificate operation waiting for the response before returning.

     - Parameters:
         - input: The validated TransferCertificateRequest object being passed to this operation.
     - Returns: The TransferCertificateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: certificateState, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, transferConflict, unauthorized.
     */
    public func transferCertificateSync(input: IotModel.TransferCertificateRequest) throws -> IotModel.TransferCertificateResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.transferCertificate.rawValue,
                    target: target)

        let requestInput = TransferCertificateOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/transfer-certificate/{certificateId}",
            httpMethod: .PATCH,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
         - completion: The UntagResourceResponse object or an error will be passed to this 
           callback when the operation is complete. The UntagResourceResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func untagResourceAsync(input: IotModel.UntagResourceRequest, completion: @escaping (HTTPResult<IotModel.UntagResourceResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.untagResource.rawValue,
                    target: target)

        let requestInput = UntagResourceOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/untag",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: The UntagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func untagResourceSync(input: IotModel.UntagResourceRequest) throws -> IotModel.UntagResourceResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.untagResource.rawValue,
                    target: target)

        let requestInput = UntagResourceOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/untag",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateAccountAuditConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateAccountAuditConfigurationRequest object being passed to this operation.
         - completion: The UpdateAccountAuditConfigurationResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateAccountAuditConfigurationResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling.
     */
    public func updateAccountAuditConfigurationAsync(input: IotModel.UpdateAccountAuditConfigurationRequest, completion: @escaping (HTTPResult<IotModel.UpdateAccountAuditConfigurationResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateAccountAuditConfiguration.rawValue,
                    target: target)

        let requestInput = UpdateAccountAuditConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/audit/configuration",
            httpMethod: .PATCH,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateAccountAuditConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateAccountAuditConfigurationRequest object being passed to this operation.
     - Returns: The UpdateAccountAuditConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling.
     */
    public func updateAccountAuditConfigurationSync(input: IotModel.UpdateAccountAuditConfigurationRequest) throws -> IotModel.UpdateAccountAuditConfigurationResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateAccountAuditConfiguration.rawValue,
                    target: target)

        let requestInput = UpdateAccountAuditConfigurationOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/audit/configuration",
            httpMethod: .PATCH,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateAuthorizer operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateAuthorizerRequest object being passed to this operation.
         - completion: The UpdateAuthorizerResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateAuthorizerResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func updateAuthorizerAsync(input: IotModel.UpdateAuthorizerRequest, completion: @escaping (HTTPResult<IotModel.UpdateAuthorizerResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateAuthorizer.rawValue,
                    target: target)

        let requestInput = UpdateAuthorizerOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/authorizer/{authorizerName}",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateAuthorizer operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateAuthorizerRequest object being passed to this operation.
     - Returns: The UpdateAuthorizerResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func updateAuthorizerSync(input: IotModel.UpdateAuthorizerRequest) throws -> IotModel.UpdateAuthorizerResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateAuthorizer.rawValue,
                    target: target)

        let requestInput = UpdateAuthorizerOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/authorizer/{authorizerName}",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateBillingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateBillingGroupRequest object being passed to this operation.
         - completion: The UpdateBillingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateBillingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling, versionConflict.
     */
    public func updateBillingGroupAsync(input: IotModel.UpdateBillingGroupRequest, completion: @escaping (HTTPResult<IotModel.UpdateBillingGroupResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateBillingGroup.rawValue,
                    target: target)

        let requestInput = UpdateBillingGroupOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/billing-groups/{billingGroupName}",
            httpMethod: .PATCH,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateBillingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateBillingGroupRequest object being passed to this operation.
     - Returns: The UpdateBillingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling, versionConflict.
     */
    public func updateBillingGroupSync(input: IotModel.UpdateBillingGroupRequest) throws -> IotModel.UpdateBillingGroupResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateBillingGroup.rawValue,
                    target: target)

        let requestInput = UpdateBillingGroupOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/billing-groups/{billingGroupName}",
            httpMethod: .PATCH,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateCACertificate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateCACertificateRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func updateCACertificateAsync(input: IotModel.UpdateCACertificateRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateCACertificate.rawValue,
                    target: target)

        let requestInput = UpdateCACertificateOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/cacertificate/{caCertificateId}",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateCACertificate operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateCACertificateRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func updateCACertificateSync(input: IotModel.UpdateCACertificateRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateCACertificate.rawValue,
                    target: target)

        let requestInput = UpdateCACertificateOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/cacertificate/{caCertificateId}",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateCertificate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateCertificateRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: certificateState, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func updateCertificateAsync(input: IotModel.UpdateCertificateRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateCertificate.rawValue,
                    target: target)

        let requestInput = UpdateCertificateOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/certificates/{certificateId}",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateCertificate operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateCertificateRequest object being passed to this operation.
     - Throws: certificateState, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func updateCertificateSync(input: IotModel.UpdateCertificateRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateCertificate.rawValue,
                    target: target)

        let requestInput = UpdateCertificateOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/certificates/{certificateId}",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateDynamicThingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateDynamicThingGroupRequest object being passed to this operation.
         - completion: The UpdateDynamicThingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateDynamicThingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidQuery, invalidRequest, resourceNotFound, throttling, versionConflict.
     */
    public func updateDynamicThingGroupAsync(input: IotModel.UpdateDynamicThingGroupRequest, completion: @escaping (HTTPResult<IotModel.UpdateDynamicThingGroupResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateDynamicThingGroup.rawValue,
                    target: target)

        let requestInput = UpdateDynamicThingGroupOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/dynamic-thing-groups/{thingGroupName}",
            httpMethod: .PATCH,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateDynamicThingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateDynamicThingGroupRequest object being passed to this operation.
     - Returns: The UpdateDynamicThingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidQuery, invalidRequest, resourceNotFound, throttling, versionConflict.
     */
    public func updateDynamicThingGroupSync(input: IotModel.UpdateDynamicThingGroupRequest) throws -> IotModel.UpdateDynamicThingGroupResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateDynamicThingGroup.rawValue,
                    target: target)

        let requestInput = UpdateDynamicThingGroupOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/dynamic-thing-groups/{thingGroupName}",
            httpMethod: .PATCH,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateEventConfigurations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateEventConfigurationsRequest object being passed to this operation.
         - completion: The UpdateEventConfigurationsResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateEventConfigurationsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling.
     */
    public func updateEventConfigurationsAsync(input: IotModel.UpdateEventConfigurationsRequest, completion: @escaping (HTTPResult<IotModel.UpdateEventConfigurationsResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateEventConfigurations.rawValue,
                    target: target)

        let requestInput = UpdateEventConfigurationsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/event-configurations",
            httpMethod: .PATCH,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateEventConfigurations operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateEventConfigurationsRequest object being passed to this operation.
     - Returns: The UpdateEventConfigurationsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling.
     */
    public func updateEventConfigurationsSync(input: IotModel.UpdateEventConfigurationsRequest) throws -> IotModel.UpdateEventConfigurationsResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateEventConfigurations.rawValue,
                    target: target)

        let requestInput = UpdateEventConfigurationsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/event-configurations",
            httpMethod: .PATCH,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateIndexingConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateIndexingConfigurationRequest object being passed to this operation.
         - completion: The UpdateIndexingConfigurationResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateIndexingConfigurationResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func updateIndexingConfigurationAsync(input: IotModel.UpdateIndexingConfigurationRequest, completion: @escaping (HTTPResult<IotModel.UpdateIndexingConfigurationResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateIndexingConfiguration.rawValue,
                    target: target)

        let requestInput = UpdateIndexingConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/indexing/config",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateIndexingConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateIndexingConfigurationRequest object being passed to this operation.
     - Returns: The UpdateIndexingConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    public func updateIndexingConfigurationSync(input: IotModel.UpdateIndexingConfigurationRequest) throws -> IotModel.UpdateIndexingConfigurationResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateIndexingConfiguration.rawValue,
                    target: target)

        let requestInput = UpdateIndexingConfigurationOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/indexing/config",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateJob operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateJobRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    public func updateJobAsync(input: IotModel.UpdateJobRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateJob.rawValue,
                    target: target)

        let requestInput = UpdateJobOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/jobs/{jobId}",
            httpMethod: .PATCH,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateJob operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateJobRequest object being passed to this operation.
     - Throws: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    public func updateJobSync(input: IotModel.UpdateJobRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateJob.rawValue,
                    target: target)

        let requestInput = UpdateJobOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/jobs/{jobId}",
            httpMethod: .PATCH,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateMitigationAction operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateMitigationActionRequest object being passed to this operation.
         - completion: The UpdateMitigationActionResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateMitigationActionResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func updateMitigationActionAsync(input: IotModel.UpdateMitigationActionRequest, completion: @escaping (HTTPResult<IotModel.UpdateMitigationActionResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateMitigationAction.rawValue,
                    target: target)

        let requestInput = UpdateMitigationActionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/mitigationactions/actions/{actionName}",
            httpMethod: .PATCH,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateMitigationAction operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateMitigationActionRequest object being passed to this operation.
     - Returns: The UpdateMitigationActionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func updateMitigationActionSync(input: IotModel.UpdateMitigationActionRequest) throws -> IotModel.UpdateMitigationActionResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateMitigationAction.rawValue,
                    target: target)

        let requestInput = UpdateMitigationActionOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/mitigationactions/actions/{actionName}",
            httpMethod: .PATCH,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateRoleAlias operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateRoleAliasRequest object being passed to this operation.
         - completion: The UpdateRoleAliasResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateRoleAliasResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func updateRoleAliasAsync(input: IotModel.UpdateRoleAliasRequest, completion: @escaping (HTTPResult<IotModel.UpdateRoleAliasResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateRoleAlias.rawValue,
                    target: target)

        let requestInput = UpdateRoleAliasOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/role-aliases/{roleAlias}",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateRoleAlias operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateRoleAliasRequest object being passed to this operation.
     - Returns: The UpdateRoleAliasResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func updateRoleAliasSync(input: IotModel.UpdateRoleAliasRequest) throws -> IotModel.UpdateRoleAliasResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateRoleAlias.rawValue,
                    target: target)

        let requestInput = UpdateRoleAliasOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/role-aliases/{roleAlias}",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateScheduledAudit operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateScheduledAuditRequest object being passed to this operation.
         - completion: The UpdateScheduledAuditResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateScheduledAuditResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func updateScheduledAuditAsync(input: IotModel.UpdateScheduledAuditRequest, completion: @escaping (HTTPResult<IotModel.UpdateScheduledAuditResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateScheduledAudit.rawValue,
                    target: target)

        let requestInput = UpdateScheduledAuditOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/audit/scheduledaudits/{scheduledAuditName}",
            httpMethod: .PATCH,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateScheduledAudit operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateScheduledAuditRequest object being passed to this operation.
     - Returns: The UpdateScheduledAuditResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func updateScheduledAuditSync(input: IotModel.UpdateScheduledAuditRequest) throws -> IotModel.UpdateScheduledAuditResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateScheduledAudit.rawValue,
                    target: target)

        let requestInput = UpdateScheduledAuditOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/audit/scheduledaudits/{scheduledAuditName}",
            httpMethod: .PATCH,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateSecurityProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateSecurityProfileRequest object being passed to this operation.
         - completion: The UpdateSecurityProfileResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateSecurityProfileResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling, versionConflict.
     */
    public func updateSecurityProfileAsync(input: IotModel.UpdateSecurityProfileRequest, completion: @escaping (HTTPResult<IotModel.UpdateSecurityProfileResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateSecurityProfile.rawValue,
                    target: target)

        let requestInput = UpdateSecurityProfileOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/security-profiles/{securityProfileName}",
            httpMethod: .PATCH,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateSecurityProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateSecurityProfileRequest object being passed to this operation.
     - Returns: The UpdateSecurityProfileResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling, versionConflict.
     */
    public func updateSecurityProfileSync(input: IotModel.UpdateSecurityProfileRequest) throws -> IotModel.UpdateSecurityProfileResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateSecurityProfile.rawValue,
                    target: target)

        let requestInput = UpdateSecurityProfileOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/security-profiles/{securityProfileName}",
            httpMethod: .PATCH,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateStream operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateStreamRequest object being passed to this operation.
         - completion: The UpdateStreamResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateStreamResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func updateStreamAsync(input: IotModel.UpdateStreamRequest, completion: @escaping (HTTPResult<IotModel.UpdateStreamResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateStream.rawValue,
                    target: target)

        let requestInput = UpdateStreamOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/streams/{streamId}",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateStream operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateStreamRequest object being passed to this operation.
     - Returns: The UpdateStreamResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func updateStreamSync(input: IotModel.UpdateStreamRequest) throws -> IotModel.UpdateStreamResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateStream.rawValue,
                    target: target)

        let requestInput = UpdateStreamOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/streams/{streamId}",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateThing operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateThingRequest object being passed to this operation.
         - completion: The UpdateThingResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateThingResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized, versionConflict.
     */
    public func updateThingAsync(input: IotModel.UpdateThingRequest, completion: @escaping (HTTPResult<IotModel.UpdateThingResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateThing.rawValue,
                    target: target)

        let requestInput = UpdateThingOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/things/{thingName}",
            httpMethod: .PATCH,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateThing operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateThingRequest object being passed to this operation.
     - Returns: The UpdateThingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized, versionConflict.
     */
    public func updateThingSync(input: IotModel.UpdateThingRequest) throws -> IotModel.UpdateThingResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateThing.rawValue,
                    target: target)

        let requestInput = UpdateThingOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/things/{thingName}",
            httpMethod: .PATCH,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateThingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateThingGroupRequest object being passed to this operation.
         - completion: The UpdateThingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateThingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling, versionConflict.
     */
    public func updateThingGroupAsync(input: IotModel.UpdateThingGroupRequest, completion: @escaping (HTTPResult<IotModel.UpdateThingGroupResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateThingGroup.rawValue,
                    target: target)

        let requestInput = UpdateThingGroupOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/thing-groups/{thingGroupName}",
            httpMethod: .PATCH,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateThingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateThingGroupRequest object being passed to this operation.
     - Returns: The UpdateThingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling, versionConflict.
     */
    public func updateThingGroupSync(input: IotModel.UpdateThingGroupRequest) throws -> IotModel.UpdateThingGroupResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateThingGroup.rawValue,
                    target: target)

        let requestInput = UpdateThingGroupOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/thing-groups/{thingGroupName}",
            httpMethod: .PATCH,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateThingGroupsForThing operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateThingGroupsForThingRequest object being passed to this operation.
         - completion: The UpdateThingGroupsForThingResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateThingGroupsForThingResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func updateThingGroupsForThingAsync(input: IotModel.UpdateThingGroupsForThingRequest, completion: @escaping (HTTPResult<IotModel.UpdateThingGroupsForThingResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateThingGroupsForThing.rawValue,
                    target: target)

        let requestInput = UpdateThingGroupsForThingOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/thing-groups/updateThingGroupsForThing",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateThingGroupsForThing operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateThingGroupsForThingRequest object being passed to this operation.
     - Returns: The UpdateThingGroupsForThingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    public func updateThingGroupsForThingSync(input: IotModel.UpdateThingGroupsForThingRequest) throws -> IotModel.UpdateThingGroupsForThingResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.updateThingGroupsForThing.rawValue,
                    target: target)

        let requestInput = UpdateThingGroupsForThingOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/thing-groups/updateThingGroupsForThing",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ValidateSecurityProfileBehaviors operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ValidateSecurityProfileBehaviorsRequest object being passed to this operation.
         - completion: The ValidateSecurityProfileBehaviorsResponse object or an error will be passed to this 
           callback when the operation is complete. The ValidateSecurityProfileBehaviorsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling.
     */
    public func validateSecurityProfileBehaviorsAsync(input: IotModel.ValidateSecurityProfileBehaviorsRequest, completion: @escaping (HTTPResult<IotModel.ValidateSecurityProfileBehaviorsResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.validateSecurityProfileBehaviors.rawValue,
                    target: target)

        let requestInput = ValidateSecurityProfileBehaviorsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/security-profile-behaviors/validate",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ValidateSecurityProfileBehaviors operation waiting for the response before returning.

     - Parameters:
         - input: The validated ValidateSecurityProfileBehaviorsRequest object being passed to this operation.
     - Returns: The ValidateSecurityProfileBehaviorsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling.
     */
    public func validateSecurityProfileBehaviorsSync(input: IotModel.ValidateSecurityProfileBehaviorsRequest) throws -> IotModel.ValidateSecurityProfileBehaviorsResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: IotModelOperations.validateSecurityProfileBehaviors.rawValue,
                    target: target)

        let requestInput = ValidateSecurityProfileBehaviorsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/security-profile-behaviors/validate",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }
}
