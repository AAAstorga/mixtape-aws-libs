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
// IotModelDefaultInstances.swift
// IotModel
//

import Foundation

public extension AbortConfig {
    /**
     Default instance of the AbortConfig structure.
     */
    public static let __default: IotModel.AbortConfig = {
        let defaultInstance = IotModel.AbortConfig(
            criteriaList: [AbortCriteria.__default])

        return defaultInstance
    }()
}

public extension AbortCriteria {
    /**
     Default instance of the AbortCriteria structure.
     */
    public static let __default: IotModel.AbortCriteria = {
        let defaultInstance = IotModel.AbortCriteria(
            action: .__default,
            failureType: .__default,
            minNumberOfExecutedThings: 0,
            thresholdPercentage: 0.0)

        return defaultInstance
    }()
}

public extension AcceptCertificateTransferRequest {
    /**
     Default instance of the AcceptCertificateTransferRequest structure.
     */
    public static let __default: IotModel.AcceptCertificateTransferRequest = {
        let defaultInstance = IotModel.AcceptCertificateTransferRequest(
            certificateId: "0123456789012345678901234567890123456789012345678901234567890123",
            setAsActive: nil)

        return defaultInstance
    }()
}

public extension Action {
    /**
     Default instance of the Action structure.
     */
    public static let __default: IotModel.Action = {
        let defaultInstance = IotModel.Action(
            cloudwatchAlarm: nil,
            cloudwatchMetric: nil,
            dynamoDB: nil,
            dynamoDBv2: nil,
            elasticsearch: nil,
            firehose: nil,
            iotAnalytics: nil,
            iotEvents: nil,
            kinesis: nil,
            lambda: nil,
            republish: nil,
            s3: nil,
            salesforce: nil,
            sns: nil,
            sqs: nil,
            stepFunctions: nil)

        return defaultInstance
    }()
}

public extension ActiveViolation {
    /**
     Default instance of the ActiveViolation structure.
     */
    public static let __default: IotModel.ActiveViolation = {
        let defaultInstance = IotModel.ActiveViolation(
            behavior: nil,
            lastViolationTime: nil,
            lastViolationValue: nil,
            securityProfileName: nil,
            thingName: nil,
            violationId: nil,
            violationStartTime: nil)

        return defaultInstance
    }()
}

public extension AddThingToBillingGroupRequest {
    /**
     Default instance of the AddThingToBillingGroupRequest structure.
     */
    public static let __default: IotModel.AddThingToBillingGroupRequest = {
        let defaultInstance = IotModel.AddThingToBillingGroupRequest(
            billingGroupArn: nil,
            billingGroupName: nil,
            thingArn: nil,
            thingName: nil)

        return defaultInstance
    }()
}

public extension AddThingToBillingGroupResponse {
    /**
     Default instance of the AddThingToBillingGroupResponse structure.
     */
    public static let __default: IotModel.AddThingToBillingGroupResponse = {
        let defaultInstance = IotModel.AddThingToBillingGroupResponse()

        return defaultInstance
    }()
}

public extension AddThingToThingGroupRequest {
    /**
     Default instance of the AddThingToThingGroupRequest structure.
     */
    public static let __default: IotModel.AddThingToThingGroupRequest = {
        let defaultInstance = IotModel.AddThingToThingGroupRequest(
            overrideDynamicGroups: nil,
            thingArn: nil,
            thingGroupArn: nil,
            thingGroupName: nil,
            thingName: nil)

        return defaultInstance
    }()
}

public extension AddThingToThingGroupResponse {
    /**
     Default instance of the AddThingToThingGroupResponse structure.
     */
    public static let __default: IotModel.AddThingToThingGroupResponse = {
        let defaultInstance = IotModel.AddThingToThingGroupResponse()

        return defaultInstance
    }()
}

public extension AddThingsToThingGroupParams {
    /**
     Default instance of the AddThingsToThingGroupParams structure.
     */
    public static let __default: IotModel.AddThingsToThingGroupParams = {
        let defaultInstance = IotModel.AddThingsToThingGroupParams(
            overrideDynamicGroups: nil,
            thingGroupNames: ["0"])

        return defaultInstance
    }()
}

public extension AlertTarget {
    /**
     Default instance of the AlertTarget structure.
     */
    public static let __default: IotModel.AlertTarget = {
        let defaultInstance = IotModel.AlertTarget(
            alertTargetArn: "value",
            roleArn: "01234567890123456789")

        return defaultInstance
    }()
}

public extension Allowed {
    /**
     Default instance of the Allowed structure.
     */
    public static let __default: IotModel.Allowed = {
        let defaultInstance = IotModel.Allowed(
            policies: nil)

        return defaultInstance
    }()
}

public extension AssociateTargetsWithJobRequest {
    /**
     Default instance of the AssociateTargetsWithJobRequest structure.
     */
    public static let __default: IotModel.AssociateTargetsWithJobRequest = {
        let defaultInstance = IotModel.AssociateTargetsWithJobRequest(
            comment: nil,
            jobId: "0",
            targets: ["value"])

        return defaultInstance
    }()
}

public extension AssociateTargetsWithJobResponse {
    /**
     Default instance of the AssociateTargetsWithJobResponse structure.
     */
    public static let __default: IotModel.AssociateTargetsWithJobResponse = {
        let defaultInstance = IotModel.AssociateTargetsWithJobResponse(
            description: nil,
            jobArn: nil,
            jobId: nil)

        return defaultInstance
    }()
}

public extension AttachPolicyRequest {
    /**
     Default instance of the AttachPolicyRequest structure.
     */
    public static let __default: IotModel.AttachPolicyRequest = {
        let defaultInstance = IotModel.AttachPolicyRequest(
            policyName: "0",
            target: "value")

        return defaultInstance
    }()
}

public extension AttachPrincipalPolicyRequest {
    /**
     Default instance of the AttachPrincipalPolicyRequest structure.
     */
    public static let __default: IotModel.AttachPrincipalPolicyRequest = {
        let defaultInstance = IotModel.AttachPrincipalPolicyRequest(
            policyName: "0",
            principal: "value")

        return defaultInstance
    }()
}

public extension AttachSecurityProfileRequest {
    /**
     Default instance of the AttachSecurityProfileRequest structure.
     */
    public static let __default: IotModel.AttachSecurityProfileRequest = {
        let defaultInstance = IotModel.AttachSecurityProfileRequest(
            securityProfileName: "0",
            securityProfileTargetArn: "value")

        return defaultInstance
    }()
}

public extension AttachSecurityProfileResponse {
    /**
     Default instance of the AttachSecurityProfileResponse structure.
     */
    public static let __default: IotModel.AttachSecurityProfileResponse = {
        let defaultInstance = IotModel.AttachSecurityProfileResponse()

        return defaultInstance
    }()
}

public extension AttachThingPrincipalRequest {
    /**
     Default instance of the AttachThingPrincipalRequest structure.
     */
    public static let __default: IotModel.AttachThingPrincipalRequest = {
        let defaultInstance = IotModel.AttachThingPrincipalRequest(
            principal: "value",
            thingName: "0")

        return defaultInstance
    }()
}

public extension AttachThingPrincipalResponse {
    /**
     Default instance of the AttachThingPrincipalResponse structure.
     */
    public static let __default: IotModel.AttachThingPrincipalResponse = {
        let defaultInstance = IotModel.AttachThingPrincipalResponse()

        return defaultInstance
    }()
}

public extension AttributePayload {
    /**
     Default instance of the AttributePayload structure.
     */
    public static let __default: IotModel.AttributePayload = {
        let defaultInstance = IotModel.AttributePayload(
            attributes: nil,
            merge: nil)

        return defaultInstance
    }()
}

public extension AuditCheckConfiguration {
    /**
     Default instance of the AuditCheckConfiguration structure.
     */
    public static let __default: IotModel.AuditCheckConfiguration = {
        let defaultInstance = IotModel.AuditCheckConfiguration(
            enabled: nil)

        return defaultInstance
    }()
}

public extension AuditCheckDetails {
    /**
     Default instance of the AuditCheckDetails structure.
     */
    public static let __default: IotModel.AuditCheckDetails = {
        let defaultInstance = IotModel.AuditCheckDetails(
            checkCompliant: nil,
            checkRunStatus: nil,
            errorCode: nil,
            message: nil,
            nonCompliantResourcesCount: nil,
            totalResourcesCount: nil)

        return defaultInstance
    }()
}

public extension AuditFinding {
    /**
     Default instance of the AuditFinding structure.
     */
    public static let __default: IotModel.AuditFinding = {
        let defaultInstance = IotModel.AuditFinding(
            checkName: nil,
            findingId: nil,
            findingTime: nil,
            nonCompliantResource: nil,
            reasonForNonCompliance: nil,
            reasonForNonComplianceCode: nil,
            relatedResources: nil,
            severity: nil,
            taskId: nil,
            taskStartTime: nil)

        return defaultInstance
    }()
}

public extension AuditMitigationActionExecutionMetadata {
    /**
     Default instance of the AuditMitigationActionExecutionMetadata structure.
     */
    public static let __default: IotModel.AuditMitigationActionExecutionMetadata = {
        let defaultInstance = IotModel.AuditMitigationActionExecutionMetadata(
            actionId: nil,
            actionName: nil,
            endTime: nil,
            errorCode: nil,
            findingId: nil,
            message: nil,
            startTime: nil,
            status: nil,
            taskId: nil)

        return defaultInstance
    }()
}

public extension AuditMitigationActionsTaskMetadata {
    /**
     Default instance of the AuditMitigationActionsTaskMetadata structure.
     */
    public static let __default: IotModel.AuditMitigationActionsTaskMetadata = {
        let defaultInstance = IotModel.AuditMitigationActionsTaskMetadata(
            startTime: nil,
            taskId: nil,
            taskStatus: nil)

        return defaultInstance
    }()
}

public extension AuditMitigationActionsTaskTarget {
    /**
     Default instance of the AuditMitigationActionsTaskTarget structure.
     */
    public static let __default: IotModel.AuditMitigationActionsTaskTarget = {
        let defaultInstance = IotModel.AuditMitigationActionsTaskTarget(
            auditCheckToReasonCodeFilter: nil,
            auditTaskId: nil,
            findingIds: nil)

        return defaultInstance
    }()
}

public extension AuditNotificationTarget {
    /**
     Default instance of the AuditNotificationTarget structure.
     */
    public static let __default: IotModel.AuditNotificationTarget = {
        let defaultInstance = IotModel.AuditNotificationTarget(
            enabled: nil,
            roleArn: nil,
            targetArn: nil)

        return defaultInstance
    }()
}

public extension AuditTaskMetadata {
    /**
     Default instance of the AuditTaskMetadata structure.
     */
    public static let __default: IotModel.AuditTaskMetadata = {
        let defaultInstance = IotModel.AuditTaskMetadata(
            taskId: nil,
            taskStatus: nil,
            taskType: nil)

        return defaultInstance
    }()
}

public extension AuthInfo {
    /**
     Default instance of the AuthInfo structure.
     */
    public static let __default: IotModel.AuthInfo = {
        let defaultInstance = IotModel.AuthInfo(
            actionType: nil,
            resources: nil)

        return defaultInstance
    }()
}

public extension AuthResult {
    /**
     Default instance of the AuthResult structure.
     */
    public static let __default: IotModel.AuthResult = {
        let defaultInstance = IotModel.AuthResult(
            allowed: nil,
            authDecision: nil,
            authInfo: nil,
            denied: nil,
            missingContextValues: nil)

        return defaultInstance
    }()
}

public extension AuthorizerDescription {
    /**
     Default instance of the AuthorizerDescription structure.
     */
    public static let __default: IotModel.AuthorizerDescription = {
        let defaultInstance = IotModel.AuthorizerDescription(
            authorizerArn: nil,
            authorizerFunctionArn: nil,
            authorizerName: nil,
            creationDate: nil,
            lastModifiedDate: nil,
            status: nil,
            tokenKeyName: nil,
            tokenSigningPublicKeys: nil)

        return defaultInstance
    }()
}

public extension AuthorizerSummary {
    /**
     Default instance of the AuthorizerSummary structure.
     */
    public static let __default: IotModel.AuthorizerSummary = {
        let defaultInstance = IotModel.AuthorizerSummary(
            authorizerArn: nil,
            authorizerName: nil)

        return defaultInstance
    }()
}

public extension AwsJobExecutionsRolloutConfig {
    /**
     Default instance of the AwsJobExecutionsRolloutConfig structure.
     */
    public static let __default: IotModel.AwsJobExecutionsRolloutConfig = {
        let defaultInstance = IotModel.AwsJobExecutionsRolloutConfig(
            maximumPerMinute: nil)

        return defaultInstance
    }()
}

public extension Behavior {
    /**
     Default instance of the Behavior structure.
     */
    public static let __default: IotModel.Behavior = {
        let defaultInstance = IotModel.Behavior(
            criteria: nil,
            metric: nil,
            name: "0")

        return defaultInstance
    }()
}

public extension BehaviorCriteria {
    /**
     Default instance of the BehaviorCriteria structure.
     */
    public static let __default: IotModel.BehaviorCriteria = {
        let defaultInstance = IotModel.BehaviorCriteria(
            comparisonOperator: nil,
            consecutiveDatapointsToAlarm: nil,
            consecutiveDatapointsToClear: nil,
            durationSeconds: nil,
            statisticalThreshold: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension BillingGroupMetadata {
    /**
     Default instance of the BillingGroupMetadata structure.
     */
    public static let __default: IotModel.BillingGroupMetadata = {
        let defaultInstance = IotModel.BillingGroupMetadata(
            creationDate: nil)

        return defaultInstance
    }()
}

public extension BillingGroupProperties {
    /**
     Default instance of the BillingGroupProperties structure.
     */
    public static let __default: IotModel.BillingGroupProperties = {
        let defaultInstance = IotModel.BillingGroupProperties(
            billingGroupDescription: nil)

        return defaultInstance
    }()
}

public extension CACertificate {
    /**
     Default instance of the CACertificate structure.
     */
    public static let __default: IotModel.CACertificate = {
        let defaultInstance = IotModel.CACertificate(
            certificateArn: nil,
            certificateId: nil,
            creationDate: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension CACertificateDescription {
    /**
     Default instance of the CACertificateDescription structure.
     */
    public static let __default: IotModel.CACertificateDescription = {
        let defaultInstance = IotModel.CACertificateDescription(
            autoRegistrationStatus: nil,
            certificateArn: nil,
            certificateId: nil,
            certificatePem: nil,
            creationDate: nil,
            customerVersion: nil,
            generationId: nil,
            lastModifiedDate: nil,
            ownedBy: nil,
            status: nil,
            validity: nil)

        return defaultInstance
    }()
}

public extension CancelAuditMitigationActionsTaskRequest {
    /**
     Default instance of the CancelAuditMitigationActionsTaskRequest structure.
     */
    public static let __default: IotModel.CancelAuditMitigationActionsTaskRequest = {
        let defaultInstance = IotModel.CancelAuditMitigationActionsTaskRequest(
            taskId: "0")

        return defaultInstance
    }()
}

public extension CancelAuditMitigationActionsTaskResponse {
    /**
     Default instance of the CancelAuditMitigationActionsTaskResponse structure.
     */
    public static let __default: IotModel.CancelAuditMitigationActionsTaskResponse = {
        let defaultInstance = IotModel.CancelAuditMitigationActionsTaskResponse()

        return defaultInstance
    }()
}

public extension CancelAuditTaskRequest {
    /**
     Default instance of the CancelAuditTaskRequest structure.
     */
    public static let __default: IotModel.CancelAuditTaskRequest = {
        let defaultInstance = IotModel.CancelAuditTaskRequest(
            taskId: "0")

        return defaultInstance
    }()
}

public extension CancelAuditTaskResponse {
    /**
     Default instance of the CancelAuditTaskResponse structure.
     */
    public static let __default: IotModel.CancelAuditTaskResponse = {
        let defaultInstance = IotModel.CancelAuditTaskResponse()

        return defaultInstance
    }()
}

public extension CancelCertificateTransferRequest {
    /**
     Default instance of the CancelCertificateTransferRequest structure.
     */
    public static let __default: IotModel.CancelCertificateTransferRequest = {
        let defaultInstance = IotModel.CancelCertificateTransferRequest(
            certificateId: "0123456789012345678901234567890123456789012345678901234567890123")

        return defaultInstance
    }()
}

public extension CancelJobExecutionRequest {
    /**
     Default instance of the CancelJobExecutionRequest structure.
     */
    public static let __default: IotModel.CancelJobExecutionRequest = {
        let defaultInstance = IotModel.CancelJobExecutionRequest(
            expectedVersion: nil,
            force: nil,
            jobId: "0",
            statusDetails: nil,
            thingName: "0")

        return defaultInstance
    }()
}

public extension CancelJobRequest {
    /**
     Default instance of the CancelJobRequest structure.
     */
    public static let __default: IotModel.CancelJobRequest = {
        let defaultInstance = IotModel.CancelJobRequest(
            comment: nil,
            force: nil,
            jobId: "0",
            reasonCode: nil)

        return defaultInstance
    }()
}

public extension CancelJobResponse {
    /**
     Default instance of the CancelJobResponse structure.
     */
    public static let __default: IotModel.CancelJobResponse = {
        let defaultInstance = IotModel.CancelJobResponse(
            description: nil,
            jobArn: nil,
            jobId: nil)

        return defaultInstance
    }()
}

public extension Certificate {
    /**
     Default instance of the Certificate structure.
     */
    public static let __default: IotModel.Certificate = {
        let defaultInstance = IotModel.Certificate(
            certificateArn: nil,
            certificateId: nil,
            creationDate: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension CertificateConflictException {
    /**
     Default instance of the CertificateConflictException structure.
     */
    public static let __default: IotModel.CertificateConflictException = {
        let defaultInstance = IotModel.CertificateConflictException(
            message: nil)

        return defaultInstance
    }()
}

public extension CertificateDescription {
    /**
     Default instance of the CertificateDescription structure.
     */
    public static let __default: IotModel.CertificateDescription = {
        let defaultInstance = IotModel.CertificateDescription(
            caCertificateId: nil,
            certificateArn: nil,
            certificateId: nil,
            certificatePem: nil,
            creationDate: nil,
            customerVersion: nil,
            generationId: nil,
            lastModifiedDate: nil,
            ownedBy: nil,
            previousOwnedBy: nil,
            status: nil,
            transferData: nil,
            validity: nil)

        return defaultInstance
    }()
}

public extension CertificateStateException {
    /**
     Default instance of the CertificateStateException structure.
     */
    public static let __default: IotModel.CertificateStateException = {
        let defaultInstance = IotModel.CertificateStateException(
            message: nil)

        return defaultInstance
    }()
}

public extension CertificateValidationException {
    /**
     Default instance of the CertificateValidationException structure.
     */
    public static let __default: IotModel.CertificateValidationException = {
        let defaultInstance = IotModel.CertificateValidationException(
            message: nil)

        return defaultInstance
    }()
}

public extension CertificateValidity {
    /**
     Default instance of the CertificateValidity structure.
     */
    public static let __default: IotModel.CertificateValidity = {
        let defaultInstance = IotModel.CertificateValidity(
            notAfter: nil,
            notBefore: nil)

        return defaultInstance
    }()
}

public extension ClearDefaultAuthorizerRequest {
    /**
     Default instance of the ClearDefaultAuthorizerRequest structure.
     */
    public static let __default: IotModel.ClearDefaultAuthorizerRequest = {
        let defaultInstance = IotModel.ClearDefaultAuthorizerRequest()

        return defaultInstance
    }()
}

public extension ClearDefaultAuthorizerResponse {
    /**
     Default instance of the ClearDefaultAuthorizerResponse structure.
     */
    public static let __default: IotModel.ClearDefaultAuthorizerResponse = {
        let defaultInstance = IotModel.ClearDefaultAuthorizerResponse()

        return defaultInstance
    }()
}

public extension CloudwatchAlarmAction {
    /**
     Default instance of the CloudwatchAlarmAction structure.
     */
    public static let __default: IotModel.CloudwatchAlarmAction = {
        let defaultInstance = IotModel.CloudwatchAlarmAction(
            alarmName: "value",
            roleArn: "value",
            stateReason: "value",
            stateValue: "value")

        return defaultInstance
    }()
}

public extension CloudwatchMetricAction {
    /**
     Default instance of the CloudwatchMetricAction structure.
     */
    public static let __default: IotModel.CloudwatchMetricAction = {
        let defaultInstance = IotModel.CloudwatchMetricAction(
            metricName: "value",
            metricNamespace: "value",
            metricTimestamp: nil,
            metricUnit: "value",
            metricValue: "value",
            roleArn: "value")

        return defaultInstance
    }()
}

public extension CodeSigning {
    /**
     Default instance of the CodeSigning structure.
     */
    public static let __default: IotModel.CodeSigning = {
        let defaultInstance = IotModel.CodeSigning(
            awsSignerJobId: nil,
            customCodeSigning: nil,
            startSigningJobParameter: nil)

        return defaultInstance
    }()
}

public extension CodeSigningCertificateChain {
    /**
     Default instance of the CodeSigningCertificateChain structure.
     */
    public static let __default: IotModel.CodeSigningCertificateChain = {
        let defaultInstance = IotModel.CodeSigningCertificateChain(
            certificateName: nil,
            inlineDocument: nil)

        return defaultInstance
    }()
}

public extension CodeSigningSignature {
    /**
     Default instance of the CodeSigningSignature structure.
     */
    public static let __default: IotModel.CodeSigningSignature = {
        let defaultInstance = IotModel.CodeSigningSignature(
            inlineDocument: nil)

        return defaultInstance
    }()
}

public extension Configuration {
    /**
     Default instance of the Configuration structure.
     */
    public static let __default: IotModel.Configuration = {
        let defaultInstance = IotModel.Configuration(
            enabled: nil)

        return defaultInstance
    }()
}

public extension ConflictingResourceUpdateException {
    /**
     Default instance of the ConflictingResourceUpdateException structure.
     */
    public static let __default: IotModel.ConflictingResourceUpdateException = {
        let defaultInstance = IotModel.ConflictingResourceUpdateException(
            message: nil)

        return defaultInstance
    }()
}

public extension CreateAuthorizerRequest {
    /**
     Default instance of the CreateAuthorizerRequest structure.
     */
    public static let __default: IotModel.CreateAuthorizerRequest = {
        let defaultInstance = IotModel.CreateAuthorizerRequest(
            authorizerFunctionArn: "value",
            authorizerName: "0",
            status: nil,
            tokenKeyName: "0",
            tokenSigningPublicKeys: [:])

        return defaultInstance
    }()
}

public extension CreateAuthorizerResponse {
    /**
     Default instance of the CreateAuthorizerResponse structure.
     */
    public static let __default: IotModel.CreateAuthorizerResponse = {
        let defaultInstance = IotModel.CreateAuthorizerResponse(
            authorizerArn: nil,
            authorizerName: nil)

        return defaultInstance
    }()
}

public extension CreateBillingGroupRequest {
    /**
     Default instance of the CreateBillingGroupRequest structure.
     */
    public static let __default: IotModel.CreateBillingGroupRequest = {
        let defaultInstance = IotModel.CreateBillingGroupRequest(
            billingGroupName: "0",
            billingGroupProperties: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension CreateBillingGroupResponse {
    /**
     Default instance of the CreateBillingGroupResponse structure.
     */
    public static let __default: IotModel.CreateBillingGroupResponse = {
        let defaultInstance = IotModel.CreateBillingGroupResponse(
            billingGroupArn: nil,
            billingGroupId: nil,
            billingGroupName: nil)

        return defaultInstance
    }()
}

public extension CreateCertificateFromCsrRequest {
    /**
     Default instance of the CreateCertificateFromCsrRequest structure.
     */
    public static let __default: IotModel.CreateCertificateFromCsrRequest = {
        let defaultInstance = IotModel.CreateCertificateFromCsrRequest(
            certificateSigningRequest: "0",
            setAsActive: nil)

        return defaultInstance
    }()
}

public extension CreateCertificateFromCsrResponse {
    /**
     Default instance of the CreateCertificateFromCsrResponse structure.
     */
    public static let __default: IotModel.CreateCertificateFromCsrResponse = {
        let defaultInstance = IotModel.CreateCertificateFromCsrResponse(
            certificateArn: nil,
            certificateId: nil,
            certificatePem: nil)

        return defaultInstance
    }()
}

public extension CreateDynamicThingGroupRequest {
    /**
     Default instance of the CreateDynamicThingGroupRequest structure.
     */
    public static let __default: IotModel.CreateDynamicThingGroupRequest = {
        let defaultInstance = IotModel.CreateDynamicThingGroupRequest(
            indexName: nil,
            queryString: "0",
            queryVersion: nil,
            tags: nil,
            thingGroupName: "0",
            thingGroupProperties: nil)

        return defaultInstance
    }()
}

public extension CreateDynamicThingGroupResponse {
    /**
     Default instance of the CreateDynamicThingGroupResponse structure.
     */
    public static let __default: IotModel.CreateDynamicThingGroupResponse = {
        let defaultInstance = IotModel.CreateDynamicThingGroupResponse(
            indexName: nil,
            queryString: nil,
            queryVersion: nil,
            thingGroupArn: nil,
            thingGroupId: nil,
            thingGroupName: nil)

        return defaultInstance
    }()
}

public extension CreateJobRequest {
    /**
     Default instance of the CreateJobRequest structure.
     */
    public static let __default: IotModel.CreateJobRequest = {
        let defaultInstance = IotModel.CreateJobRequest(
            abortConfig: nil,
            description: nil,
            document: nil,
            documentSource: nil,
            jobExecutionsRolloutConfig: nil,
            jobId: "0",
            presignedUrlConfig: nil,
            tags: nil,
            targetSelection: nil,
            targets: ["value"],
            timeoutConfig: nil)

        return defaultInstance
    }()
}

public extension CreateJobResponse {
    /**
     Default instance of the CreateJobResponse structure.
     */
    public static let __default: IotModel.CreateJobResponse = {
        let defaultInstance = IotModel.CreateJobResponse(
            description: nil,
            jobArn: nil,
            jobId: nil)

        return defaultInstance
    }()
}

public extension CreateKeysAndCertificateRequest {
    /**
     Default instance of the CreateKeysAndCertificateRequest structure.
     */
    public static let __default: IotModel.CreateKeysAndCertificateRequest = {
        let defaultInstance = IotModel.CreateKeysAndCertificateRequest(
            setAsActive: nil)

        return defaultInstance
    }()
}

public extension CreateKeysAndCertificateResponse {
    /**
     Default instance of the CreateKeysAndCertificateResponse structure.
     */
    public static let __default: IotModel.CreateKeysAndCertificateResponse = {
        let defaultInstance = IotModel.CreateKeysAndCertificateResponse(
            certificateArn: nil,
            certificateId: nil,
            certificatePem: nil,
            keyPair: nil)

        return defaultInstance
    }()
}

public extension CreateMitigationActionRequest {
    /**
     Default instance of the CreateMitigationActionRequest structure.
     */
    public static let __default: IotModel.CreateMitigationActionRequest = {
        let defaultInstance = IotModel.CreateMitigationActionRequest(
            actionName: "",
            actionParams: MitigationActionParams.__default,
            roleArn: "01234567890123456789",
            tags: nil)

        return defaultInstance
    }()
}

public extension CreateMitigationActionResponse {
    /**
     Default instance of the CreateMitigationActionResponse structure.
     */
    public static let __default: IotModel.CreateMitigationActionResponse = {
        let defaultInstance = IotModel.CreateMitigationActionResponse(
            actionArn: nil,
            actionId: nil)

        return defaultInstance
    }()
}

public extension CreateOTAUpdateRequest {
    /**
     Default instance of the CreateOTAUpdateRequest structure.
     */
    public static let __default: IotModel.CreateOTAUpdateRequest = {
        let defaultInstance = IotModel.CreateOTAUpdateRequest(
            additionalParameters: nil,
            awsJobExecutionsRolloutConfig: nil,
            description: nil,
            files: [OTAUpdateFile.__default],
            otaUpdateId: "0",
            roleArn: "01234567890123456789",
            tags: nil,
            targetSelection: nil,
            targets: ["value"])

        return defaultInstance
    }()
}

public extension CreateOTAUpdateResponse {
    /**
     Default instance of the CreateOTAUpdateResponse structure.
     */
    public static let __default: IotModel.CreateOTAUpdateResponse = {
        let defaultInstance = IotModel.CreateOTAUpdateResponse(
            awsIotJobArn: nil,
            awsIotJobId: nil,
            otaUpdateArn: nil,
            otaUpdateId: nil,
            otaUpdateStatus: nil)

        return defaultInstance
    }()
}

public extension CreatePolicyRequest {
    /**
     Default instance of the CreatePolicyRequest structure.
     */
    public static let __default: IotModel.CreatePolicyRequest = {
        let defaultInstance = IotModel.CreatePolicyRequest(
            policyDocument: "value",
            policyName: "0")

        return defaultInstance
    }()
}

public extension CreatePolicyResponse {
    /**
     Default instance of the CreatePolicyResponse structure.
     */
    public static let __default: IotModel.CreatePolicyResponse = {
        let defaultInstance = IotModel.CreatePolicyResponse(
            policyArn: nil,
            policyDocument: nil,
            policyName: nil,
            policyVersionId: nil)

        return defaultInstance
    }()
}

public extension CreatePolicyVersionRequest {
    /**
     Default instance of the CreatePolicyVersionRequest structure.
     */
    public static let __default: IotModel.CreatePolicyVersionRequest = {
        let defaultInstance = IotModel.CreatePolicyVersionRequest(
            policyDocument: "value",
            policyName: "0",
            setAsDefault: nil)

        return defaultInstance
    }()
}

public extension CreatePolicyVersionResponse {
    /**
     Default instance of the CreatePolicyVersionResponse structure.
     */
    public static let __default: IotModel.CreatePolicyVersionResponse = {
        let defaultInstance = IotModel.CreatePolicyVersionResponse(
            isDefaultVersion: nil,
            policyArn: nil,
            policyDocument: nil,
            policyVersionId: nil)

        return defaultInstance
    }()
}

public extension CreateRoleAliasRequest {
    /**
     Default instance of the CreateRoleAliasRequest structure.
     */
    public static let __default: IotModel.CreateRoleAliasRequest = {
        let defaultInstance = IotModel.CreateRoleAliasRequest(
            credentialDurationSeconds: nil,
            roleAlias: "0",
            roleArn: "01234567890123456789")

        return defaultInstance
    }()
}

public extension CreateRoleAliasResponse {
    /**
     Default instance of the CreateRoleAliasResponse structure.
     */
    public static let __default: IotModel.CreateRoleAliasResponse = {
        let defaultInstance = IotModel.CreateRoleAliasResponse(
            roleAlias: nil,
            roleAliasArn: nil)

        return defaultInstance
    }()
}

public extension CreateScheduledAuditRequest {
    /**
     Default instance of the CreateScheduledAuditRequest structure.
     */
    public static let __default: IotModel.CreateScheduledAuditRequest = {
        let defaultInstance = IotModel.CreateScheduledAuditRequest(
            dayOfMonth: nil,
            dayOfWeek: nil,
            frequency: .__default,
            scheduledAuditName: "0",
            tags: nil,
            targetCheckNames: [])

        return defaultInstance
    }()
}

public extension CreateScheduledAuditResponse {
    /**
     Default instance of the CreateScheduledAuditResponse structure.
     */
    public static let __default: IotModel.CreateScheduledAuditResponse = {
        let defaultInstance = IotModel.CreateScheduledAuditResponse(
            scheduledAuditArn: nil)

        return defaultInstance
    }()
}

public extension CreateSecurityProfileRequest {
    /**
     Default instance of the CreateSecurityProfileRequest structure.
     */
    public static let __default: IotModel.CreateSecurityProfileRequest = {
        let defaultInstance = IotModel.CreateSecurityProfileRequest(
            additionalMetricsToRetain: nil,
            alertTargets: nil,
            behaviors: nil,
            securityProfileDescription: nil,
            securityProfileName: "0",
            tags: nil)

        return defaultInstance
    }()
}

public extension CreateSecurityProfileResponse {
    /**
     Default instance of the CreateSecurityProfileResponse structure.
     */
    public static let __default: IotModel.CreateSecurityProfileResponse = {
        let defaultInstance = IotModel.CreateSecurityProfileResponse(
            securityProfileArn: nil,
            securityProfileName: nil)

        return defaultInstance
    }()
}

public extension CreateStreamRequest {
    /**
     Default instance of the CreateStreamRequest structure.
     */
    public static let __default: IotModel.CreateStreamRequest = {
        let defaultInstance = IotModel.CreateStreamRequest(
            description: nil,
            files: [StreamFile.__default],
            roleArn: "01234567890123456789",
            streamId: "0",
            tags: nil)

        return defaultInstance
    }()
}

public extension CreateStreamResponse {
    /**
     Default instance of the CreateStreamResponse structure.
     */
    public static let __default: IotModel.CreateStreamResponse = {
        let defaultInstance = IotModel.CreateStreamResponse(
            description: nil,
            streamArn: nil,
            streamId: nil,
            streamVersion: nil)

        return defaultInstance
    }()
}

public extension CreateThingGroupRequest {
    /**
     Default instance of the CreateThingGroupRequest structure.
     */
    public static let __default: IotModel.CreateThingGroupRequest = {
        let defaultInstance = IotModel.CreateThingGroupRequest(
            parentGroupName: nil,
            tags: nil,
            thingGroupName: "0",
            thingGroupProperties: nil)

        return defaultInstance
    }()
}

public extension CreateThingGroupResponse {
    /**
     Default instance of the CreateThingGroupResponse structure.
     */
    public static let __default: IotModel.CreateThingGroupResponse = {
        let defaultInstance = IotModel.CreateThingGroupResponse(
            thingGroupArn: nil,
            thingGroupId: nil,
            thingGroupName: nil)

        return defaultInstance
    }()
}

public extension CreateThingRequest {
    /**
     Default instance of the CreateThingRequest structure.
     */
    public static let __default: IotModel.CreateThingRequest = {
        let defaultInstance = IotModel.CreateThingRequest(
            attributePayload: nil,
            billingGroupName: nil,
            thingName: "0",
            thingTypeName: nil)

        return defaultInstance
    }()
}

public extension CreateThingResponse {
    /**
     Default instance of the CreateThingResponse structure.
     */
    public static let __default: IotModel.CreateThingResponse = {
        let defaultInstance = IotModel.CreateThingResponse(
            thingArn: nil,
            thingId: nil,
            thingName: nil)

        return defaultInstance
    }()
}

public extension CreateThingTypeRequest {
    /**
     Default instance of the CreateThingTypeRequest structure.
     */
    public static let __default: IotModel.CreateThingTypeRequest = {
        let defaultInstance = IotModel.CreateThingTypeRequest(
            tags: nil,
            thingTypeName: "0",
            thingTypeProperties: nil)

        return defaultInstance
    }()
}

public extension CreateThingTypeResponse {
    /**
     Default instance of the CreateThingTypeResponse structure.
     */
    public static let __default: IotModel.CreateThingTypeResponse = {
        let defaultInstance = IotModel.CreateThingTypeResponse(
            thingTypeArn: nil,
            thingTypeId: nil,
            thingTypeName: nil)

        return defaultInstance
    }()
}

public extension CreateTopicRuleRequest {
    /**
     Default instance of the CreateTopicRuleRequest structure.
     */
    public static let __default: IotModel.CreateTopicRuleRequest = {
        let defaultInstance = IotModel.CreateTopicRuleRequest(
            ruleName: "0",
            tags: nil,
            topicRulePayload: TopicRulePayload.__default)

        return defaultInstance
    }()
}

public extension CustomCodeSigning {
    /**
     Default instance of the CustomCodeSigning structure.
     */
    public static let __default: IotModel.CustomCodeSigning = {
        let defaultInstance = IotModel.CustomCodeSigning(
            certificateChain: nil,
            hashAlgorithm: nil,
            signature: nil,
            signatureAlgorithm: nil)

        return defaultInstance
    }()
}

public extension DeleteAccountAuditConfigurationRequest {
    /**
     Default instance of the DeleteAccountAuditConfigurationRequest structure.
     */
    public static let __default: IotModel.DeleteAccountAuditConfigurationRequest = {
        let defaultInstance = IotModel.DeleteAccountAuditConfigurationRequest(
            deleteScheduledAudits: nil)

        return defaultInstance
    }()
}

public extension DeleteAccountAuditConfigurationResponse {
    /**
     Default instance of the DeleteAccountAuditConfigurationResponse structure.
     */
    public static let __default: IotModel.DeleteAccountAuditConfigurationResponse = {
        let defaultInstance = IotModel.DeleteAccountAuditConfigurationResponse()

        return defaultInstance
    }()
}

public extension DeleteAuthorizerRequest {
    /**
     Default instance of the DeleteAuthorizerRequest structure.
     */
    public static let __default: IotModel.DeleteAuthorizerRequest = {
        let defaultInstance = IotModel.DeleteAuthorizerRequest(
            authorizerName: "0")

        return defaultInstance
    }()
}

public extension DeleteAuthorizerResponse {
    /**
     Default instance of the DeleteAuthorizerResponse structure.
     */
    public static let __default: IotModel.DeleteAuthorizerResponse = {
        let defaultInstance = IotModel.DeleteAuthorizerResponse()

        return defaultInstance
    }()
}

public extension DeleteBillingGroupRequest {
    /**
     Default instance of the DeleteBillingGroupRequest structure.
     */
    public static let __default: IotModel.DeleteBillingGroupRequest = {
        let defaultInstance = IotModel.DeleteBillingGroupRequest(
            billingGroupName: "0",
            expectedVersion: nil)

        return defaultInstance
    }()
}

public extension DeleteBillingGroupResponse {
    /**
     Default instance of the DeleteBillingGroupResponse structure.
     */
    public static let __default: IotModel.DeleteBillingGroupResponse = {
        let defaultInstance = IotModel.DeleteBillingGroupResponse()

        return defaultInstance
    }()
}

public extension DeleteCACertificateRequest {
    /**
     Default instance of the DeleteCACertificateRequest structure.
     */
    public static let __default: IotModel.DeleteCACertificateRequest = {
        let defaultInstance = IotModel.DeleteCACertificateRequest(
            certificateId: "0123456789012345678901234567890123456789012345678901234567890123")

        return defaultInstance
    }()
}

public extension DeleteCACertificateResponse {
    /**
     Default instance of the DeleteCACertificateResponse structure.
     */
    public static let __default: IotModel.DeleteCACertificateResponse = {
        let defaultInstance = IotModel.DeleteCACertificateResponse()

        return defaultInstance
    }()
}

public extension DeleteCertificateRequest {
    /**
     Default instance of the DeleteCertificateRequest structure.
     */
    public static let __default: IotModel.DeleteCertificateRequest = {
        let defaultInstance = IotModel.DeleteCertificateRequest(
            certificateId: "0123456789012345678901234567890123456789012345678901234567890123",
            forceDelete: nil)

        return defaultInstance
    }()
}

public extension DeleteConflictException {
    /**
     Default instance of the DeleteConflictException structure.
     */
    public static let __default: IotModel.DeleteConflictException = {
        let defaultInstance = IotModel.DeleteConflictException(
            message: nil)

        return defaultInstance
    }()
}

public extension DeleteDynamicThingGroupRequest {
    /**
     Default instance of the DeleteDynamicThingGroupRequest structure.
     */
    public static let __default: IotModel.DeleteDynamicThingGroupRequest = {
        let defaultInstance = IotModel.DeleteDynamicThingGroupRequest(
            expectedVersion: nil,
            thingGroupName: "0")

        return defaultInstance
    }()
}

public extension DeleteDynamicThingGroupResponse {
    /**
     Default instance of the DeleteDynamicThingGroupResponse structure.
     */
    public static let __default: IotModel.DeleteDynamicThingGroupResponse = {
        let defaultInstance = IotModel.DeleteDynamicThingGroupResponse()

        return defaultInstance
    }()
}

public extension DeleteJobExecutionRequest {
    /**
     Default instance of the DeleteJobExecutionRequest structure.
     */
    public static let __default: IotModel.DeleteJobExecutionRequest = {
        let defaultInstance = IotModel.DeleteJobExecutionRequest(
            executionNumber: 0,
            force: nil,
            jobId: "0",
            thingName: "0")

        return defaultInstance
    }()
}

public extension DeleteJobRequest {
    /**
     Default instance of the DeleteJobRequest structure.
     */
    public static let __default: IotModel.DeleteJobRequest = {
        let defaultInstance = IotModel.DeleteJobRequest(
            force: nil,
            jobId: "0")

        return defaultInstance
    }()
}

public extension DeleteMitigationActionRequest {
    /**
     Default instance of the DeleteMitigationActionRequest structure.
     */
    public static let __default: IotModel.DeleteMitigationActionRequest = {
        let defaultInstance = IotModel.DeleteMitigationActionRequest(
            actionName: "")

        return defaultInstance
    }()
}

public extension DeleteMitigationActionResponse {
    /**
     Default instance of the DeleteMitigationActionResponse structure.
     */
    public static let __default: IotModel.DeleteMitigationActionResponse = {
        let defaultInstance = IotModel.DeleteMitigationActionResponse()

        return defaultInstance
    }()
}

public extension DeleteOTAUpdateRequest {
    /**
     Default instance of the DeleteOTAUpdateRequest structure.
     */
    public static let __default: IotModel.DeleteOTAUpdateRequest = {
        let defaultInstance = IotModel.DeleteOTAUpdateRequest(
            deleteStream: nil,
            forceDeleteAWSJob: nil,
            otaUpdateId: "0")

        return defaultInstance
    }()
}

public extension DeleteOTAUpdateResponse {
    /**
     Default instance of the DeleteOTAUpdateResponse structure.
     */
    public static let __default: IotModel.DeleteOTAUpdateResponse = {
        let defaultInstance = IotModel.DeleteOTAUpdateResponse()

        return defaultInstance
    }()
}

public extension DeletePolicyRequest {
    /**
     Default instance of the DeletePolicyRequest structure.
     */
    public static let __default: IotModel.DeletePolicyRequest = {
        let defaultInstance = IotModel.DeletePolicyRequest(
            policyName: "0")

        return defaultInstance
    }()
}

public extension DeletePolicyVersionRequest {
    /**
     Default instance of the DeletePolicyVersionRequest structure.
     */
    public static let __default: IotModel.DeletePolicyVersionRequest = {
        let defaultInstance = IotModel.DeletePolicyVersionRequest(
            policyName: "0",
            policyVersionId: "")

        return defaultInstance
    }()
}

public extension DeleteRegistrationCodeRequest {
    /**
     Default instance of the DeleteRegistrationCodeRequest structure.
     */
    public static let __default: IotModel.DeleteRegistrationCodeRequest = {
        let defaultInstance = IotModel.DeleteRegistrationCodeRequest()

        return defaultInstance
    }()
}

public extension DeleteRegistrationCodeResponse {
    /**
     Default instance of the DeleteRegistrationCodeResponse structure.
     */
    public static let __default: IotModel.DeleteRegistrationCodeResponse = {
        let defaultInstance = IotModel.DeleteRegistrationCodeResponse()

        return defaultInstance
    }()
}

public extension DeleteRoleAliasRequest {
    /**
     Default instance of the DeleteRoleAliasRequest structure.
     */
    public static let __default: IotModel.DeleteRoleAliasRequest = {
        let defaultInstance = IotModel.DeleteRoleAliasRequest(
            roleAlias: "0")

        return defaultInstance
    }()
}

public extension DeleteRoleAliasResponse {
    /**
     Default instance of the DeleteRoleAliasResponse structure.
     */
    public static let __default: IotModel.DeleteRoleAliasResponse = {
        let defaultInstance = IotModel.DeleteRoleAliasResponse()

        return defaultInstance
    }()
}

public extension DeleteScheduledAuditRequest {
    /**
     Default instance of the DeleteScheduledAuditRequest structure.
     */
    public static let __default: IotModel.DeleteScheduledAuditRequest = {
        let defaultInstance = IotModel.DeleteScheduledAuditRequest(
            scheduledAuditName: "0")

        return defaultInstance
    }()
}

public extension DeleteScheduledAuditResponse {
    /**
     Default instance of the DeleteScheduledAuditResponse structure.
     */
    public static let __default: IotModel.DeleteScheduledAuditResponse = {
        let defaultInstance = IotModel.DeleteScheduledAuditResponse()

        return defaultInstance
    }()
}

public extension DeleteSecurityProfileRequest {
    /**
     Default instance of the DeleteSecurityProfileRequest structure.
     */
    public static let __default: IotModel.DeleteSecurityProfileRequest = {
        let defaultInstance = IotModel.DeleteSecurityProfileRequest(
            expectedVersion: nil,
            securityProfileName: "0")

        return defaultInstance
    }()
}

public extension DeleteSecurityProfileResponse {
    /**
     Default instance of the DeleteSecurityProfileResponse structure.
     */
    public static let __default: IotModel.DeleteSecurityProfileResponse = {
        let defaultInstance = IotModel.DeleteSecurityProfileResponse()

        return defaultInstance
    }()
}

public extension DeleteStreamRequest {
    /**
     Default instance of the DeleteStreamRequest structure.
     */
    public static let __default: IotModel.DeleteStreamRequest = {
        let defaultInstance = IotModel.DeleteStreamRequest(
            streamId: "0")

        return defaultInstance
    }()
}

public extension DeleteStreamResponse {
    /**
     Default instance of the DeleteStreamResponse structure.
     */
    public static let __default: IotModel.DeleteStreamResponse = {
        let defaultInstance = IotModel.DeleteStreamResponse()

        return defaultInstance
    }()
}

public extension DeleteThingGroupRequest {
    /**
     Default instance of the DeleteThingGroupRequest structure.
     */
    public static let __default: IotModel.DeleteThingGroupRequest = {
        let defaultInstance = IotModel.DeleteThingGroupRequest(
            expectedVersion: nil,
            thingGroupName: "0")

        return defaultInstance
    }()
}

public extension DeleteThingGroupResponse {
    /**
     Default instance of the DeleteThingGroupResponse structure.
     */
    public static let __default: IotModel.DeleteThingGroupResponse = {
        let defaultInstance = IotModel.DeleteThingGroupResponse()

        return defaultInstance
    }()
}

public extension DeleteThingRequest {
    /**
     Default instance of the DeleteThingRequest structure.
     */
    public static let __default: IotModel.DeleteThingRequest = {
        let defaultInstance = IotModel.DeleteThingRequest(
            expectedVersion: nil,
            thingName: "0")

        return defaultInstance
    }()
}

public extension DeleteThingResponse {
    /**
     Default instance of the DeleteThingResponse structure.
     */
    public static let __default: IotModel.DeleteThingResponse = {
        let defaultInstance = IotModel.DeleteThingResponse()

        return defaultInstance
    }()
}

public extension DeleteThingTypeRequest {
    /**
     Default instance of the DeleteThingTypeRequest structure.
     */
    public static let __default: IotModel.DeleteThingTypeRequest = {
        let defaultInstance = IotModel.DeleteThingTypeRequest(
            thingTypeName: "0")

        return defaultInstance
    }()
}

public extension DeleteThingTypeResponse {
    /**
     Default instance of the DeleteThingTypeResponse structure.
     */
    public static let __default: IotModel.DeleteThingTypeResponse = {
        let defaultInstance = IotModel.DeleteThingTypeResponse()

        return defaultInstance
    }()
}

public extension DeleteTopicRuleRequest {
    /**
     Default instance of the DeleteTopicRuleRequest structure.
     */
    public static let __default: IotModel.DeleteTopicRuleRequest = {
        let defaultInstance = IotModel.DeleteTopicRuleRequest(
            ruleName: "0")

        return defaultInstance
    }()
}

public extension DeleteV2LoggingLevelRequest {
    /**
     Default instance of the DeleteV2LoggingLevelRequest structure.
     */
    public static let __default: IotModel.DeleteV2LoggingLevelRequest = {
        let defaultInstance = IotModel.DeleteV2LoggingLevelRequest(
            targetName: "value",
            targetType: .__default)

        return defaultInstance
    }()
}

public extension Denied {
    /**
     Default instance of the Denied structure.
     */
    public static let __default: IotModel.Denied = {
        let defaultInstance = IotModel.Denied(
            explicitDeny: nil,
            implicitDeny: nil)

        return defaultInstance
    }()
}

public extension DeprecateThingTypeRequest {
    /**
     Default instance of the DeprecateThingTypeRequest structure.
     */
    public static let __default: IotModel.DeprecateThingTypeRequest = {
        let defaultInstance = IotModel.DeprecateThingTypeRequest(
            thingTypeName: "0",
            undoDeprecate: nil)

        return defaultInstance
    }()
}

public extension DeprecateThingTypeResponse {
    /**
     Default instance of the DeprecateThingTypeResponse structure.
     */
    public static let __default: IotModel.DeprecateThingTypeResponse = {
        let defaultInstance = IotModel.DeprecateThingTypeResponse()

        return defaultInstance
    }()
}

public extension DescribeAccountAuditConfigurationRequest {
    /**
     Default instance of the DescribeAccountAuditConfigurationRequest structure.
     */
    public static let __default: IotModel.DescribeAccountAuditConfigurationRequest = {
        let defaultInstance = IotModel.DescribeAccountAuditConfigurationRequest()

        return defaultInstance
    }()
}

public extension DescribeAccountAuditConfigurationResponse {
    /**
     Default instance of the DescribeAccountAuditConfigurationResponse structure.
     */
    public static let __default: IotModel.DescribeAccountAuditConfigurationResponse = {
        let defaultInstance = IotModel.DescribeAccountAuditConfigurationResponse(
            auditCheckConfigurations: nil,
            auditNotificationTargetConfigurations: nil,
            roleArn: nil)

        return defaultInstance
    }()
}

public extension DescribeAuditFindingRequest {
    /**
     Default instance of the DescribeAuditFindingRequest structure.
     */
    public static let __default: IotModel.DescribeAuditFindingRequest = {
        let defaultInstance = IotModel.DescribeAuditFindingRequest(
            findingId: "0")

        return defaultInstance
    }()
}

public extension DescribeAuditFindingResponse {
    /**
     Default instance of the DescribeAuditFindingResponse structure.
     */
    public static let __default: IotModel.DescribeAuditFindingResponse = {
        let defaultInstance = IotModel.DescribeAuditFindingResponse(
            finding: nil)

        return defaultInstance
    }()
}

public extension DescribeAuditMitigationActionsTaskRequest {
    /**
     Default instance of the DescribeAuditMitigationActionsTaskRequest structure.
     */
    public static let __default: IotModel.DescribeAuditMitigationActionsTaskRequest = {
        let defaultInstance = IotModel.DescribeAuditMitigationActionsTaskRequest(
            taskId: "0")

        return defaultInstance
    }()
}

public extension DescribeAuditMitigationActionsTaskResponse {
    /**
     Default instance of the DescribeAuditMitigationActionsTaskResponse structure.
     */
    public static let __default: IotModel.DescribeAuditMitigationActionsTaskResponse = {
        let defaultInstance = IotModel.DescribeAuditMitigationActionsTaskResponse(
            actionsDefinition: nil,
            auditCheckToActionsMapping: nil,
            endTime: nil,
            startTime: nil,
            target: nil,
            taskStatistics: nil,
            taskStatus: nil)

        return defaultInstance
    }()
}

public extension DescribeAuditTaskRequest {
    /**
     Default instance of the DescribeAuditTaskRequest structure.
     */
    public static let __default: IotModel.DescribeAuditTaskRequest = {
        let defaultInstance = IotModel.DescribeAuditTaskRequest(
            taskId: "0")

        return defaultInstance
    }()
}

public extension DescribeAuditTaskResponse {
    /**
     Default instance of the DescribeAuditTaskResponse structure.
     */
    public static let __default: IotModel.DescribeAuditTaskResponse = {
        let defaultInstance = IotModel.DescribeAuditTaskResponse(
            auditDetails: nil,
            scheduledAuditName: nil,
            taskStartTime: nil,
            taskStatistics: nil,
            taskStatus: nil,
            taskType: nil)

        return defaultInstance
    }()
}

public extension DescribeAuthorizerRequest {
    /**
     Default instance of the DescribeAuthorizerRequest structure.
     */
    public static let __default: IotModel.DescribeAuthorizerRequest = {
        let defaultInstance = IotModel.DescribeAuthorizerRequest(
            authorizerName: "0")

        return defaultInstance
    }()
}

public extension DescribeAuthorizerResponse {
    /**
     Default instance of the DescribeAuthorizerResponse structure.
     */
    public static let __default: IotModel.DescribeAuthorizerResponse = {
        let defaultInstance = IotModel.DescribeAuthorizerResponse(
            authorizerDescription: nil)

        return defaultInstance
    }()
}

public extension DescribeBillingGroupRequest {
    /**
     Default instance of the DescribeBillingGroupRequest structure.
     */
    public static let __default: IotModel.DescribeBillingGroupRequest = {
        let defaultInstance = IotModel.DescribeBillingGroupRequest(
            billingGroupName: "0")

        return defaultInstance
    }()
}

public extension DescribeBillingGroupResponse {
    /**
     Default instance of the DescribeBillingGroupResponse structure.
     */
    public static let __default: IotModel.DescribeBillingGroupResponse = {
        let defaultInstance = IotModel.DescribeBillingGroupResponse(
            billingGroupArn: nil,
            billingGroupId: nil,
            billingGroupMetadata: nil,
            billingGroupName: nil,
            billingGroupProperties: nil,
            version: nil)

        return defaultInstance
    }()
}

public extension DescribeCACertificateRequest {
    /**
     Default instance of the DescribeCACertificateRequest structure.
     */
    public static let __default: IotModel.DescribeCACertificateRequest = {
        let defaultInstance = IotModel.DescribeCACertificateRequest(
            certificateId: "0123456789012345678901234567890123456789012345678901234567890123")

        return defaultInstance
    }()
}

public extension DescribeCACertificateResponse {
    /**
     Default instance of the DescribeCACertificateResponse structure.
     */
    public static let __default: IotModel.DescribeCACertificateResponse = {
        let defaultInstance = IotModel.DescribeCACertificateResponse(
            certificateDescription: nil,
            registrationConfig: nil)

        return defaultInstance
    }()
}

public extension DescribeCertificateRequest {
    /**
     Default instance of the DescribeCertificateRequest structure.
     */
    public static let __default: IotModel.DescribeCertificateRequest = {
        let defaultInstance = IotModel.DescribeCertificateRequest(
            certificateId: "0123456789012345678901234567890123456789012345678901234567890123")

        return defaultInstance
    }()
}

public extension DescribeCertificateResponse {
    /**
     Default instance of the DescribeCertificateResponse structure.
     */
    public static let __default: IotModel.DescribeCertificateResponse = {
        let defaultInstance = IotModel.DescribeCertificateResponse(
            certificateDescription: nil)

        return defaultInstance
    }()
}

public extension DescribeDefaultAuthorizerRequest {
    /**
     Default instance of the DescribeDefaultAuthorizerRequest structure.
     */
    public static let __default: IotModel.DescribeDefaultAuthorizerRequest = {
        let defaultInstance = IotModel.DescribeDefaultAuthorizerRequest()

        return defaultInstance
    }()
}

public extension DescribeDefaultAuthorizerResponse {
    /**
     Default instance of the DescribeDefaultAuthorizerResponse structure.
     */
    public static let __default: IotModel.DescribeDefaultAuthorizerResponse = {
        let defaultInstance = IotModel.DescribeDefaultAuthorizerResponse(
            authorizerDescription: nil)

        return defaultInstance
    }()
}

public extension DescribeEndpointRequest {
    /**
     Default instance of the DescribeEndpointRequest structure.
     */
    public static let __default: IotModel.DescribeEndpointRequest = {
        let defaultInstance = IotModel.DescribeEndpointRequest(
            endpointType: nil)

        return defaultInstance
    }()
}

public extension DescribeEndpointResponse {
    /**
     Default instance of the DescribeEndpointResponse structure.
     */
    public static let __default: IotModel.DescribeEndpointResponse = {
        let defaultInstance = IotModel.DescribeEndpointResponse(
            endpointAddress: nil)

        return defaultInstance
    }()
}

public extension DescribeEventConfigurationsRequest {
    /**
     Default instance of the DescribeEventConfigurationsRequest structure.
     */
    public static let __default: IotModel.DescribeEventConfigurationsRequest = {
        let defaultInstance = IotModel.DescribeEventConfigurationsRequest()

        return defaultInstance
    }()
}

public extension DescribeEventConfigurationsResponse {
    /**
     Default instance of the DescribeEventConfigurationsResponse structure.
     */
    public static let __default: IotModel.DescribeEventConfigurationsResponse = {
        let defaultInstance = IotModel.DescribeEventConfigurationsResponse(
            creationDate: nil,
            eventConfigurations: nil,
            lastModifiedDate: nil)

        return defaultInstance
    }()
}

public extension DescribeIndexRequest {
    /**
     Default instance of the DescribeIndexRequest structure.
     */
    public static let __default: IotModel.DescribeIndexRequest = {
        let defaultInstance = IotModel.DescribeIndexRequest(
            indexName: "0")

        return defaultInstance
    }()
}

public extension DescribeIndexResponse {
    /**
     Default instance of the DescribeIndexResponse structure.
     */
    public static let __default: IotModel.DescribeIndexResponse = {
        let defaultInstance = IotModel.DescribeIndexResponse(
            indexName: nil,
            indexStatus: nil,
            schema: nil)

        return defaultInstance
    }()
}

public extension DescribeJobExecutionRequest {
    /**
     Default instance of the DescribeJobExecutionRequest structure.
     */
    public static let __default: IotModel.DescribeJobExecutionRequest = {
        let defaultInstance = IotModel.DescribeJobExecutionRequest(
            executionNumber: nil,
            jobId: "0",
            thingName: "0")

        return defaultInstance
    }()
}

public extension DescribeJobExecutionResponse {
    /**
     Default instance of the DescribeJobExecutionResponse structure.
     */
    public static let __default: IotModel.DescribeJobExecutionResponse = {
        let defaultInstance = IotModel.DescribeJobExecutionResponse(
            execution: nil)

        return defaultInstance
    }()
}

public extension DescribeJobRequest {
    /**
     Default instance of the DescribeJobRequest structure.
     */
    public static let __default: IotModel.DescribeJobRequest = {
        let defaultInstance = IotModel.DescribeJobRequest(
            jobId: "0")

        return defaultInstance
    }()
}

public extension DescribeJobResponse {
    /**
     Default instance of the DescribeJobResponse structure.
     */
    public static let __default: IotModel.DescribeJobResponse = {
        let defaultInstance = IotModel.DescribeJobResponse(
            documentSource: nil,
            job: nil)

        return defaultInstance
    }()
}

public extension DescribeMitigationActionRequest {
    /**
     Default instance of the DescribeMitigationActionRequest structure.
     */
    public static let __default: IotModel.DescribeMitigationActionRequest = {
        let defaultInstance = IotModel.DescribeMitigationActionRequest(
            actionName: "")

        return defaultInstance
    }()
}

public extension DescribeMitigationActionResponse {
    /**
     Default instance of the DescribeMitigationActionResponse structure.
     */
    public static let __default: IotModel.DescribeMitigationActionResponse = {
        let defaultInstance = IotModel.DescribeMitigationActionResponse(
            actionArn: nil,
            actionId: nil,
            actionName: nil,
            actionParams: nil,
            actionType: nil,
            creationDate: nil,
            lastModifiedDate: nil,
            roleArn: nil)

        return defaultInstance
    }()
}

public extension DescribeRoleAliasRequest {
    /**
     Default instance of the DescribeRoleAliasRequest structure.
     */
    public static let __default: IotModel.DescribeRoleAliasRequest = {
        let defaultInstance = IotModel.DescribeRoleAliasRequest(
            roleAlias: "0")

        return defaultInstance
    }()
}

public extension DescribeRoleAliasResponse {
    /**
     Default instance of the DescribeRoleAliasResponse structure.
     */
    public static let __default: IotModel.DescribeRoleAliasResponse = {
        let defaultInstance = IotModel.DescribeRoleAliasResponse(
            roleAliasDescription: nil)

        return defaultInstance
    }()
}

public extension DescribeScheduledAuditRequest {
    /**
     Default instance of the DescribeScheduledAuditRequest structure.
     */
    public static let __default: IotModel.DescribeScheduledAuditRequest = {
        let defaultInstance = IotModel.DescribeScheduledAuditRequest(
            scheduledAuditName: "0")

        return defaultInstance
    }()
}

public extension DescribeScheduledAuditResponse {
    /**
     Default instance of the DescribeScheduledAuditResponse structure.
     */
    public static let __default: IotModel.DescribeScheduledAuditResponse = {
        let defaultInstance = IotModel.DescribeScheduledAuditResponse(
            dayOfMonth: nil,
            dayOfWeek: nil,
            frequency: nil,
            scheduledAuditArn: nil,
            scheduledAuditName: nil,
            targetCheckNames: nil)

        return defaultInstance
    }()
}

public extension DescribeSecurityProfileRequest {
    /**
     Default instance of the DescribeSecurityProfileRequest structure.
     */
    public static let __default: IotModel.DescribeSecurityProfileRequest = {
        let defaultInstance = IotModel.DescribeSecurityProfileRequest(
            securityProfileName: "0")

        return defaultInstance
    }()
}

public extension DescribeSecurityProfileResponse {
    /**
     Default instance of the DescribeSecurityProfileResponse structure.
     */
    public static let __default: IotModel.DescribeSecurityProfileResponse = {
        let defaultInstance = IotModel.DescribeSecurityProfileResponse(
            additionalMetricsToRetain: nil,
            alertTargets: nil,
            behaviors: nil,
            creationDate: nil,
            lastModifiedDate: nil,
            securityProfileArn: nil,
            securityProfileDescription: nil,
            securityProfileName: nil,
            version: nil)

        return defaultInstance
    }()
}

public extension DescribeStreamRequest {
    /**
     Default instance of the DescribeStreamRequest structure.
     */
    public static let __default: IotModel.DescribeStreamRequest = {
        let defaultInstance = IotModel.DescribeStreamRequest(
            streamId: "0")

        return defaultInstance
    }()
}

public extension DescribeStreamResponse {
    /**
     Default instance of the DescribeStreamResponse structure.
     */
    public static let __default: IotModel.DescribeStreamResponse = {
        let defaultInstance = IotModel.DescribeStreamResponse(
            streamInfo: nil)

        return defaultInstance
    }()
}

public extension DescribeThingGroupRequest {
    /**
     Default instance of the DescribeThingGroupRequest structure.
     */
    public static let __default: IotModel.DescribeThingGroupRequest = {
        let defaultInstance = IotModel.DescribeThingGroupRequest(
            thingGroupName: "0")

        return defaultInstance
    }()
}

public extension DescribeThingGroupResponse {
    /**
     Default instance of the DescribeThingGroupResponse structure.
     */
    public static let __default: IotModel.DescribeThingGroupResponse = {
        let defaultInstance = IotModel.DescribeThingGroupResponse(
            indexName: nil,
            queryString: nil,
            queryVersion: nil,
            status: nil,
            thingGroupArn: nil,
            thingGroupId: nil,
            thingGroupMetadata: nil,
            thingGroupName: nil,
            thingGroupProperties: nil,
            version: nil)

        return defaultInstance
    }()
}

public extension DescribeThingRegistrationTaskRequest {
    /**
     Default instance of the DescribeThingRegistrationTaskRequest structure.
     */
    public static let __default: IotModel.DescribeThingRegistrationTaskRequest = {
        let defaultInstance = IotModel.DescribeThingRegistrationTaskRequest(
            taskId: "")

        return defaultInstance
    }()
}

public extension DescribeThingRegistrationTaskResponse {
    /**
     Default instance of the DescribeThingRegistrationTaskResponse structure.
     */
    public static let __default: IotModel.DescribeThingRegistrationTaskResponse = {
        let defaultInstance = IotModel.DescribeThingRegistrationTaskResponse(
            creationDate: nil,
            failureCount: nil,
            inputFileBucket: nil,
            inputFileKey: nil,
            lastModifiedDate: nil,
            message: nil,
            percentageProgress: nil,
            roleArn: nil,
            status: nil,
            successCount: nil,
            taskId: nil,
            templateBody: nil)

        return defaultInstance
    }()
}

public extension DescribeThingRequest {
    /**
     Default instance of the DescribeThingRequest structure.
     */
    public static let __default: IotModel.DescribeThingRequest = {
        let defaultInstance = IotModel.DescribeThingRequest(
            thingName: "0")

        return defaultInstance
    }()
}

public extension DescribeThingResponse {
    /**
     Default instance of the DescribeThingResponse structure.
     */
    public static let __default: IotModel.DescribeThingResponse = {
        let defaultInstance = IotModel.DescribeThingResponse(
            attributes: nil,
            billingGroupName: nil,
            defaultClientId: nil,
            thingArn: nil,
            thingId: nil,
            thingName: nil,
            thingTypeName: nil,
            version: nil)

        return defaultInstance
    }()
}

public extension DescribeThingTypeRequest {
    /**
     Default instance of the DescribeThingTypeRequest structure.
     */
    public static let __default: IotModel.DescribeThingTypeRequest = {
        let defaultInstance = IotModel.DescribeThingTypeRequest(
            thingTypeName: "0")

        return defaultInstance
    }()
}

public extension DescribeThingTypeResponse {
    /**
     Default instance of the DescribeThingTypeResponse structure.
     */
    public static let __default: IotModel.DescribeThingTypeResponse = {
        let defaultInstance = IotModel.DescribeThingTypeResponse(
            thingTypeArn: nil,
            thingTypeId: nil,
            thingTypeMetadata: nil,
            thingTypeName: nil,
            thingTypeProperties: nil)

        return defaultInstance
    }()
}

public extension Destination {
    /**
     Default instance of the Destination structure.
     */
    public static let __default: IotModel.Destination = {
        let defaultInstance = IotModel.Destination(
            s3Destination: nil)

        return defaultInstance
    }()
}

public extension DetachPolicyRequest {
    /**
     Default instance of the DetachPolicyRequest structure.
     */
    public static let __default: IotModel.DetachPolicyRequest = {
        let defaultInstance = IotModel.DetachPolicyRequest(
            policyName: "0",
            target: "value")

        return defaultInstance
    }()
}

public extension DetachPrincipalPolicyRequest {
    /**
     Default instance of the DetachPrincipalPolicyRequest structure.
     */
    public static let __default: IotModel.DetachPrincipalPolicyRequest = {
        let defaultInstance = IotModel.DetachPrincipalPolicyRequest(
            policyName: "0",
            principal: "value")

        return defaultInstance
    }()
}

public extension DetachSecurityProfileRequest {
    /**
     Default instance of the DetachSecurityProfileRequest structure.
     */
    public static let __default: IotModel.DetachSecurityProfileRequest = {
        let defaultInstance = IotModel.DetachSecurityProfileRequest(
            securityProfileName: "0",
            securityProfileTargetArn: "value")

        return defaultInstance
    }()
}

public extension DetachSecurityProfileResponse {
    /**
     Default instance of the DetachSecurityProfileResponse structure.
     */
    public static let __default: IotModel.DetachSecurityProfileResponse = {
        let defaultInstance = IotModel.DetachSecurityProfileResponse()

        return defaultInstance
    }()
}

public extension DetachThingPrincipalRequest {
    /**
     Default instance of the DetachThingPrincipalRequest structure.
     */
    public static let __default: IotModel.DetachThingPrincipalRequest = {
        let defaultInstance = IotModel.DetachThingPrincipalRequest(
            principal: "value",
            thingName: "0")

        return defaultInstance
    }()
}

public extension DetachThingPrincipalResponse {
    /**
     Default instance of the DetachThingPrincipalResponse structure.
     */
    public static let __default: IotModel.DetachThingPrincipalResponse = {
        let defaultInstance = IotModel.DetachThingPrincipalResponse()

        return defaultInstance
    }()
}

public extension DisableTopicRuleRequest {
    /**
     Default instance of the DisableTopicRuleRequest structure.
     */
    public static let __default: IotModel.DisableTopicRuleRequest = {
        let defaultInstance = IotModel.DisableTopicRuleRequest(
            ruleName: "0")

        return defaultInstance
    }()
}

public extension DynamoDBAction {
    /**
     Default instance of the DynamoDBAction structure.
     */
    public static let __default: IotModel.DynamoDBAction = {
        let defaultInstance = IotModel.DynamoDBAction(
            hashKeyField: "value",
            hashKeyType: nil,
            hashKeyValue: "value",
            operation: nil,
            payloadField: nil,
            rangeKeyField: nil,
            rangeKeyType: nil,
            rangeKeyValue: nil,
            roleArn: "value",
            tableName: "value")

        return defaultInstance
    }()
}

public extension DynamoDBv2Action {
    /**
     Default instance of the DynamoDBv2Action structure.
     */
    public static let __default: IotModel.DynamoDBv2Action = {
        let defaultInstance = IotModel.DynamoDBv2Action(
            putItem: PutItemInput.__default,
            roleArn: "value")

        return defaultInstance
    }()
}

public extension EffectivePolicy {
    /**
     Default instance of the EffectivePolicy structure.
     */
    public static let __default: IotModel.EffectivePolicy = {
        let defaultInstance = IotModel.EffectivePolicy(
            policyArn: nil,
            policyDocument: nil,
            policyName: nil)

        return defaultInstance
    }()
}

public extension ElasticsearchAction {
    /**
     Default instance of the ElasticsearchAction structure.
     */
    public static let __default: IotModel.ElasticsearchAction = {
        let defaultInstance = IotModel.ElasticsearchAction(
            endpoint: "",
            id: "value",
            index: "value",
            roleArn: "value",
            type: "value")

        return defaultInstance
    }()
}

public extension EnableIoTLoggingParams {
    /**
     Default instance of the EnableIoTLoggingParams structure.
     */
    public static let __default: IotModel.EnableIoTLoggingParams = {
        let defaultInstance = IotModel.EnableIoTLoggingParams(
            logLevel: .__default,
            roleArnForLogging: "01234567890123456789")

        return defaultInstance
    }()
}

public extension EnableTopicRuleRequest {
    /**
     Default instance of the EnableTopicRuleRequest structure.
     */
    public static let __default: IotModel.EnableTopicRuleRequest = {
        let defaultInstance = IotModel.EnableTopicRuleRequest(
            ruleName: "0")

        return defaultInstance
    }()
}

public extension ErrorInfo {
    /**
     Default instance of the ErrorInfo structure.
     */
    public static let __default: IotModel.ErrorInfo = {
        let defaultInstance = IotModel.ErrorInfo(
            code: nil,
            message: nil)

        return defaultInstance
    }()
}

public extension ExplicitDeny {
    /**
     Default instance of the ExplicitDeny structure.
     */
    public static let __default: IotModel.ExplicitDeny = {
        let defaultInstance = IotModel.ExplicitDeny(
            policies: nil)

        return defaultInstance
    }()
}

public extension ExponentialRolloutRate {
    /**
     Default instance of the ExponentialRolloutRate structure.
     */
    public static let __default: IotModel.ExponentialRolloutRate = {
        let defaultInstance = IotModel.ExponentialRolloutRate(
            baseRatePerMinute: 0,
            incrementFactor: 0.0,
            rateIncreaseCriteria: RateIncreaseCriteria.__default)

        return defaultInstance
    }()
}

public extension FileLocation {
    /**
     Default instance of the FileLocation structure.
     */
    public static let __default: IotModel.FileLocation = {
        let defaultInstance = IotModel.FileLocation(
            s3Location: nil,
            stream: nil)

        return defaultInstance
    }()
}

public extension FirehoseAction {
    /**
     Default instance of the FirehoseAction structure.
     */
    public static let __default: IotModel.FirehoseAction = {
        let defaultInstance = IotModel.FirehoseAction(
            deliveryStreamName: "value",
            roleArn: "value",
            separator: nil)

        return defaultInstance
    }()
}

public extension GetEffectivePoliciesRequest {
    /**
     Default instance of the GetEffectivePoliciesRequest structure.
     */
    public static let __default: IotModel.GetEffectivePoliciesRequest = {
        let defaultInstance = IotModel.GetEffectivePoliciesRequest(
            cognitoIdentityPoolId: nil,
            principal: nil,
            thingName: nil)

        return defaultInstance
    }()
}

public extension GetEffectivePoliciesResponse {
    /**
     Default instance of the GetEffectivePoliciesResponse structure.
     */
    public static let __default: IotModel.GetEffectivePoliciesResponse = {
        let defaultInstance = IotModel.GetEffectivePoliciesResponse(
            effectivePolicies: nil)

        return defaultInstance
    }()
}

public extension GetIndexingConfigurationRequest {
    /**
     Default instance of the GetIndexingConfigurationRequest structure.
     */
    public static let __default: IotModel.GetIndexingConfigurationRequest = {
        let defaultInstance = IotModel.GetIndexingConfigurationRequest()

        return defaultInstance
    }()
}

public extension GetIndexingConfigurationResponse {
    /**
     Default instance of the GetIndexingConfigurationResponse structure.
     */
    public static let __default: IotModel.GetIndexingConfigurationResponse = {
        let defaultInstance = IotModel.GetIndexingConfigurationResponse(
            thingGroupIndexingConfiguration: nil,
            thingIndexingConfiguration: nil)

        return defaultInstance
    }()
}

public extension GetJobDocumentRequest {
    /**
     Default instance of the GetJobDocumentRequest structure.
     */
    public static let __default: IotModel.GetJobDocumentRequest = {
        let defaultInstance = IotModel.GetJobDocumentRequest(
            jobId: "0")

        return defaultInstance
    }()
}

public extension GetJobDocumentResponse {
    /**
     Default instance of the GetJobDocumentResponse structure.
     */
    public static let __default: IotModel.GetJobDocumentResponse = {
        let defaultInstance = IotModel.GetJobDocumentResponse(
            document: nil)

        return defaultInstance
    }()
}

public extension GetLoggingOptionsRequest {
    /**
     Default instance of the GetLoggingOptionsRequest structure.
     */
    public static let __default: IotModel.GetLoggingOptionsRequest = {
        let defaultInstance = IotModel.GetLoggingOptionsRequest()

        return defaultInstance
    }()
}

public extension GetLoggingOptionsResponse {
    /**
     Default instance of the GetLoggingOptionsResponse structure.
     */
    public static let __default: IotModel.GetLoggingOptionsResponse = {
        let defaultInstance = IotModel.GetLoggingOptionsResponse(
            logLevel: nil,
            roleArn: nil)

        return defaultInstance
    }()
}

public extension GetOTAUpdateRequest {
    /**
     Default instance of the GetOTAUpdateRequest structure.
     */
    public static let __default: IotModel.GetOTAUpdateRequest = {
        let defaultInstance = IotModel.GetOTAUpdateRequest(
            otaUpdateId: "0")

        return defaultInstance
    }()
}

public extension GetOTAUpdateResponse {
    /**
     Default instance of the GetOTAUpdateResponse structure.
     */
    public static let __default: IotModel.GetOTAUpdateResponse = {
        let defaultInstance = IotModel.GetOTAUpdateResponse(
            otaUpdateInfo: nil)

        return defaultInstance
    }()
}

public extension GetPolicyRequest {
    /**
     Default instance of the GetPolicyRequest structure.
     */
    public static let __default: IotModel.GetPolicyRequest = {
        let defaultInstance = IotModel.GetPolicyRequest(
            policyName: "0")

        return defaultInstance
    }()
}

public extension GetPolicyResponse {
    /**
     Default instance of the GetPolicyResponse structure.
     */
    public static let __default: IotModel.GetPolicyResponse = {
        let defaultInstance = IotModel.GetPolicyResponse(
            creationDate: nil,
            defaultVersionId: nil,
            generationId: nil,
            lastModifiedDate: nil,
            policyArn: nil,
            policyDocument: nil,
            policyName: nil)

        return defaultInstance
    }()
}

public extension GetPolicyVersionRequest {
    /**
     Default instance of the GetPolicyVersionRequest structure.
     */
    public static let __default: IotModel.GetPolicyVersionRequest = {
        let defaultInstance = IotModel.GetPolicyVersionRequest(
            policyName: "0",
            policyVersionId: "")

        return defaultInstance
    }()
}

public extension GetPolicyVersionResponse {
    /**
     Default instance of the GetPolicyVersionResponse structure.
     */
    public static let __default: IotModel.GetPolicyVersionResponse = {
        let defaultInstance = IotModel.GetPolicyVersionResponse(
            creationDate: nil,
            generationId: nil,
            isDefaultVersion: nil,
            lastModifiedDate: nil,
            policyArn: nil,
            policyDocument: nil,
            policyName: nil,
            policyVersionId: nil)

        return defaultInstance
    }()
}

public extension GetRegistrationCodeRequest {
    /**
     Default instance of the GetRegistrationCodeRequest structure.
     */
    public static let __default: IotModel.GetRegistrationCodeRequest = {
        let defaultInstance = IotModel.GetRegistrationCodeRequest()

        return defaultInstance
    }()
}

public extension GetRegistrationCodeResponse {
    /**
     Default instance of the GetRegistrationCodeResponse structure.
     */
    public static let __default: IotModel.GetRegistrationCodeResponse = {
        let defaultInstance = IotModel.GetRegistrationCodeResponse(
            registrationCode: nil)

        return defaultInstance
    }()
}

public extension GetStatisticsRequest {
    /**
     Default instance of the GetStatisticsRequest structure.
     */
    public static let __default: IotModel.GetStatisticsRequest = {
        let defaultInstance = IotModel.GetStatisticsRequest(
            aggregationField: nil,
            indexName: nil,
            queryString: "0",
            queryVersion: nil)

        return defaultInstance
    }()
}

public extension GetStatisticsResponse {
    /**
     Default instance of the GetStatisticsResponse structure.
     */
    public static let __default: IotModel.GetStatisticsResponse = {
        let defaultInstance = IotModel.GetStatisticsResponse(
            statistics: nil)

        return defaultInstance
    }()
}

public extension GetTopicRuleRequest {
    /**
     Default instance of the GetTopicRuleRequest structure.
     */
    public static let __default: IotModel.GetTopicRuleRequest = {
        let defaultInstance = IotModel.GetTopicRuleRequest(
            ruleName: "0")

        return defaultInstance
    }()
}

public extension GetTopicRuleResponse {
    /**
     Default instance of the GetTopicRuleResponse structure.
     */
    public static let __default: IotModel.GetTopicRuleResponse = {
        let defaultInstance = IotModel.GetTopicRuleResponse(
            rule: nil,
            ruleArn: nil)

        return defaultInstance
    }()
}

public extension GetV2LoggingOptionsRequest {
    /**
     Default instance of the GetV2LoggingOptionsRequest structure.
     */
    public static let __default: IotModel.GetV2LoggingOptionsRequest = {
        let defaultInstance = IotModel.GetV2LoggingOptionsRequest()

        return defaultInstance
    }()
}

public extension GetV2LoggingOptionsResponse {
    /**
     Default instance of the GetV2LoggingOptionsResponse structure.
     */
    public static let __default: IotModel.GetV2LoggingOptionsResponse = {
        let defaultInstance = IotModel.GetV2LoggingOptionsResponse(
            defaultLogLevel: nil,
            disableAllLogs: nil,
            roleArn: nil)

        return defaultInstance
    }()
}

public extension GroupNameAndArn {
    /**
     Default instance of the GroupNameAndArn structure.
     */
    public static let __default: IotModel.GroupNameAndArn = {
        let defaultInstance = IotModel.GroupNameAndArn(
            groupArn: nil,
            groupName: nil)

        return defaultInstance
    }()
}

public extension ImplicitDeny {
    /**
     Default instance of the ImplicitDeny structure.
     */
    public static let __default: IotModel.ImplicitDeny = {
        let defaultInstance = IotModel.ImplicitDeny(
            policies: nil)

        return defaultInstance
    }()
}

public extension IndexNotReadyException {
    /**
     Default instance of the IndexNotReadyException structure.
     */
    public static let __default: IotModel.IndexNotReadyException = {
        let defaultInstance = IotModel.IndexNotReadyException(
            message: nil)

        return defaultInstance
    }()
}

public extension InternalException {
    /**
     Default instance of the InternalException structure.
     */
    public static let __default: IotModel.InternalException = {
        let defaultInstance = IotModel.InternalException(
            message: nil)

        return defaultInstance
    }()
}

public extension InternalFailureException {
    /**
     Default instance of the InternalFailureException structure.
     */
    public static let __default: IotModel.InternalFailureException = {
        let defaultInstance = IotModel.InternalFailureException(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidAggregationException {
    /**
     Default instance of the InvalidAggregationException structure.
     */
    public static let __default: IotModel.InvalidAggregationException = {
        let defaultInstance = IotModel.InvalidAggregationException(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidQueryException {
    /**
     Default instance of the InvalidQueryException structure.
     */
    public static let __default: IotModel.InvalidQueryException = {
        let defaultInstance = IotModel.InvalidQueryException(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidRequestException {
    /**
     Default instance of the InvalidRequestException structure.
     */
    public static let __default: IotModel.InvalidRequestException = {
        let defaultInstance = IotModel.InvalidRequestException(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidResponseException {
    /**
     Default instance of the InvalidResponseException structure.
     */
    public static let __default: IotModel.InvalidResponseException = {
        let defaultInstance = IotModel.InvalidResponseException(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidStateTransitionException {
    /**
     Default instance of the InvalidStateTransitionException structure.
     */
    public static let __default: IotModel.InvalidStateTransitionException = {
        let defaultInstance = IotModel.InvalidStateTransitionException(
            message: nil)

        return defaultInstance
    }()
}

public extension IotAnalyticsAction {
    /**
     Default instance of the IotAnalyticsAction structure.
     */
    public static let __default: IotModel.IotAnalyticsAction = {
        let defaultInstance = IotModel.IotAnalyticsAction(
            channelArn: nil,
            channelName: nil,
            roleArn: nil)

        return defaultInstance
    }()
}

public extension IotEventsAction {
    /**
     Default instance of the IotEventsAction structure.
     */
    public static let __default: IotModel.IotEventsAction = {
        let defaultInstance = IotModel.IotEventsAction(
            inputName: "0",
            messageId: nil,
            roleArn: "value")

        return defaultInstance
    }()
}

public extension Job {
    /**
     Default instance of the Job structure.
     */
    public static let __default: IotModel.Job = {
        let defaultInstance = IotModel.Job(
            abortConfig: nil,
            comment: nil,
            completedAt: nil,
            createdAt: nil,
            description: nil,
            forceCanceled: nil,
            jobArn: nil,
            jobExecutionsRolloutConfig: nil,
            jobId: nil,
            jobProcessDetails: nil,
            lastUpdatedAt: nil,
            presignedUrlConfig: nil,
            reasonCode: nil,
            status: nil,
            targetSelection: nil,
            targets: nil,
            timeoutConfig: nil)

        return defaultInstance
    }()
}

public extension JobExecution {
    /**
     Default instance of the JobExecution structure.
     */
    public static let __default: IotModel.JobExecution = {
        let defaultInstance = IotModel.JobExecution(
            approximateSecondsBeforeTimedOut: nil,
            executionNumber: nil,
            forceCanceled: nil,
            jobId: nil,
            lastUpdatedAt: nil,
            queuedAt: nil,
            startedAt: nil,
            status: nil,
            statusDetails: nil,
            thingArn: nil,
            versionNumber: nil)

        return defaultInstance
    }()
}

public extension JobExecutionStatusDetails {
    /**
     Default instance of the JobExecutionStatusDetails structure.
     */
    public static let __default: IotModel.JobExecutionStatusDetails = {
        let defaultInstance = IotModel.JobExecutionStatusDetails(
            detailsMap: nil)

        return defaultInstance
    }()
}

public extension JobExecutionSummary {
    /**
     Default instance of the JobExecutionSummary structure.
     */
    public static let __default: IotModel.JobExecutionSummary = {
        let defaultInstance = IotModel.JobExecutionSummary(
            executionNumber: nil,
            lastUpdatedAt: nil,
            queuedAt: nil,
            startedAt: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension JobExecutionSummaryForJob {
    /**
     Default instance of the JobExecutionSummaryForJob structure.
     */
    public static let __default: IotModel.JobExecutionSummaryForJob = {
        let defaultInstance = IotModel.JobExecutionSummaryForJob(
            jobExecutionSummary: nil,
            thingArn: nil)

        return defaultInstance
    }()
}

public extension JobExecutionSummaryForThing {
    /**
     Default instance of the JobExecutionSummaryForThing structure.
     */
    public static let __default: IotModel.JobExecutionSummaryForThing = {
        let defaultInstance = IotModel.JobExecutionSummaryForThing(
            jobExecutionSummary: nil,
            jobId: nil)

        return defaultInstance
    }()
}

public extension JobExecutionsRolloutConfig {
    /**
     Default instance of the JobExecutionsRolloutConfig structure.
     */
    public static let __default: IotModel.JobExecutionsRolloutConfig = {
        let defaultInstance = IotModel.JobExecutionsRolloutConfig(
            exponentialRate: nil,
            maximumPerMinute: nil)

        return defaultInstance
    }()
}

public extension JobProcessDetails {
    /**
     Default instance of the JobProcessDetails structure.
     */
    public static let __default: IotModel.JobProcessDetails = {
        let defaultInstance = IotModel.JobProcessDetails(
            numberOfCanceledThings: nil,
            numberOfFailedThings: nil,
            numberOfInProgressThings: nil,
            numberOfQueuedThings: nil,
            numberOfRejectedThings: nil,
            numberOfRemovedThings: nil,
            numberOfSucceededThings: nil,
            numberOfTimedOutThings: nil,
            processingTargets: nil)

        return defaultInstance
    }()
}

public extension JobSummary {
    /**
     Default instance of the JobSummary structure.
     */
    public static let __default: IotModel.JobSummary = {
        let defaultInstance = IotModel.JobSummary(
            completedAt: nil,
            createdAt: nil,
            jobArn: nil,
            jobId: nil,
            lastUpdatedAt: nil,
            status: nil,
            targetSelection: nil,
            thingGroupId: nil)

        return defaultInstance
    }()
}

public extension KeyPair {
    /**
     Default instance of the KeyPair structure.
     */
    public static let __default: IotModel.KeyPair = {
        let defaultInstance = IotModel.KeyPair(
            privateKey: nil,
            publicKey: nil)

        return defaultInstance
    }()
}

public extension KinesisAction {
    /**
     Default instance of the KinesisAction structure.
     */
    public static let __default: IotModel.KinesisAction = {
        let defaultInstance = IotModel.KinesisAction(
            partitionKey: nil,
            roleArn: "value",
            streamName: "value")

        return defaultInstance
    }()
}

public extension LambdaAction {
    /**
     Default instance of the LambdaAction structure.
     */
    public static let __default: IotModel.LambdaAction = {
        let defaultInstance = IotModel.LambdaAction(
            functionArn: "value")

        return defaultInstance
    }()
}

public extension LimitExceededException {
    /**
     Default instance of the LimitExceededException structure.
     */
    public static let __default: IotModel.LimitExceededException = {
        let defaultInstance = IotModel.LimitExceededException(
            message: nil)

        return defaultInstance
    }()
}

public extension ListActiveViolationsRequest {
    /**
     Default instance of the ListActiveViolationsRequest structure.
     */
    public static let __default: IotModel.ListActiveViolationsRequest = {
        let defaultInstance = IotModel.ListActiveViolationsRequest(
            maxResults: nil,
            nextToken: nil,
            securityProfileName: nil,
            thingName: nil)

        return defaultInstance
    }()
}

public extension ListActiveViolationsResponse {
    /**
     Default instance of the ListActiveViolationsResponse structure.
     */
    public static let __default: IotModel.ListActiveViolationsResponse = {
        let defaultInstance = IotModel.ListActiveViolationsResponse(
            activeViolations: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListAttachedPoliciesRequest {
    /**
     Default instance of the ListAttachedPoliciesRequest structure.
     */
    public static let __default: IotModel.ListAttachedPoliciesRequest = {
        let defaultInstance = IotModel.ListAttachedPoliciesRequest(
            marker: nil,
            pageSize: nil,
            recursive: nil,
            target: "value")

        return defaultInstance
    }()
}

public extension ListAttachedPoliciesResponse {
    /**
     Default instance of the ListAttachedPoliciesResponse structure.
     */
    public static let __default: IotModel.ListAttachedPoliciesResponse = {
        let defaultInstance = IotModel.ListAttachedPoliciesResponse(
            nextMarker: nil,
            policies: nil)

        return defaultInstance
    }()
}

public extension ListAuditFindingsRequest {
    /**
     Default instance of the ListAuditFindingsRequest structure.
     */
    public static let __default: IotModel.ListAuditFindingsRequest = {
        let defaultInstance = IotModel.ListAuditFindingsRequest(
            checkName: nil,
            endTime: nil,
            maxResults: nil,
            nextToken: nil,
            resourceIdentifier: nil,
            startTime: nil,
            taskId: nil)

        return defaultInstance
    }()
}

public extension ListAuditFindingsResponse {
    /**
     Default instance of the ListAuditFindingsResponse structure.
     */
    public static let __default: IotModel.ListAuditFindingsResponse = {
        let defaultInstance = IotModel.ListAuditFindingsResponse(
            findings: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListAuditMitigationActionsExecutionsRequest {
    /**
     Default instance of the ListAuditMitigationActionsExecutionsRequest structure.
     */
    public static let __default: IotModel.ListAuditMitigationActionsExecutionsRequest = {
        let defaultInstance = IotModel.ListAuditMitigationActionsExecutionsRequest(
            actionStatus: nil,
            findingId: "0",
            maxResults: nil,
            nextToken: nil,
            taskId: "0")

        return defaultInstance
    }()
}

public extension ListAuditMitigationActionsExecutionsResponse {
    /**
     Default instance of the ListAuditMitigationActionsExecutionsResponse structure.
     */
    public static let __default: IotModel.ListAuditMitigationActionsExecutionsResponse = {
        let defaultInstance = IotModel.ListAuditMitigationActionsExecutionsResponse(
            actionsExecutions: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListAuditMitigationActionsTasksRequest {
    /**
     Default instance of the ListAuditMitigationActionsTasksRequest structure.
     */
    public static let __default: IotModel.ListAuditMitigationActionsTasksRequest = {
        let defaultInstance = IotModel.ListAuditMitigationActionsTasksRequest(
            auditTaskId: nil,
            endTime: "2013-02-18T17:00:00Z",
            findingId: nil,
            maxResults: nil,
            nextToken: nil,
            startTime: "2013-02-18T17:00:00Z",
            taskStatus: nil)

        return defaultInstance
    }()
}

public extension ListAuditMitigationActionsTasksResponse {
    /**
     Default instance of the ListAuditMitigationActionsTasksResponse structure.
     */
    public static let __default: IotModel.ListAuditMitigationActionsTasksResponse = {
        let defaultInstance = IotModel.ListAuditMitigationActionsTasksResponse(
            nextToken: nil,
            tasks: nil)

        return defaultInstance
    }()
}

public extension ListAuditTasksRequest {
    /**
     Default instance of the ListAuditTasksRequest structure.
     */
    public static let __default: IotModel.ListAuditTasksRequest = {
        let defaultInstance = IotModel.ListAuditTasksRequest(
            endTime: "2013-02-18T17:00:00Z",
            maxResults: nil,
            nextToken: nil,
            startTime: "2013-02-18T17:00:00Z",
            taskStatus: nil,
            taskType: nil)

        return defaultInstance
    }()
}

public extension ListAuditTasksResponse {
    /**
     Default instance of the ListAuditTasksResponse structure.
     */
    public static let __default: IotModel.ListAuditTasksResponse = {
        let defaultInstance = IotModel.ListAuditTasksResponse(
            nextToken: nil,
            tasks: nil)

        return defaultInstance
    }()
}

public extension ListAuthorizersRequest {
    /**
     Default instance of the ListAuthorizersRequest structure.
     */
    public static let __default: IotModel.ListAuthorizersRequest = {
        let defaultInstance = IotModel.ListAuthorizersRequest(
            ascendingOrder: nil,
            marker: nil,
            pageSize: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension ListAuthorizersResponse {
    /**
     Default instance of the ListAuthorizersResponse structure.
     */
    public static let __default: IotModel.ListAuthorizersResponse = {
        let defaultInstance = IotModel.ListAuthorizersResponse(
            authorizers: nil,
            nextMarker: nil)

        return defaultInstance
    }()
}

public extension ListBillingGroupsRequest {
    /**
     Default instance of the ListBillingGroupsRequest structure.
     */
    public static let __default: IotModel.ListBillingGroupsRequest = {
        let defaultInstance = IotModel.ListBillingGroupsRequest(
            maxResults: nil,
            namePrefixFilter: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListBillingGroupsResponse {
    /**
     Default instance of the ListBillingGroupsResponse structure.
     */
    public static let __default: IotModel.ListBillingGroupsResponse = {
        let defaultInstance = IotModel.ListBillingGroupsResponse(
            billingGroups: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListCACertificatesRequest {
    /**
     Default instance of the ListCACertificatesRequest structure.
     */
    public static let __default: IotModel.ListCACertificatesRequest = {
        let defaultInstance = IotModel.ListCACertificatesRequest(
            ascendingOrder: nil,
            marker: nil,
            pageSize: nil)

        return defaultInstance
    }()
}

public extension ListCACertificatesResponse {
    /**
     Default instance of the ListCACertificatesResponse structure.
     */
    public static let __default: IotModel.ListCACertificatesResponse = {
        let defaultInstance = IotModel.ListCACertificatesResponse(
            certificates: nil,
            nextMarker: nil)

        return defaultInstance
    }()
}

public extension ListCertificatesByCARequest {
    /**
     Default instance of the ListCertificatesByCARequest structure.
     */
    public static let __default: IotModel.ListCertificatesByCARequest = {
        let defaultInstance = IotModel.ListCertificatesByCARequest(
            ascendingOrder: nil,
            caCertificateId: "0123456789012345678901234567890123456789012345678901234567890123",
            marker: nil,
            pageSize: nil)

        return defaultInstance
    }()
}

public extension ListCertificatesByCAResponse {
    /**
     Default instance of the ListCertificatesByCAResponse structure.
     */
    public static let __default: IotModel.ListCertificatesByCAResponse = {
        let defaultInstance = IotModel.ListCertificatesByCAResponse(
            certificates: nil,
            nextMarker: nil)

        return defaultInstance
    }()
}

public extension ListCertificatesRequest {
    /**
     Default instance of the ListCertificatesRequest structure.
     */
    public static let __default: IotModel.ListCertificatesRequest = {
        let defaultInstance = IotModel.ListCertificatesRequest(
            ascendingOrder: nil,
            marker: nil,
            pageSize: nil)

        return defaultInstance
    }()
}

public extension ListCertificatesResponse {
    /**
     Default instance of the ListCertificatesResponse structure.
     */
    public static let __default: IotModel.ListCertificatesResponse = {
        let defaultInstance = IotModel.ListCertificatesResponse(
            certificates: nil,
            nextMarker: nil)

        return defaultInstance
    }()
}

public extension ListIndicesRequest {
    /**
     Default instance of the ListIndicesRequest structure.
     */
    public static let __default: IotModel.ListIndicesRequest = {
        let defaultInstance = IotModel.ListIndicesRequest(
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListIndicesResponse {
    /**
     Default instance of the ListIndicesResponse structure.
     */
    public static let __default: IotModel.ListIndicesResponse = {
        let defaultInstance = IotModel.ListIndicesResponse(
            indexNames: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListJobExecutionsForJobRequest {
    /**
     Default instance of the ListJobExecutionsForJobRequest structure.
     */
    public static let __default: IotModel.ListJobExecutionsForJobRequest = {
        let defaultInstance = IotModel.ListJobExecutionsForJobRequest(
            jobId: "0",
            maxResults: nil,
            nextToken: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension ListJobExecutionsForJobResponse {
    /**
     Default instance of the ListJobExecutionsForJobResponse structure.
     */
    public static let __default: IotModel.ListJobExecutionsForJobResponse = {
        let defaultInstance = IotModel.ListJobExecutionsForJobResponse(
            executionSummaries: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListJobExecutionsForThingRequest {
    /**
     Default instance of the ListJobExecutionsForThingRequest structure.
     */
    public static let __default: IotModel.ListJobExecutionsForThingRequest = {
        let defaultInstance = IotModel.ListJobExecutionsForThingRequest(
            maxResults: nil,
            nextToken: nil,
            status: nil,
            thingName: "0")

        return defaultInstance
    }()
}

public extension ListJobExecutionsForThingResponse {
    /**
     Default instance of the ListJobExecutionsForThingResponse structure.
     */
    public static let __default: IotModel.ListJobExecutionsForThingResponse = {
        let defaultInstance = IotModel.ListJobExecutionsForThingResponse(
            executionSummaries: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListJobsRequest {
    /**
     Default instance of the ListJobsRequest structure.
     */
    public static let __default: IotModel.ListJobsRequest = {
        let defaultInstance = IotModel.ListJobsRequest(
            maxResults: nil,
            nextToken: nil,
            status: nil,
            targetSelection: nil,
            thingGroupId: nil,
            thingGroupName: nil)

        return defaultInstance
    }()
}

public extension ListJobsResponse {
    /**
     Default instance of the ListJobsResponse structure.
     */
    public static let __default: IotModel.ListJobsResponse = {
        let defaultInstance = IotModel.ListJobsResponse(
            jobs: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListMitigationActionsRequest {
    /**
     Default instance of the ListMitigationActionsRequest structure.
     */
    public static let __default: IotModel.ListMitigationActionsRequest = {
        let defaultInstance = IotModel.ListMitigationActionsRequest(
            actionType: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListMitigationActionsResponse {
    /**
     Default instance of the ListMitigationActionsResponse structure.
     */
    public static let __default: IotModel.ListMitigationActionsResponse = {
        let defaultInstance = IotModel.ListMitigationActionsResponse(
            actionIdentifiers: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListOTAUpdatesRequest {
    /**
     Default instance of the ListOTAUpdatesRequest structure.
     */
    public static let __default: IotModel.ListOTAUpdatesRequest = {
        let defaultInstance = IotModel.ListOTAUpdatesRequest(
            maxResults: nil,
            nextToken: nil,
            otaUpdateStatus: nil)

        return defaultInstance
    }()
}

public extension ListOTAUpdatesResponse {
    /**
     Default instance of the ListOTAUpdatesResponse structure.
     */
    public static let __default: IotModel.ListOTAUpdatesResponse = {
        let defaultInstance = IotModel.ListOTAUpdatesResponse(
            nextToken: nil,
            otaUpdates: nil)

        return defaultInstance
    }()
}

public extension ListOutgoingCertificatesRequest {
    /**
     Default instance of the ListOutgoingCertificatesRequest structure.
     */
    public static let __default: IotModel.ListOutgoingCertificatesRequest = {
        let defaultInstance = IotModel.ListOutgoingCertificatesRequest(
            ascendingOrder: nil,
            marker: nil,
            pageSize: nil)

        return defaultInstance
    }()
}

public extension ListOutgoingCertificatesResponse {
    /**
     Default instance of the ListOutgoingCertificatesResponse structure.
     */
    public static let __default: IotModel.ListOutgoingCertificatesResponse = {
        let defaultInstance = IotModel.ListOutgoingCertificatesResponse(
            nextMarker: nil,
            outgoingCertificates: nil)

        return defaultInstance
    }()
}

public extension ListPoliciesRequest {
    /**
     Default instance of the ListPoliciesRequest structure.
     */
    public static let __default: IotModel.ListPoliciesRequest = {
        let defaultInstance = IotModel.ListPoliciesRequest(
            ascendingOrder: nil,
            marker: nil,
            pageSize: nil)

        return defaultInstance
    }()
}

public extension ListPoliciesResponse {
    /**
     Default instance of the ListPoliciesResponse structure.
     */
    public static let __default: IotModel.ListPoliciesResponse = {
        let defaultInstance = IotModel.ListPoliciesResponse(
            nextMarker: nil,
            policies: nil)

        return defaultInstance
    }()
}

public extension ListPolicyPrincipalsRequest {
    /**
     Default instance of the ListPolicyPrincipalsRequest structure.
     */
    public static let __default: IotModel.ListPolicyPrincipalsRequest = {
        let defaultInstance = IotModel.ListPolicyPrincipalsRequest(
            ascendingOrder: nil,
            marker: nil,
            pageSize: nil,
            policyName: "0")

        return defaultInstance
    }()
}

public extension ListPolicyPrincipalsResponse {
    /**
     Default instance of the ListPolicyPrincipalsResponse structure.
     */
    public static let __default: IotModel.ListPolicyPrincipalsResponse = {
        let defaultInstance = IotModel.ListPolicyPrincipalsResponse(
            nextMarker: nil,
            principals: nil)

        return defaultInstance
    }()
}

public extension ListPolicyVersionsRequest {
    /**
     Default instance of the ListPolicyVersionsRequest structure.
     */
    public static let __default: IotModel.ListPolicyVersionsRequest = {
        let defaultInstance = IotModel.ListPolicyVersionsRequest(
            policyName: "0")

        return defaultInstance
    }()
}

public extension ListPolicyVersionsResponse {
    /**
     Default instance of the ListPolicyVersionsResponse structure.
     */
    public static let __default: IotModel.ListPolicyVersionsResponse = {
        let defaultInstance = IotModel.ListPolicyVersionsResponse(
            policyVersions: nil)

        return defaultInstance
    }()
}

public extension ListPrincipalPoliciesRequest {
    /**
     Default instance of the ListPrincipalPoliciesRequest structure.
     */
    public static let __default: IotModel.ListPrincipalPoliciesRequest = {
        let defaultInstance = IotModel.ListPrincipalPoliciesRequest(
            ascendingOrder: nil,
            marker: nil,
            pageSize: nil,
            principal: "value")

        return defaultInstance
    }()
}

public extension ListPrincipalPoliciesResponse {
    /**
     Default instance of the ListPrincipalPoliciesResponse structure.
     */
    public static let __default: IotModel.ListPrincipalPoliciesResponse = {
        let defaultInstance = IotModel.ListPrincipalPoliciesResponse(
            nextMarker: nil,
            policies: nil)

        return defaultInstance
    }()
}

public extension ListPrincipalThingsRequest {
    /**
     Default instance of the ListPrincipalThingsRequest structure.
     */
    public static let __default: IotModel.ListPrincipalThingsRequest = {
        let defaultInstance = IotModel.ListPrincipalThingsRequest(
            maxResults: nil,
            nextToken: nil,
            principal: "value")

        return defaultInstance
    }()
}

public extension ListPrincipalThingsResponse {
    /**
     Default instance of the ListPrincipalThingsResponse structure.
     */
    public static let __default: IotModel.ListPrincipalThingsResponse = {
        let defaultInstance = IotModel.ListPrincipalThingsResponse(
            nextToken: nil,
            things: nil)

        return defaultInstance
    }()
}

public extension ListRoleAliasesRequest {
    /**
     Default instance of the ListRoleAliasesRequest structure.
     */
    public static let __default: IotModel.ListRoleAliasesRequest = {
        let defaultInstance = IotModel.ListRoleAliasesRequest(
            ascendingOrder: nil,
            marker: nil,
            pageSize: nil)

        return defaultInstance
    }()
}

public extension ListRoleAliasesResponse {
    /**
     Default instance of the ListRoleAliasesResponse structure.
     */
    public static let __default: IotModel.ListRoleAliasesResponse = {
        let defaultInstance = IotModel.ListRoleAliasesResponse(
            nextMarker: nil,
            roleAliases: nil)

        return defaultInstance
    }()
}

public extension ListScheduledAuditsRequest {
    /**
     Default instance of the ListScheduledAuditsRequest structure.
     */
    public static let __default: IotModel.ListScheduledAuditsRequest = {
        let defaultInstance = IotModel.ListScheduledAuditsRequest(
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListScheduledAuditsResponse {
    /**
     Default instance of the ListScheduledAuditsResponse structure.
     */
    public static let __default: IotModel.ListScheduledAuditsResponse = {
        let defaultInstance = IotModel.ListScheduledAuditsResponse(
            nextToken: nil,
            scheduledAudits: nil)

        return defaultInstance
    }()
}

public extension ListSecurityProfilesForTargetRequest {
    /**
     Default instance of the ListSecurityProfilesForTargetRequest structure.
     */
    public static let __default: IotModel.ListSecurityProfilesForTargetRequest = {
        let defaultInstance = IotModel.ListSecurityProfilesForTargetRequest(
            maxResults: nil,
            nextToken: nil,
            recursive: nil,
            securityProfileTargetArn: "value")

        return defaultInstance
    }()
}

public extension ListSecurityProfilesForTargetResponse {
    /**
     Default instance of the ListSecurityProfilesForTargetResponse structure.
     */
    public static let __default: IotModel.ListSecurityProfilesForTargetResponse = {
        let defaultInstance = IotModel.ListSecurityProfilesForTargetResponse(
            nextToken: nil,
            securityProfileTargetMappings: nil)

        return defaultInstance
    }()
}

public extension ListSecurityProfilesRequest {
    /**
     Default instance of the ListSecurityProfilesRequest structure.
     */
    public static let __default: IotModel.ListSecurityProfilesRequest = {
        let defaultInstance = IotModel.ListSecurityProfilesRequest(
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListSecurityProfilesResponse {
    /**
     Default instance of the ListSecurityProfilesResponse structure.
     */
    public static let __default: IotModel.ListSecurityProfilesResponse = {
        let defaultInstance = IotModel.ListSecurityProfilesResponse(
            nextToken: nil,
            securityProfileIdentifiers: nil)

        return defaultInstance
    }()
}

public extension ListStreamsRequest {
    /**
     Default instance of the ListStreamsRequest structure.
     */
    public static let __default: IotModel.ListStreamsRequest = {
        let defaultInstance = IotModel.ListStreamsRequest(
            ascendingOrder: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListStreamsResponse {
    /**
     Default instance of the ListStreamsResponse structure.
     */
    public static let __default: IotModel.ListStreamsResponse = {
        let defaultInstance = IotModel.ListStreamsResponse(
            nextToken: nil,
            streams: nil)

        return defaultInstance
    }()
}

public extension ListTagsForResourceRequest {
    /**
     Default instance of the ListTagsForResourceRequest structure.
     */
    public static let __default: IotModel.ListTagsForResourceRequest = {
        let defaultInstance = IotModel.ListTagsForResourceRequest(
            nextToken: nil,
            resourceArn: "value")

        return defaultInstance
    }()
}

public extension ListTagsForResourceResponse {
    /**
     Default instance of the ListTagsForResourceResponse structure.
     */
    public static let __default: IotModel.ListTagsForResourceResponse = {
        let defaultInstance = IotModel.ListTagsForResourceResponse(
            nextToken: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension ListTargetsForPolicyRequest {
    /**
     Default instance of the ListTargetsForPolicyRequest structure.
     */
    public static let __default: IotModel.ListTargetsForPolicyRequest = {
        let defaultInstance = IotModel.ListTargetsForPolicyRequest(
            marker: nil,
            pageSize: nil,
            policyName: "0")

        return defaultInstance
    }()
}

public extension ListTargetsForPolicyResponse {
    /**
     Default instance of the ListTargetsForPolicyResponse structure.
     */
    public static let __default: IotModel.ListTargetsForPolicyResponse = {
        let defaultInstance = IotModel.ListTargetsForPolicyResponse(
            nextMarker: nil,
            targets: nil)

        return defaultInstance
    }()
}

public extension ListTargetsForSecurityProfileRequest {
    /**
     Default instance of the ListTargetsForSecurityProfileRequest structure.
     */
    public static let __default: IotModel.ListTargetsForSecurityProfileRequest = {
        let defaultInstance = IotModel.ListTargetsForSecurityProfileRequest(
            maxResults: nil,
            nextToken: nil,
            securityProfileName: "0")

        return defaultInstance
    }()
}

public extension ListTargetsForSecurityProfileResponse {
    /**
     Default instance of the ListTargetsForSecurityProfileResponse structure.
     */
    public static let __default: IotModel.ListTargetsForSecurityProfileResponse = {
        let defaultInstance = IotModel.ListTargetsForSecurityProfileResponse(
            nextToken: nil,
            securityProfileTargets: nil)

        return defaultInstance
    }()
}

public extension ListThingGroupsForThingRequest {
    /**
     Default instance of the ListThingGroupsForThingRequest structure.
     */
    public static let __default: IotModel.ListThingGroupsForThingRequest = {
        let defaultInstance = IotModel.ListThingGroupsForThingRequest(
            maxResults: nil,
            nextToken: nil,
            thingName: "0")

        return defaultInstance
    }()
}

public extension ListThingGroupsForThingResponse {
    /**
     Default instance of the ListThingGroupsForThingResponse structure.
     */
    public static let __default: IotModel.ListThingGroupsForThingResponse = {
        let defaultInstance = IotModel.ListThingGroupsForThingResponse(
            nextToken: nil,
            thingGroups: nil)

        return defaultInstance
    }()
}

public extension ListThingGroupsRequest {
    /**
     Default instance of the ListThingGroupsRequest structure.
     */
    public static let __default: IotModel.ListThingGroupsRequest = {
        let defaultInstance = IotModel.ListThingGroupsRequest(
            maxResults: nil,
            namePrefixFilter: nil,
            nextToken: nil,
            parentGroup: nil,
            recursive: nil)

        return defaultInstance
    }()
}

public extension ListThingGroupsResponse {
    /**
     Default instance of the ListThingGroupsResponse structure.
     */
    public static let __default: IotModel.ListThingGroupsResponse = {
        let defaultInstance = IotModel.ListThingGroupsResponse(
            nextToken: nil,
            thingGroups: nil)

        return defaultInstance
    }()
}

public extension ListThingPrincipalsRequest {
    /**
     Default instance of the ListThingPrincipalsRequest structure.
     */
    public static let __default: IotModel.ListThingPrincipalsRequest = {
        let defaultInstance = IotModel.ListThingPrincipalsRequest(
            thingName: "0")

        return defaultInstance
    }()
}

public extension ListThingPrincipalsResponse {
    /**
     Default instance of the ListThingPrincipalsResponse structure.
     */
    public static let __default: IotModel.ListThingPrincipalsResponse = {
        let defaultInstance = IotModel.ListThingPrincipalsResponse(
            principals: nil)

        return defaultInstance
    }()
}

public extension ListThingRegistrationTaskReportsRequest {
    /**
     Default instance of the ListThingRegistrationTaskReportsRequest structure.
     */
    public static let __default: IotModel.ListThingRegistrationTaskReportsRequest = {
        let defaultInstance = IotModel.ListThingRegistrationTaskReportsRequest(
            maxResults: nil,
            nextToken: nil,
            reportType: .__default,
            taskId: "")

        return defaultInstance
    }()
}

public extension ListThingRegistrationTaskReportsResponse {
    /**
     Default instance of the ListThingRegistrationTaskReportsResponse structure.
     */
    public static let __default: IotModel.ListThingRegistrationTaskReportsResponse = {
        let defaultInstance = IotModel.ListThingRegistrationTaskReportsResponse(
            nextToken: nil,
            reportType: nil,
            resourceLinks: nil)

        return defaultInstance
    }()
}

public extension ListThingRegistrationTasksRequest {
    /**
     Default instance of the ListThingRegistrationTasksRequest structure.
     */
    public static let __default: IotModel.ListThingRegistrationTasksRequest = {
        let defaultInstance = IotModel.ListThingRegistrationTasksRequest(
            maxResults: nil,
            nextToken: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension ListThingRegistrationTasksResponse {
    /**
     Default instance of the ListThingRegistrationTasksResponse structure.
     */
    public static let __default: IotModel.ListThingRegistrationTasksResponse = {
        let defaultInstance = IotModel.ListThingRegistrationTasksResponse(
            nextToken: nil,
            taskIds: nil)

        return defaultInstance
    }()
}

public extension ListThingTypesRequest {
    /**
     Default instance of the ListThingTypesRequest structure.
     */
    public static let __default: IotModel.ListThingTypesRequest = {
        let defaultInstance = IotModel.ListThingTypesRequest(
            maxResults: nil,
            nextToken: nil,
            thingTypeName: nil)

        return defaultInstance
    }()
}

public extension ListThingTypesResponse {
    /**
     Default instance of the ListThingTypesResponse structure.
     */
    public static let __default: IotModel.ListThingTypesResponse = {
        let defaultInstance = IotModel.ListThingTypesResponse(
            nextToken: nil,
            thingTypes: nil)

        return defaultInstance
    }()
}

public extension ListThingsInBillingGroupRequest {
    /**
     Default instance of the ListThingsInBillingGroupRequest structure.
     */
    public static let __default: IotModel.ListThingsInBillingGroupRequest = {
        let defaultInstance = IotModel.ListThingsInBillingGroupRequest(
            billingGroupName: "0",
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListThingsInBillingGroupResponse {
    /**
     Default instance of the ListThingsInBillingGroupResponse structure.
     */
    public static let __default: IotModel.ListThingsInBillingGroupResponse = {
        let defaultInstance = IotModel.ListThingsInBillingGroupResponse(
            nextToken: nil,
            things: nil)

        return defaultInstance
    }()
}

public extension ListThingsInThingGroupRequest {
    /**
     Default instance of the ListThingsInThingGroupRequest structure.
     */
    public static let __default: IotModel.ListThingsInThingGroupRequest = {
        let defaultInstance = IotModel.ListThingsInThingGroupRequest(
            maxResults: nil,
            nextToken: nil,
            recursive: nil,
            thingGroupName: "0")

        return defaultInstance
    }()
}

public extension ListThingsInThingGroupResponse {
    /**
     Default instance of the ListThingsInThingGroupResponse structure.
     */
    public static let __default: IotModel.ListThingsInThingGroupResponse = {
        let defaultInstance = IotModel.ListThingsInThingGroupResponse(
            nextToken: nil,
            things: nil)

        return defaultInstance
    }()
}

public extension ListThingsRequest {
    /**
     Default instance of the ListThingsRequest structure.
     */
    public static let __default: IotModel.ListThingsRequest = {
        let defaultInstance = IotModel.ListThingsRequest(
            attributeName: nil,
            attributeValue: nil,
            maxResults: nil,
            nextToken: nil,
            thingTypeName: nil)

        return defaultInstance
    }()
}

public extension ListThingsResponse {
    /**
     Default instance of the ListThingsResponse structure.
     */
    public static let __default: IotModel.ListThingsResponse = {
        let defaultInstance = IotModel.ListThingsResponse(
            nextToken: nil,
            things: nil)

        return defaultInstance
    }()
}

public extension ListTopicRulesRequest {
    /**
     Default instance of the ListTopicRulesRequest structure.
     */
    public static let __default: IotModel.ListTopicRulesRequest = {
        let defaultInstance = IotModel.ListTopicRulesRequest(
            maxResults: nil,
            nextToken: nil,
            ruleDisabled: nil,
            topic: nil)

        return defaultInstance
    }()
}

public extension ListTopicRulesResponse {
    /**
     Default instance of the ListTopicRulesResponse structure.
     */
    public static let __default: IotModel.ListTopicRulesResponse = {
        let defaultInstance = IotModel.ListTopicRulesResponse(
            nextToken: nil,
            rules: nil)

        return defaultInstance
    }()
}

public extension ListV2LoggingLevelsRequest {
    /**
     Default instance of the ListV2LoggingLevelsRequest structure.
     */
    public static let __default: IotModel.ListV2LoggingLevelsRequest = {
        let defaultInstance = IotModel.ListV2LoggingLevelsRequest(
            maxResults: nil,
            nextToken: nil,
            targetType: nil)

        return defaultInstance
    }()
}

public extension ListV2LoggingLevelsResponse {
    /**
     Default instance of the ListV2LoggingLevelsResponse structure.
     */
    public static let __default: IotModel.ListV2LoggingLevelsResponse = {
        let defaultInstance = IotModel.ListV2LoggingLevelsResponse(
            logTargetConfigurations: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListViolationEventsRequest {
    /**
     Default instance of the ListViolationEventsRequest structure.
     */
    public static let __default: IotModel.ListViolationEventsRequest = {
        let defaultInstance = IotModel.ListViolationEventsRequest(
            endTime: "2013-02-18T17:00:00Z",
            maxResults: nil,
            nextToken: nil,
            securityProfileName: nil,
            startTime: "2013-02-18T17:00:00Z",
            thingName: nil)

        return defaultInstance
    }()
}

public extension ListViolationEventsResponse {
    /**
     Default instance of the ListViolationEventsResponse structure.
     */
    public static let __default: IotModel.ListViolationEventsResponse = {
        let defaultInstance = IotModel.ListViolationEventsResponse(
            nextToken: nil,
            violationEvents: nil)

        return defaultInstance
    }()
}

public extension LogTarget {
    /**
     Default instance of the LogTarget structure.
     */
    public static let __default: IotModel.LogTarget = {
        let defaultInstance = IotModel.LogTarget(
            targetName: nil,
            targetType: .__default)

        return defaultInstance
    }()
}

public extension LogTargetConfiguration {
    /**
     Default instance of the LogTargetConfiguration structure.
     */
    public static let __default: IotModel.LogTargetConfiguration = {
        let defaultInstance = IotModel.LogTargetConfiguration(
            logLevel: nil,
            logTarget: nil)

        return defaultInstance
    }()
}

public extension LoggingOptionsPayload {
    /**
     Default instance of the LoggingOptionsPayload structure.
     */
    public static let __default: IotModel.LoggingOptionsPayload = {
        let defaultInstance = IotModel.LoggingOptionsPayload(
            logLevel: nil,
            roleArn: "value")

        return defaultInstance
    }()
}

public extension MalformedPolicyException {
    /**
     Default instance of the MalformedPolicyException structure.
     */
    public static let __default: IotModel.MalformedPolicyException = {
        let defaultInstance = IotModel.MalformedPolicyException(
            message: nil)

        return defaultInstance
    }()
}

public extension MetricValue {
    /**
     Default instance of the MetricValue structure.
     */
    public static let __default: IotModel.MetricValue = {
        let defaultInstance = IotModel.MetricValue(
            cidrs: nil,
            count: nil,
            ports: nil)

        return defaultInstance
    }()
}

public extension MitigationAction {
    /**
     Default instance of the MitigationAction structure.
     */
    public static let __default: IotModel.MitigationAction = {
        let defaultInstance = IotModel.MitigationAction(
            actionParams: nil,
            id: nil,
            name: nil,
            roleArn: nil)

        return defaultInstance
    }()
}

public extension MitigationActionIdentifier {
    /**
     Default instance of the MitigationActionIdentifier structure.
     */
    public static let __default: IotModel.MitigationActionIdentifier = {
        let defaultInstance = IotModel.MitigationActionIdentifier(
            actionArn: nil,
            actionName: nil,
            creationDate: nil)

        return defaultInstance
    }()
}

public extension MitigationActionParams {
    /**
     Default instance of the MitigationActionParams structure.
     */
    public static let __default: IotModel.MitigationActionParams = {
        let defaultInstance = IotModel.MitigationActionParams(
            addThingsToThingGroupParams: nil,
            enableIoTLoggingParams: nil,
            publishFindingToSnsParams: nil,
            replaceDefaultPolicyVersionParams: nil,
            updateCACertificateParams: nil,
            updateDeviceCertificateParams: nil)

        return defaultInstance
    }()
}

public extension NonCompliantResource {
    /**
     Default instance of the NonCompliantResource structure.
     */
    public static let __default: IotModel.NonCompliantResource = {
        let defaultInstance = IotModel.NonCompliantResource(
            additionalInfo: nil,
            resourceIdentifier: nil,
            resourceType: nil)

        return defaultInstance
    }()
}

public extension NotConfiguredException {
    /**
     Default instance of the NotConfiguredException structure.
     */
    public static let __default: IotModel.NotConfiguredException = {
        let defaultInstance = IotModel.NotConfiguredException(
            message: nil)

        return defaultInstance
    }()
}

public extension OTAUpdateFile {
    /**
     Default instance of the OTAUpdateFile structure.
     */
    public static let __default: IotModel.OTAUpdateFile = {
        let defaultInstance = IotModel.OTAUpdateFile(
            attributes: nil,
            codeSigning: nil,
            fileLocation: nil,
            fileName: nil,
            fileVersion: nil)

        return defaultInstance
    }()
}

public extension OTAUpdateInfo {
    /**
     Default instance of the OTAUpdateInfo structure.
     */
    public static let __default: IotModel.OTAUpdateInfo = {
        let defaultInstance = IotModel.OTAUpdateInfo(
            additionalParameters: nil,
            awsIotJobArn: nil,
            awsIotJobId: nil,
            awsJobExecutionsRolloutConfig: nil,
            creationDate: nil,
            description: nil,
            errorInfo: nil,
            lastModifiedDate: nil,
            otaUpdateArn: nil,
            otaUpdateFiles: nil,
            otaUpdateId: nil,
            otaUpdateStatus: nil,
            targetSelection: nil,
            targets: nil)

        return defaultInstance
    }()
}

public extension OTAUpdateSummary {
    /**
     Default instance of the OTAUpdateSummary structure.
     */
    public static let __default: IotModel.OTAUpdateSummary = {
        let defaultInstance = IotModel.OTAUpdateSummary(
            creationDate: nil,
            otaUpdateArn: nil,
            otaUpdateId: nil)

        return defaultInstance
    }()
}

public extension OutgoingCertificate {
    /**
     Default instance of the OutgoingCertificate structure.
     */
    public static let __default: IotModel.OutgoingCertificate = {
        let defaultInstance = IotModel.OutgoingCertificate(
            certificateArn: nil,
            certificateId: nil,
            creationDate: nil,
            transferDate: nil,
            transferMessage: nil,
            transferredTo: nil)

        return defaultInstance
    }()
}

public extension Policy {
    /**
     Default instance of the Policy structure.
     */
    public static let __default: IotModel.Policy = {
        let defaultInstance = IotModel.Policy(
            policyArn: nil,
            policyName: nil)

        return defaultInstance
    }()
}

public extension PolicyVersion {
    /**
     Default instance of the PolicyVersion structure.
     */
    public static let __default: IotModel.PolicyVersion = {
        let defaultInstance = IotModel.PolicyVersion(
            createDate: nil,
            isDefaultVersion: nil,
            versionId: nil)

        return defaultInstance
    }()
}

public extension PolicyVersionIdentifier {
    /**
     Default instance of the PolicyVersionIdentifier structure.
     */
    public static let __default: IotModel.PolicyVersionIdentifier = {
        let defaultInstance = IotModel.PolicyVersionIdentifier(
            policyName: nil,
            policyVersionId: nil)

        return defaultInstance
    }()
}

public extension PresignedUrlConfig {
    /**
     Default instance of the PresignedUrlConfig structure.
     */
    public static let __default: IotModel.PresignedUrlConfig = {
        let defaultInstance = IotModel.PresignedUrlConfig(
            expiresInSec: nil,
            roleArn: nil)

        return defaultInstance
    }()
}

public extension PublishFindingToSnsParams {
    /**
     Default instance of the PublishFindingToSnsParams structure.
     */
    public static let __default: IotModel.PublishFindingToSnsParams = {
        let defaultInstance = IotModel.PublishFindingToSnsParams(
            topicArn: "")

        return defaultInstance
    }()
}

public extension PutItemInput {
    /**
     Default instance of the PutItemInput structure.
     */
    public static let __default: IotModel.PutItemInput = {
        let defaultInstance = IotModel.PutItemInput(
            tableName: "value")

        return defaultInstance
    }()
}

public extension RateIncreaseCriteria {
    /**
     Default instance of the RateIncreaseCriteria structure.
     */
    public static let __default: IotModel.RateIncreaseCriteria = {
        let defaultInstance = IotModel.RateIncreaseCriteria(
            numberOfNotifiedThings: nil,
            numberOfSucceededThings: nil)

        return defaultInstance
    }()
}

public extension RegisterCACertificateRequest {
    /**
     Default instance of the RegisterCACertificateRequest structure.
     */
    public static let __default: IotModel.RegisterCACertificateRequest = {
        let defaultInstance = IotModel.RegisterCACertificateRequest(
            allowAutoRegistration: nil,
            caCertificate: "0",
            registrationConfig: nil,
            setAsActive: nil,
            verificationCertificate: "0")

        return defaultInstance
    }()
}

public extension RegisterCACertificateResponse {
    /**
     Default instance of the RegisterCACertificateResponse structure.
     */
    public static let __default: IotModel.RegisterCACertificateResponse = {
        let defaultInstance = IotModel.RegisterCACertificateResponse(
            certificateArn: nil,
            certificateId: nil)

        return defaultInstance
    }()
}

public extension RegisterCertificateRequest {
    /**
     Default instance of the RegisterCertificateRequest structure.
     */
    public static let __default: IotModel.RegisterCertificateRequest = {
        let defaultInstance = IotModel.RegisterCertificateRequest(
            caCertificatePem: nil,
            certificatePem: "0",
            status: nil)

        return defaultInstance
    }()
}

public extension RegisterCertificateResponse {
    /**
     Default instance of the RegisterCertificateResponse structure.
     */
    public static let __default: IotModel.RegisterCertificateResponse = {
        let defaultInstance = IotModel.RegisterCertificateResponse(
            certificateArn: nil,
            certificateId: nil)

        return defaultInstance
    }()
}

public extension RegisterThingRequest {
    /**
     Default instance of the RegisterThingRequest structure.
     */
    public static let __default: IotModel.RegisterThingRequest = {
        let defaultInstance = IotModel.RegisterThingRequest(
            parameters: nil,
            templateBody: "value")

        return defaultInstance
    }()
}

public extension RegisterThingResponse {
    /**
     Default instance of the RegisterThingResponse structure.
     */
    public static let __default: IotModel.RegisterThingResponse = {
        let defaultInstance = IotModel.RegisterThingResponse(
            certificatePem: nil,
            resourceArns: nil)

        return defaultInstance
    }()
}

public extension RegistrationCodeValidationException {
    /**
     Default instance of the RegistrationCodeValidationException structure.
     */
    public static let __default: IotModel.RegistrationCodeValidationException = {
        let defaultInstance = IotModel.RegistrationCodeValidationException(
            message: nil)

        return defaultInstance
    }()
}

public extension RegistrationConfig {
    /**
     Default instance of the RegistrationConfig structure.
     */
    public static let __default: IotModel.RegistrationConfig = {
        let defaultInstance = IotModel.RegistrationConfig(
            roleArn: nil,
            templateBody: nil)

        return defaultInstance
    }()
}

public extension RejectCertificateTransferRequest {
    /**
     Default instance of the RejectCertificateTransferRequest structure.
     */
    public static let __default: IotModel.RejectCertificateTransferRequest = {
        let defaultInstance = IotModel.RejectCertificateTransferRequest(
            certificateId: "0123456789012345678901234567890123456789012345678901234567890123",
            rejectReason: nil)

        return defaultInstance
    }()
}

public extension RelatedResource {
    /**
     Default instance of the RelatedResource structure.
     */
    public static let __default: IotModel.RelatedResource = {
        let defaultInstance = IotModel.RelatedResource(
            additionalInfo: nil,
            resourceIdentifier: nil,
            resourceType: nil)

        return defaultInstance
    }()
}

public extension RemoveThingFromBillingGroupRequest {
    /**
     Default instance of the RemoveThingFromBillingGroupRequest structure.
     */
    public static let __default: IotModel.RemoveThingFromBillingGroupRequest = {
        let defaultInstance = IotModel.RemoveThingFromBillingGroupRequest(
            billingGroupArn: nil,
            billingGroupName: nil,
            thingArn: nil,
            thingName: nil)

        return defaultInstance
    }()
}

public extension RemoveThingFromBillingGroupResponse {
    /**
     Default instance of the RemoveThingFromBillingGroupResponse structure.
     */
    public static let __default: IotModel.RemoveThingFromBillingGroupResponse = {
        let defaultInstance = IotModel.RemoveThingFromBillingGroupResponse()

        return defaultInstance
    }()
}

public extension RemoveThingFromThingGroupRequest {
    /**
     Default instance of the RemoveThingFromThingGroupRequest structure.
     */
    public static let __default: IotModel.RemoveThingFromThingGroupRequest = {
        let defaultInstance = IotModel.RemoveThingFromThingGroupRequest(
            thingArn: nil,
            thingGroupArn: nil,
            thingGroupName: nil,
            thingName: nil)

        return defaultInstance
    }()
}

public extension RemoveThingFromThingGroupResponse {
    /**
     Default instance of the RemoveThingFromThingGroupResponse structure.
     */
    public static let __default: IotModel.RemoveThingFromThingGroupResponse = {
        let defaultInstance = IotModel.RemoveThingFromThingGroupResponse()

        return defaultInstance
    }()
}

public extension ReplaceDefaultPolicyVersionParams {
    /**
     Default instance of the ReplaceDefaultPolicyVersionParams structure.
     */
    public static let __default: IotModel.ReplaceDefaultPolicyVersionParams = {
        let defaultInstance = IotModel.ReplaceDefaultPolicyVersionParams(
            templateName: .__default)

        return defaultInstance
    }()
}

public extension ReplaceTopicRuleRequest {
    /**
     Default instance of the ReplaceTopicRuleRequest structure.
     */
    public static let __default: IotModel.ReplaceTopicRuleRequest = {
        let defaultInstance = IotModel.ReplaceTopicRuleRequest(
            ruleName: "0",
            topicRulePayload: TopicRulePayload.__default)

        return defaultInstance
    }()
}

public extension RepublishAction {
    /**
     Default instance of the RepublishAction structure.
     */
    public static let __default: IotModel.RepublishAction = {
        let defaultInstance = IotModel.RepublishAction(
            qos: nil,
            roleArn: "value",
            topic: "value")

        return defaultInstance
    }()
}

public extension ResourceAlreadyExistsException {
    /**
     Default instance of the ResourceAlreadyExistsException structure.
     */
    public static let __default: IotModel.ResourceAlreadyExistsException = {
        let defaultInstance = IotModel.ResourceAlreadyExistsException(
            message: nil,
            resourceArn: nil,
            resourceId: nil)

        return defaultInstance
    }()
}

public extension ResourceIdentifier {
    /**
     Default instance of the ResourceIdentifier structure.
     */
    public static let __default: IotModel.ResourceIdentifier = {
        let defaultInstance = IotModel.ResourceIdentifier(
            account: nil,
            caCertificateId: nil,
            clientId: nil,
            cognitoIdentityPoolId: nil,
            deviceCertificateId: nil,
            policyVersionIdentifier: nil)

        return defaultInstance
    }()
}

public extension ResourceNotFoundException {
    /**
     Default instance of the ResourceNotFoundException structure.
     */
    public static let __default: IotModel.ResourceNotFoundException = {
        let defaultInstance = IotModel.ResourceNotFoundException(
            message: nil)

        return defaultInstance
    }()
}

public extension ResourceRegistrationFailureException {
    /**
     Default instance of the ResourceRegistrationFailureException structure.
     */
    public static let __default: IotModel.ResourceRegistrationFailureException = {
        let defaultInstance = IotModel.ResourceRegistrationFailureException(
            message: nil)

        return defaultInstance
    }()
}

public extension RoleAliasDescription {
    /**
     Default instance of the RoleAliasDescription structure.
     */
    public static let __default: IotModel.RoleAliasDescription = {
        let defaultInstance = IotModel.RoleAliasDescription(
            creationDate: nil,
            credentialDurationSeconds: nil,
            lastModifiedDate: nil,
            owner: nil,
            roleAlias: nil,
            roleAliasArn: nil,
            roleArn: nil)

        return defaultInstance
    }()
}

public extension S3Action {
    /**
     Default instance of the S3Action structure.
     */
    public static let __default: IotModel.S3Action = {
        let defaultInstance = IotModel.S3Action(
            bucketName: "value",
            cannedAcl: nil,
            key: "value",
            roleArn: "value")

        return defaultInstance
    }()
}

public extension S3Destination {
    /**
     Default instance of the S3Destination structure.
     */
    public static let __default: IotModel.S3Destination = {
        let defaultInstance = IotModel.S3Destination(
            bucket: nil,
            prefix: nil)

        return defaultInstance
    }()
}

public extension S3Location {
    /**
     Default instance of the S3Location structure.
     */
    public static let __default: IotModel.S3Location = {
        let defaultInstance = IotModel.S3Location(
            bucket: nil,
            key: nil,
            version: nil)

        return defaultInstance
    }()
}

public extension SalesforceAction {
    /**
     Default instance of the SalesforceAction structure.
     */
    public static let __default: IotModel.SalesforceAction = {
        let defaultInstance = IotModel.SalesforceAction(
            token: "0123456789012345678901234567890123456789",
            url: "")

        return defaultInstance
    }()
}

public extension ScheduledAuditMetadata {
    /**
     Default instance of the ScheduledAuditMetadata structure.
     */
    public static let __default: IotModel.ScheduledAuditMetadata = {
        let defaultInstance = IotModel.ScheduledAuditMetadata(
            dayOfMonth: nil,
            dayOfWeek: nil,
            frequency: nil,
            scheduledAuditArn: nil,
            scheduledAuditName: nil)

        return defaultInstance
    }()
}

public extension SearchIndexRequest {
    /**
     Default instance of the SearchIndexRequest structure.
     */
    public static let __default: IotModel.SearchIndexRequest = {
        let defaultInstance = IotModel.SearchIndexRequest(
            indexName: nil,
            maxResults: nil,
            nextToken: nil,
            queryString: "0",
            queryVersion: nil)

        return defaultInstance
    }()
}

public extension SearchIndexResponse {
    /**
     Default instance of the SearchIndexResponse structure.
     */
    public static let __default: IotModel.SearchIndexResponse = {
        let defaultInstance = IotModel.SearchIndexResponse(
            nextToken: nil,
            thingGroups: nil,
            things: nil)

        return defaultInstance
    }()
}

public extension SecurityProfileIdentifier {
    /**
     Default instance of the SecurityProfileIdentifier structure.
     */
    public static let __default: IotModel.SecurityProfileIdentifier = {
        let defaultInstance = IotModel.SecurityProfileIdentifier(
            arn: "value",
            name: "0")

        return defaultInstance
    }()
}

public extension SecurityProfileTarget {
    /**
     Default instance of the SecurityProfileTarget structure.
     */
    public static let __default: IotModel.SecurityProfileTarget = {
        let defaultInstance = IotModel.SecurityProfileTarget(
            arn: "value")

        return defaultInstance
    }()
}

public extension SecurityProfileTargetMapping {
    /**
     Default instance of the SecurityProfileTargetMapping structure.
     */
    public static let __default: IotModel.SecurityProfileTargetMapping = {
        let defaultInstance = IotModel.SecurityProfileTargetMapping(
            securityProfileIdentifier: nil,
            target: nil)

        return defaultInstance
    }()
}

public extension ServiceUnavailableException {
    /**
     Default instance of the ServiceUnavailableException structure.
     */
    public static let __default: IotModel.ServiceUnavailableException = {
        let defaultInstance = IotModel.ServiceUnavailableException(
            message: nil)

        return defaultInstance
    }()
}

public extension SetDefaultAuthorizerRequest {
    /**
     Default instance of the SetDefaultAuthorizerRequest structure.
     */
    public static let __default: IotModel.SetDefaultAuthorizerRequest = {
        let defaultInstance = IotModel.SetDefaultAuthorizerRequest(
            authorizerName: "0")

        return defaultInstance
    }()
}

public extension SetDefaultAuthorizerResponse {
    /**
     Default instance of the SetDefaultAuthorizerResponse structure.
     */
    public static let __default: IotModel.SetDefaultAuthorizerResponse = {
        let defaultInstance = IotModel.SetDefaultAuthorizerResponse(
            authorizerArn: nil,
            authorizerName: nil)

        return defaultInstance
    }()
}

public extension SetDefaultPolicyVersionRequest {
    /**
     Default instance of the SetDefaultPolicyVersionRequest structure.
     */
    public static let __default: IotModel.SetDefaultPolicyVersionRequest = {
        let defaultInstance = IotModel.SetDefaultPolicyVersionRequest(
            policyName: "0",
            policyVersionId: "")

        return defaultInstance
    }()
}

public extension SetLoggingOptionsRequest {
    /**
     Default instance of the SetLoggingOptionsRequest structure.
     */
    public static let __default: IotModel.SetLoggingOptionsRequest = {
        let defaultInstance = IotModel.SetLoggingOptionsRequest(
            loggingOptionsPayload: LoggingOptionsPayload.__default)

        return defaultInstance
    }()
}

public extension SetV2LoggingLevelRequest {
    /**
     Default instance of the SetV2LoggingLevelRequest structure.
     */
    public static let __default: IotModel.SetV2LoggingLevelRequest = {
        let defaultInstance = IotModel.SetV2LoggingLevelRequest(
            logLevel: .__default,
            logTarget: LogTarget.__default)

        return defaultInstance
    }()
}

public extension SetV2LoggingOptionsRequest {
    /**
     Default instance of the SetV2LoggingOptionsRequest structure.
     */
    public static let __default: IotModel.SetV2LoggingOptionsRequest = {
        let defaultInstance = IotModel.SetV2LoggingOptionsRequest(
            defaultLogLevel: nil,
            disableAllLogs: nil,
            roleArn: nil)

        return defaultInstance
    }()
}

public extension SigningProfileParameter {
    /**
     Default instance of the SigningProfileParameter structure.
     */
    public static let __default: IotModel.SigningProfileParameter = {
        let defaultInstance = IotModel.SigningProfileParameter(
            certificateArn: nil,
            certificatePathOnDevice: nil,
            platform: nil)

        return defaultInstance
    }()
}

public extension SnsAction {
    /**
     Default instance of the SnsAction structure.
     */
    public static let __default: IotModel.SnsAction = {
        let defaultInstance = IotModel.SnsAction(
            messageFormat: nil,
            roleArn: "value",
            targetArn: "value")

        return defaultInstance
    }()
}

public extension SqlParseException {
    /**
     Default instance of the SqlParseException structure.
     */
    public static let __default: IotModel.SqlParseException = {
        let defaultInstance = IotModel.SqlParseException(
            message: nil)

        return defaultInstance
    }()
}

public extension SqsAction {
    /**
     Default instance of the SqsAction structure.
     */
    public static let __default: IotModel.SqsAction = {
        let defaultInstance = IotModel.SqsAction(
            queueUrl: "value",
            roleArn: "value",
            useBase64: nil)

        return defaultInstance
    }()
}

public extension StartAuditMitigationActionsTaskRequest {
    /**
     Default instance of the StartAuditMitigationActionsTaskRequest structure.
     */
    public static let __default: IotModel.StartAuditMitigationActionsTaskRequest = {
        let defaultInstance = IotModel.StartAuditMitigationActionsTaskRequest(
            auditCheckToActionsMapping: [:],
            clientRequestToken: "0",
            target: AuditMitigationActionsTaskTarget.__default,
            taskId: "0")

        return defaultInstance
    }()
}

public extension StartAuditMitigationActionsTaskResponse {
    /**
     Default instance of the StartAuditMitigationActionsTaskResponse structure.
     */
    public static let __default: IotModel.StartAuditMitigationActionsTaskResponse = {
        let defaultInstance = IotModel.StartAuditMitigationActionsTaskResponse(
            taskId: nil)

        return defaultInstance
    }()
}

public extension StartOnDemandAuditTaskRequest {
    /**
     Default instance of the StartOnDemandAuditTaskRequest structure.
     */
    public static let __default: IotModel.StartOnDemandAuditTaskRequest = {
        let defaultInstance = IotModel.StartOnDemandAuditTaskRequest(
            targetCheckNames: [])

        return defaultInstance
    }()
}

public extension StartOnDemandAuditTaskResponse {
    /**
     Default instance of the StartOnDemandAuditTaskResponse structure.
     */
    public static let __default: IotModel.StartOnDemandAuditTaskResponse = {
        let defaultInstance = IotModel.StartOnDemandAuditTaskResponse(
            taskId: nil)

        return defaultInstance
    }()
}

public extension StartSigningJobParameter {
    /**
     Default instance of the StartSigningJobParameter structure.
     */
    public static let __default: IotModel.StartSigningJobParameter = {
        let defaultInstance = IotModel.StartSigningJobParameter(
            destination: nil,
            signingProfileName: nil,
            signingProfileParameter: nil)

        return defaultInstance
    }()
}

public extension StartThingRegistrationTaskRequest {
    /**
     Default instance of the StartThingRegistrationTaskRequest structure.
     */
    public static let __default: IotModel.StartThingRegistrationTaskRequest = {
        let defaultInstance = IotModel.StartThingRegistrationTaskRequest(
            inputFileBucket: "012",
            inputFileKey: "0",
            roleArn: "01234567890123456789",
            templateBody: "value")

        return defaultInstance
    }()
}

public extension StartThingRegistrationTaskResponse {
    /**
     Default instance of the StartThingRegistrationTaskResponse structure.
     */
    public static let __default: IotModel.StartThingRegistrationTaskResponse = {
        let defaultInstance = IotModel.StartThingRegistrationTaskResponse(
            taskId: nil)

        return defaultInstance
    }()
}

public extension StatisticalThreshold {
    /**
     Default instance of the StatisticalThreshold structure.
     */
    public static let __default: IotModel.StatisticalThreshold = {
        let defaultInstance = IotModel.StatisticalThreshold(
            statistic: nil)

        return defaultInstance
    }()
}

public extension Statistics {
    /**
     Default instance of the Statistics structure.
     */
    public static let __default: IotModel.Statistics = {
        let defaultInstance = IotModel.Statistics(
            count: nil)

        return defaultInstance
    }()
}

public extension StepFunctionsAction {
    /**
     Default instance of the StepFunctionsAction structure.
     */
    public static let __default: IotModel.StepFunctionsAction = {
        let defaultInstance = IotModel.StepFunctionsAction(
            executionNamePrefix: nil,
            roleArn: "value",
            stateMachineName: "value")

        return defaultInstance
    }()
}

public extension StopThingRegistrationTaskRequest {
    /**
     Default instance of the StopThingRegistrationTaskRequest structure.
     */
    public static let __default: IotModel.StopThingRegistrationTaskRequest = {
        let defaultInstance = IotModel.StopThingRegistrationTaskRequest(
            taskId: "")

        return defaultInstance
    }()
}

public extension StopThingRegistrationTaskResponse {
    /**
     Default instance of the StopThingRegistrationTaskResponse structure.
     */
    public static let __default: IotModel.StopThingRegistrationTaskResponse = {
        let defaultInstance = IotModel.StopThingRegistrationTaskResponse()

        return defaultInstance
    }()
}

public extension Stream {
    /**
     Default instance of the Stream structure.
     */
    public static let __default: IotModel.Stream = {
        let defaultInstance = IotModel.Stream(
            fileId: nil,
            streamId: nil)

        return defaultInstance
    }()
}

public extension StreamFile {
    /**
     Default instance of the StreamFile structure.
     */
    public static let __default: IotModel.StreamFile = {
        let defaultInstance = IotModel.StreamFile(
            fileId: nil,
            s3Location: nil)

        return defaultInstance
    }()
}

public extension StreamInfo {
    /**
     Default instance of the StreamInfo structure.
     */
    public static let __default: IotModel.StreamInfo = {
        let defaultInstance = IotModel.StreamInfo(
            createdAt: nil,
            description: nil,
            files: nil,
            lastUpdatedAt: nil,
            roleArn: nil,
            streamArn: nil,
            streamId: nil,
            streamVersion: nil)

        return defaultInstance
    }()
}

public extension StreamSummary {
    /**
     Default instance of the StreamSummary structure.
     */
    public static let __default: IotModel.StreamSummary = {
        let defaultInstance = IotModel.StreamSummary(
            description: nil,
            streamArn: nil,
            streamId: nil,
            streamVersion: nil)

        return defaultInstance
    }()
}

public extension Tag {
    /**
     Default instance of the Tag structure.
     */
    public static let __default: IotModel.Tag = {
        let defaultInstance = IotModel.Tag(
            key: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension TagResourceRequest {
    /**
     Default instance of the TagResourceRequest structure.
     */
    public static let __default: IotModel.TagResourceRequest = {
        let defaultInstance = IotModel.TagResourceRequest(
            resourceArn: "value",
            tags: [])

        return defaultInstance
    }()
}

public extension TagResourceResponse {
    /**
     Default instance of the TagResourceResponse structure.
     */
    public static let __default: IotModel.TagResourceResponse = {
        let defaultInstance = IotModel.TagResourceResponse()

        return defaultInstance
    }()
}

public extension TaskAlreadyExistsException {
    /**
     Default instance of the TaskAlreadyExistsException structure.
     */
    public static let __default: IotModel.TaskAlreadyExistsException = {
        let defaultInstance = IotModel.TaskAlreadyExistsException(
            message: nil)

        return defaultInstance
    }()
}

public extension TaskStatistics {
    /**
     Default instance of the TaskStatistics structure.
     */
    public static let __default: IotModel.TaskStatistics = {
        let defaultInstance = IotModel.TaskStatistics(
            canceledChecks: nil,
            compliantChecks: nil,
            failedChecks: nil,
            inProgressChecks: nil,
            nonCompliantChecks: nil,
            totalChecks: nil,
            waitingForDataCollectionChecks: nil)

        return defaultInstance
    }()
}

public extension TaskStatisticsForAuditCheck {
    /**
     Default instance of the TaskStatisticsForAuditCheck structure.
     */
    public static let __default: IotModel.TaskStatisticsForAuditCheck = {
        let defaultInstance = IotModel.TaskStatisticsForAuditCheck(
            canceledFindingsCount: nil,
            failedFindingsCount: nil,
            skippedFindingsCount: nil,
            succeededFindingsCount: nil,
            totalFindingsCount: nil)

        return defaultInstance
    }()
}

public extension TestAuthorizationRequest {
    /**
     Default instance of the TestAuthorizationRequest structure.
     */
    public static let __default: IotModel.TestAuthorizationRequest = {
        let defaultInstance = IotModel.TestAuthorizationRequest(
            authInfos: [AuthInfo.__default],
            clientId: nil,
            cognitoIdentityPoolId: nil,
            policyNamesToAdd: nil,
            policyNamesToSkip: nil,
            principal: nil)

        return defaultInstance
    }()
}

public extension TestAuthorizationResponse {
    /**
     Default instance of the TestAuthorizationResponse structure.
     */
    public static let __default: IotModel.TestAuthorizationResponse = {
        let defaultInstance = IotModel.TestAuthorizationResponse(
            authResults: nil)

        return defaultInstance
    }()
}

public extension TestInvokeAuthorizerRequest {
    /**
     Default instance of the TestInvokeAuthorizerRequest structure.
     */
    public static let __default: IotModel.TestInvokeAuthorizerRequest = {
        let defaultInstance = IotModel.TestInvokeAuthorizerRequest(
            authorizerName: "0",
            token: "0",
            tokenSignature: "0")

        return defaultInstance
    }()
}

public extension TestInvokeAuthorizerResponse {
    /**
     Default instance of the TestInvokeAuthorizerResponse structure.
     */
    public static let __default: IotModel.TestInvokeAuthorizerResponse = {
        let defaultInstance = IotModel.TestInvokeAuthorizerResponse(
            disconnectAfterInSeconds: nil,
            isAuthenticated: nil,
            policyDocuments: nil,
            principalId: nil,
            refreshAfterInSeconds: nil)

        return defaultInstance
    }()
}

public extension ThingAttribute {
    /**
     Default instance of the ThingAttribute structure.
     */
    public static let __default: IotModel.ThingAttribute = {
        let defaultInstance = IotModel.ThingAttribute(
            attributes: nil,
            thingArn: nil,
            thingName: nil,
            thingTypeName: nil,
            version: nil)

        return defaultInstance
    }()
}

public extension ThingConnectivity {
    /**
     Default instance of the ThingConnectivity structure.
     */
    public static let __default: IotModel.ThingConnectivity = {
        let defaultInstance = IotModel.ThingConnectivity(
            connected: nil,
            timestamp: nil)

        return defaultInstance
    }()
}

public extension ThingDocument {
    /**
     Default instance of the ThingDocument structure.
     */
    public static let __default: IotModel.ThingDocument = {
        let defaultInstance = IotModel.ThingDocument(
            attributes: nil,
            connectivity: nil,
            shadow: nil,
            thingGroupNames: nil,
            thingId: nil,
            thingName: nil,
            thingTypeName: nil)

        return defaultInstance
    }()
}

public extension ThingGroupDocument {
    /**
     Default instance of the ThingGroupDocument structure.
     */
    public static let __default: IotModel.ThingGroupDocument = {
        let defaultInstance = IotModel.ThingGroupDocument(
            attributes: nil,
            parentGroupNames: nil,
            thingGroupDescription: nil,
            thingGroupId: nil,
            thingGroupName: nil)

        return defaultInstance
    }()
}

public extension ThingGroupIndexingConfiguration {
    /**
     Default instance of the ThingGroupIndexingConfiguration structure.
     */
    public static let __default: IotModel.ThingGroupIndexingConfiguration = {
        let defaultInstance = IotModel.ThingGroupIndexingConfiguration(
            thingGroupIndexingMode: .__default)

        return defaultInstance
    }()
}

public extension ThingGroupMetadata {
    /**
     Default instance of the ThingGroupMetadata structure.
     */
    public static let __default: IotModel.ThingGroupMetadata = {
        let defaultInstance = IotModel.ThingGroupMetadata(
            creationDate: nil,
            parentGroupName: nil,
            rootToParentThingGroups: nil)

        return defaultInstance
    }()
}

public extension ThingGroupProperties {
    /**
     Default instance of the ThingGroupProperties structure.
     */
    public static let __default: IotModel.ThingGroupProperties = {
        let defaultInstance = IotModel.ThingGroupProperties(
            attributePayload: nil,
            thingGroupDescription: nil)

        return defaultInstance
    }()
}

public extension ThingIndexingConfiguration {
    /**
     Default instance of the ThingIndexingConfiguration structure.
     */
    public static let __default: IotModel.ThingIndexingConfiguration = {
        let defaultInstance = IotModel.ThingIndexingConfiguration(
            thingConnectivityIndexingMode: nil,
            thingIndexingMode: .__default)

        return defaultInstance
    }()
}

public extension ThingTypeDefinition {
    /**
     Default instance of the ThingTypeDefinition structure.
     */
    public static let __default: IotModel.ThingTypeDefinition = {
        let defaultInstance = IotModel.ThingTypeDefinition(
            thingTypeArn: nil,
            thingTypeMetadata: nil,
            thingTypeName: nil,
            thingTypeProperties: nil)

        return defaultInstance
    }()
}

public extension ThingTypeMetadata {
    /**
     Default instance of the ThingTypeMetadata structure.
     */
    public static let __default: IotModel.ThingTypeMetadata = {
        let defaultInstance = IotModel.ThingTypeMetadata(
            creationDate: nil,
            deprecated: nil,
            deprecationDate: nil)

        return defaultInstance
    }()
}

public extension ThingTypeProperties {
    /**
     Default instance of the ThingTypeProperties structure.
     */
    public static let __default: IotModel.ThingTypeProperties = {
        let defaultInstance = IotModel.ThingTypeProperties(
            searchableAttributes: nil,
            thingTypeDescription: nil)

        return defaultInstance
    }()
}

public extension ThrottlingException {
    /**
     Default instance of the ThrottlingException structure.
     */
    public static let __default: IotModel.ThrottlingException = {
        let defaultInstance = IotModel.ThrottlingException(
            message: nil)

        return defaultInstance
    }()
}

public extension TimeoutConfig {
    /**
     Default instance of the TimeoutConfig structure.
     */
    public static let __default: IotModel.TimeoutConfig = {
        let defaultInstance = IotModel.TimeoutConfig(
            inProgressTimeoutInMinutes: nil)

        return defaultInstance
    }()
}

public extension TopicRule {
    /**
     Default instance of the TopicRule structure.
     */
    public static let __default: IotModel.TopicRule = {
        let defaultInstance = IotModel.TopicRule(
            actions: nil,
            awsIotSqlVersion: nil,
            createdAt: nil,
            description: nil,
            errorAction: nil,
            ruleDisabled: nil,
            ruleName: nil,
            sql: nil)

        return defaultInstance
    }()
}

public extension TopicRuleListItem {
    /**
     Default instance of the TopicRuleListItem structure.
     */
    public static let __default: IotModel.TopicRuleListItem = {
        let defaultInstance = IotModel.TopicRuleListItem(
            createdAt: nil,
            ruleArn: nil,
            ruleDisabled: nil,
            ruleName: nil,
            topicPattern: nil)

        return defaultInstance
    }()
}

public extension TopicRulePayload {
    /**
     Default instance of the TopicRulePayload structure.
     */
    public static let __default: IotModel.TopicRulePayload = {
        let defaultInstance = IotModel.TopicRulePayload(
            actions: [],
            awsIotSqlVersion: nil,
            description: nil,
            errorAction: nil,
            ruleDisabled: nil,
            sql: "value")

        return defaultInstance
    }()
}

public extension TransferAlreadyCompletedException {
    /**
     Default instance of the TransferAlreadyCompletedException structure.
     */
    public static let __default: IotModel.TransferAlreadyCompletedException = {
        let defaultInstance = IotModel.TransferAlreadyCompletedException(
            message: nil)

        return defaultInstance
    }()
}

public extension TransferCertificateRequest {
    /**
     Default instance of the TransferCertificateRequest structure.
     */
    public static let __default: IotModel.TransferCertificateRequest = {
        let defaultInstance = IotModel.TransferCertificateRequest(
            certificateId: "0123456789012345678901234567890123456789012345678901234567890123",
            targetAwsAccount: "012345678901",
            transferMessage: nil)

        return defaultInstance
    }()
}

public extension TransferCertificateResponse {
    /**
     Default instance of the TransferCertificateResponse structure.
     */
    public static let __default: IotModel.TransferCertificateResponse = {
        let defaultInstance = IotModel.TransferCertificateResponse(
            transferredCertificateArn: nil)

        return defaultInstance
    }()
}

public extension TransferConflictException {
    /**
     Default instance of the TransferConflictException structure.
     */
    public static let __default: IotModel.TransferConflictException = {
        let defaultInstance = IotModel.TransferConflictException(
            message: nil)

        return defaultInstance
    }()
}

public extension TransferData {
    /**
     Default instance of the TransferData structure.
     */
    public static let __default: IotModel.TransferData = {
        let defaultInstance = IotModel.TransferData(
            acceptDate: nil,
            rejectDate: nil,
            rejectReason: nil,
            transferDate: nil,
            transferMessage: nil)

        return defaultInstance
    }()
}

public extension UnauthorizedException {
    /**
     Default instance of the UnauthorizedException structure.
     */
    public static let __default: IotModel.UnauthorizedException = {
        let defaultInstance = IotModel.UnauthorizedException(
            message: nil)

        return defaultInstance
    }()
}

public extension UntagResourceRequest {
    /**
     Default instance of the UntagResourceRequest structure.
     */
    public static let __default: IotModel.UntagResourceRequest = {
        let defaultInstance = IotModel.UntagResourceRequest(
            resourceArn: "value",
            tagKeys: [])

        return defaultInstance
    }()
}

public extension UntagResourceResponse {
    /**
     Default instance of the UntagResourceResponse structure.
     */
    public static let __default: IotModel.UntagResourceResponse = {
        let defaultInstance = IotModel.UntagResourceResponse()

        return defaultInstance
    }()
}

public extension UpdateAccountAuditConfigurationRequest {
    /**
     Default instance of the UpdateAccountAuditConfigurationRequest structure.
     */
    public static let __default: IotModel.UpdateAccountAuditConfigurationRequest = {
        let defaultInstance = IotModel.UpdateAccountAuditConfigurationRequest(
            auditCheckConfigurations: nil,
            auditNotificationTargetConfigurations: nil,
            roleArn: nil)

        return defaultInstance
    }()
}

public extension UpdateAccountAuditConfigurationResponse {
    /**
     Default instance of the UpdateAccountAuditConfigurationResponse structure.
     */
    public static let __default: IotModel.UpdateAccountAuditConfigurationResponse = {
        let defaultInstance = IotModel.UpdateAccountAuditConfigurationResponse()

        return defaultInstance
    }()
}

public extension UpdateAuthorizerRequest {
    /**
     Default instance of the UpdateAuthorizerRequest structure.
     */
    public static let __default: IotModel.UpdateAuthorizerRequest = {
        let defaultInstance = IotModel.UpdateAuthorizerRequest(
            authorizerFunctionArn: nil,
            authorizerName: "0",
            status: nil,
            tokenKeyName: nil,
            tokenSigningPublicKeys: nil)

        return defaultInstance
    }()
}

public extension UpdateAuthorizerResponse {
    /**
     Default instance of the UpdateAuthorizerResponse structure.
     */
    public static let __default: IotModel.UpdateAuthorizerResponse = {
        let defaultInstance = IotModel.UpdateAuthorizerResponse(
            authorizerArn: nil,
            authorizerName: nil)

        return defaultInstance
    }()
}

public extension UpdateBillingGroupRequest {
    /**
     Default instance of the UpdateBillingGroupRequest structure.
     */
    public static let __default: IotModel.UpdateBillingGroupRequest = {
        let defaultInstance = IotModel.UpdateBillingGroupRequest(
            billingGroupName: "0",
            billingGroupProperties: BillingGroupProperties.__default,
            expectedVersion: nil)

        return defaultInstance
    }()
}

public extension UpdateBillingGroupResponse {
    /**
     Default instance of the UpdateBillingGroupResponse structure.
     */
    public static let __default: IotModel.UpdateBillingGroupResponse = {
        let defaultInstance = IotModel.UpdateBillingGroupResponse(
            version: nil)

        return defaultInstance
    }()
}

public extension UpdateCACertificateParams {
    /**
     Default instance of the UpdateCACertificateParams structure.
     */
    public static let __default: IotModel.UpdateCACertificateParams = {
        let defaultInstance = IotModel.UpdateCACertificateParams(
            action: .__default)

        return defaultInstance
    }()
}

public extension UpdateCACertificateRequest {
    /**
     Default instance of the UpdateCACertificateRequest structure.
     */
    public static let __default: IotModel.UpdateCACertificateRequest = {
        let defaultInstance = IotModel.UpdateCACertificateRequest(
            certificateId: "0123456789012345678901234567890123456789012345678901234567890123",
            newAutoRegistrationStatus: nil,
            newStatus: nil,
            registrationConfig: nil,
            removeAutoRegistration: nil)

        return defaultInstance
    }()
}

public extension UpdateCertificateRequest {
    /**
     Default instance of the UpdateCertificateRequest structure.
     */
    public static let __default: IotModel.UpdateCertificateRequest = {
        let defaultInstance = IotModel.UpdateCertificateRequest(
            certificateId: "0123456789012345678901234567890123456789012345678901234567890123",
            newStatus: .__default)

        return defaultInstance
    }()
}

public extension UpdateDeviceCertificateParams {
    /**
     Default instance of the UpdateDeviceCertificateParams structure.
     */
    public static let __default: IotModel.UpdateDeviceCertificateParams = {
        let defaultInstance = IotModel.UpdateDeviceCertificateParams(
            action: .__default)

        return defaultInstance
    }()
}

public extension UpdateDynamicThingGroupRequest {
    /**
     Default instance of the UpdateDynamicThingGroupRequest structure.
     */
    public static let __default: IotModel.UpdateDynamicThingGroupRequest = {
        let defaultInstance = IotModel.UpdateDynamicThingGroupRequest(
            expectedVersion: nil,
            indexName: nil,
            queryString: nil,
            queryVersion: nil,
            thingGroupName: "0",
            thingGroupProperties: ThingGroupProperties.__default)

        return defaultInstance
    }()
}

public extension UpdateDynamicThingGroupResponse {
    /**
     Default instance of the UpdateDynamicThingGroupResponse structure.
     */
    public static let __default: IotModel.UpdateDynamicThingGroupResponse = {
        let defaultInstance = IotModel.UpdateDynamicThingGroupResponse(
            version: nil)

        return defaultInstance
    }()
}

public extension UpdateEventConfigurationsRequest {
    /**
     Default instance of the UpdateEventConfigurationsRequest structure.
     */
    public static let __default: IotModel.UpdateEventConfigurationsRequest = {
        let defaultInstance = IotModel.UpdateEventConfigurationsRequest(
            eventConfigurations: nil)

        return defaultInstance
    }()
}

public extension UpdateEventConfigurationsResponse {
    /**
     Default instance of the UpdateEventConfigurationsResponse structure.
     */
    public static let __default: IotModel.UpdateEventConfigurationsResponse = {
        let defaultInstance = IotModel.UpdateEventConfigurationsResponse()

        return defaultInstance
    }()
}

public extension UpdateIndexingConfigurationRequest {
    /**
     Default instance of the UpdateIndexingConfigurationRequest structure.
     */
    public static let __default: IotModel.UpdateIndexingConfigurationRequest = {
        let defaultInstance = IotModel.UpdateIndexingConfigurationRequest(
            thingGroupIndexingConfiguration: nil,
            thingIndexingConfiguration: nil)

        return defaultInstance
    }()
}

public extension UpdateIndexingConfigurationResponse {
    /**
     Default instance of the UpdateIndexingConfigurationResponse structure.
     */
    public static let __default: IotModel.UpdateIndexingConfigurationResponse = {
        let defaultInstance = IotModel.UpdateIndexingConfigurationResponse()

        return defaultInstance
    }()
}

public extension UpdateJobRequest {
    /**
     Default instance of the UpdateJobRequest structure.
     */
    public static let __default: IotModel.UpdateJobRequest = {
        let defaultInstance = IotModel.UpdateJobRequest(
            abortConfig: nil,
            description: nil,
            jobExecutionsRolloutConfig: nil,
            jobId: "0",
            presignedUrlConfig: nil,
            timeoutConfig: nil)

        return defaultInstance
    }()
}

public extension UpdateMitigationActionRequest {
    /**
     Default instance of the UpdateMitigationActionRequest structure.
     */
    public static let __default: IotModel.UpdateMitigationActionRequest = {
        let defaultInstance = IotModel.UpdateMitigationActionRequest(
            actionName: "",
            actionParams: nil,
            roleArn: nil)

        return defaultInstance
    }()
}

public extension UpdateMitigationActionResponse {
    /**
     Default instance of the UpdateMitigationActionResponse structure.
     */
    public static let __default: IotModel.UpdateMitigationActionResponse = {
        let defaultInstance = IotModel.UpdateMitigationActionResponse(
            actionArn: nil,
            actionId: nil)

        return defaultInstance
    }()
}

public extension UpdateRoleAliasRequest {
    /**
     Default instance of the UpdateRoleAliasRequest structure.
     */
    public static let __default: IotModel.UpdateRoleAliasRequest = {
        let defaultInstance = IotModel.UpdateRoleAliasRequest(
            credentialDurationSeconds: nil,
            roleAlias: "0",
            roleArn: nil)

        return defaultInstance
    }()
}

public extension UpdateRoleAliasResponse {
    /**
     Default instance of the UpdateRoleAliasResponse structure.
     */
    public static let __default: IotModel.UpdateRoleAliasResponse = {
        let defaultInstance = IotModel.UpdateRoleAliasResponse(
            roleAlias: nil,
            roleAliasArn: nil)

        return defaultInstance
    }()
}

public extension UpdateScheduledAuditRequest {
    /**
     Default instance of the UpdateScheduledAuditRequest structure.
     */
    public static let __default: IotModel.UpdateScheduledAuditRequest = {
        let defaultInstance = IotModel.UpdateScheduledAuditRequest(
            dayOfMonth: nil,
            dayOfWeek: nil,
            frequency: nil,
            scheduledAuditName: "0",
            targetCheckNames: nil)

        return defaultInstance
    }()
}

public extension UpdateScheduledAuditResponse {
    /**
     Default instance of the UpdateScheduledAuditResponse structure.
     */
    public static let __default: IotModel.UpdateScheduledAuditResponse = {
        let defaultInstance = IotModel.UpdateScheduledAuditResponse(
            scheduledAuditArn: nil)

        return defaultInstance
    }()
}

public extension UpdateSecurityProfileRequest {
    /**
     Default instance of the UpdateSecurityProfileRequest structure.
     */
    public static let __default: IotModel.UpdateSecurityProfileRequest = {
        let defaultInstance = IotModel.UpdateSecurityProfileRequest(
            additionalMetricsToRetain: nil,
            alertTargets: nil,
            behaviors: nil,
            deleteAdditionalMetricsToRetain: nil,
            deleteAlertTargets: nil,
            deleteBehaviors: nil,
            expectedVersion: nil,
            securityProfileDescription: nil,
            securityProfileName: "0")

        return defaultInstance
    }()
}

public extension UpdateSecurityProfileResponse {
    /**
     Default instance of the UpdateSecurityProfileResponse structure.
     */
    public static let __default: IotModel.UpdateSecurityProfileResponse = {
        let defaultInstance = IotModel.UpdateSecurityProfileResponse(
            additionalMetricsToRetain: nil,
            alertTargets: nil,
            behaviors: nil,
            creationDate: nil,
            lastModifiedDate: nil,
            securityProfileArn: nil,
            securityProfileDescription: nil,
            securityProfileName: nil,
            version: nil)

        return defaultInstance
    }()
}

public extension UpdateStreamRequest {
    /**
     Default instance of the UpdateStreamRequest structure.
     */
    public static let __default: IotModel.UpdateStreamRequest = {
        let defaultInstance = IotModel.UpdateStreamRequest(
            description: nil,
            files: nil,
            roleArn: nil,
            streamId: "0")

        return defaultInstance
    }()
}

public extension UpdateStreamResponse {
    /**
     Default instance of the UpdateStreamResponse structure.
     */
    public static let __default: IotModel.UpdateStreamResponse = {
        let defaultInstance = IotModel.UpdateStreamResponse(
            description: nil,
            streamArn: nil,
            streamId: nil,
            streamVersion: nil)

        return defaultInstance
    }()
}

public extension UpdateThingGroupRequest {
    /**
     Default instance of the UpdateThingGroupRequest structure.
     */
    public static let __default: IotModel.UpdateThingGroupRequest = {
        let defaultInstance = IotModel.UpdateThingGroupRequest(
            expectedVersion: nil,
            thingGroupName: "0",
            thingGroupProperties: ThingGroupProperties.__default)

        return defaultInstance
    }()
}

public extension UpdateThingGroupResponse {
    /**
     Default instance of the UpdateThingGroupResponse structure.
     */
    public static let __default: IotModel.UpdateThingGroupResponse = {
        let defaultInstance = IotModel.UpdateThingGroupResponse(
            version: nil)

        return defaultInstance
    }()
}

public extension UpdateThingGroupsForThingRequest {
    /**
     Default instance of the UpdateThingGroupsForThingRequest structure.
     */
    public static let __default: IotModel.UpdateThingGroupsForThingRequest = {
        let defaultInstance = IotModel.UpdateThingGroupsForThingRequest(
            overrideDynamicGroups: nil,
            thingGroupsToAdd: nil,
            thingGroupsToRemove: nil,
            thingName: nil)

        return defaultInstance
    }()
}

public extension UpdateThingGroupsForThingResponse {
    /**
     Default instance of the UpdateThingGroupsForThingResponse structure.
     */
    public static let __default: IotModel.UpdateThingGroupsForThingResponse = {
        let defaultInstance = IotModel.UpdateThingGroupsForThingResponse()

        return defaultInstance
    }()
}

public extension UpdateThingRequest {
    /**
     Default instance of the UpdateThingRequest structure.
     */
    public static let __default: IotModel.UpdateThingRequest = {
        let defaultInstance = IotModel.UpdateThingRequest(
            attributePayload: nil,
            expectedVersion: nil,
            removeThingType: nil,
            thingName: "0",
            thingTypeName: nil)

        return defaultInstance
    }()
}

public extension UpdateThingResponse {
    /**
     Default instance of the UpdateThingResponse structure.
     */
    public static let __default: IotModel.UpdateThingResponse = {
        let defaultInstance = IotModel.UpdateThingResponse()

        return defaultInstance
    }()
}

public extension ValidateSecurityProfileBehaviorsRequest {
    /**
     Default instance of the ValidateSecurityProfileBehaviorsRequest structure.
     */
    public static let __default: IotModel.ValidateSecurityProfileBehaviorsRequest = {
        let defaultInstance = IotModel.ValidateSecurityProfileBehaviorsRequest(
            behaviors: [])

        return defaultInstance
    }()
}

public extension ValidateSecurityProfileBehaviorsResponse {
    /**
     Default instance of the ValidateSecurityProfileBehaviorsResponse structure.
     */
    public static let __default: IotModel.ValidateSecurityProfileBehaviorsResponse = {
        let defaultInstance = IotModel.ValidateSecurityProfileBehaviorsResponse(
            valid: nil,
            validationErrors: nil)

        return defaultInstance
    }()
}

public extension ValidationError {
    /**
     Default instance of the ValidationError structure.
     */
    public static let __default: IotModel.ValidationError = {
        let defaultInstance = IotModel.ValidationError(
            errorMessage: nil)

        return defaultInstance
    }()
}

public extension VersionConflictException {
    /**
     Default instance of the VersionConflictException structure.
     */
    public static let __default: IotModel.VersionConflictException = {
        let defaultInstance = IotModel.VersionConflictException(
            message: nil)

        return defaultInstance
    }()
}

public extension VersionsLimitExceededException {
    /**
     Default instance of the VersionsLimitExceededException structure.
     */
    public static let __default: IotModel.VersionsLimitExceededException = {
        let defaultInstance = IotModel.VersionsLimitExceededException(
            message: nil)

        return defaultInstance
    }()
}

public extension ViolationEvent {
    /**
     Default instance of the ViolationEvent structure.
     */
    public static let __default: IotModel.ViolationEvent = {
        let defaultInstance = IotModel.ViolationEvent(
            behavior: nil,
            metricValue: nil,
            securityProfileName: nil,
            thingName: nil,
            violationEventTime: nil,
            violationEventType: nil,
            violationId: nil)

        return defaultInstance
    }()
}
