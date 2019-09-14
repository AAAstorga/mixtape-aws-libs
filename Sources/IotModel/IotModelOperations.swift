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
// IotModelOperations.swift
// IotModel
//

import Foundation

/**
 Operation enumeration for the IotModel.
 */
public enum IotModelOperations: String {
    case acceptCertificateTransfer = "AcceptCertificateTransfer"
    case addThingToBillingGroup = "AddThingToBillingGroup"
    case addThingToThingGroup = "AddThingToThingGroup"
    case associateTargetsWithJob = "AssociateTargetsWithJob"
    case attachPolicy = "AttachPolicy"
    case attachPrincipalPolicy = "AttachPrincipalPolicy"
    case attachSecurityProfile = "AttachSecurityProfile"
    case attachThingPrincipal = "AttachThingPrincipal"
    case cancelAuditMitigationActionsTask = "CancelAuditMitigationActionsTask"
    case cancelAuditTask = "CancelAuditTask"
    case cancelCertificateTransfer = "CancelCertificateTransfer"
    case cancelJob = "CancelJob"
    case cancelJobExecution = "CancelJobExecution"
    case clearDefaultAuthorizer = "ClearDefaultAuthorizer"
    case createAuthorizer = "CreateAuthorizer"
    case createBillingGroup = "CreateBillingGroup"
    case createCertificateFromCsr = "CreateCertificateFromCsr"
    case createDynamicThingGroup = "CreateDynamicThingGroup"
    case createJob = "CreateJob"
    case createKeysAndCertificate = "CreateKeysAndCertificate"
    case createMitigationAction = "CreateMitigationAction"
    case createOTAUpdate = "CreateOTAUpdate"
    case createPolicy = "CreatePolicy"
    case createPolicyVersion = "CreatePolicyVersion"
    case createRoleAlias = "CreateRoleAlias"
    case createScheduledAudit = "CreateScheduledAudit"
    case createSecurityProfile = "CreateSecurityProfile"
    case createStream = "CreateStream"
    case createThing = "CreateThing"
    case createThingGroup = "CreateThingGroup"
    case createThingType = "CreateThingType"
    case createTopicRule = "CreateTopicRule"
    case deleteAccountAuditConfiguration = "DeleteAccountAuditConfiguration"
    case deleteAuthorizer = "DeleteAuthorizer"
    case deleteBillingGroup = "DeleteBillingGroup"
    case deleteCACertificate = "DeleteCACertificate"
    case deleteCertificate = "DeleteCertificate"
    case deleteDynamicThingGroup = "DeleteDynamicThingGroup"
    case deleteJob = "DeleteJob"
    case deleteJobExecution = "DeleteJobExecution"
    case deleteMitigationAction = "DeleteMitigationAction"
    case deleteOTAUpdate = "DeleteOTAUpdate"
    case deletePolicy = "DeletePolicy"
    case deletePolicyVersion = "DeletePolicyVersion"
    case deleteRegistrationCode = "DeleteRegistrationCode"
    case deleteRoleAlias = "DeleteRoleAlias"
    case deleteScheduledAudit = "DeleteScheduledAudit"
    case deleteSecurityProfile = "DeleteSecurityProfile"
    case deleteStream = "DeleteStream"
    case deleteThing = "DeleteThing"
    case deleteThingGroup = "DeleteThingGroup"
    case deleteThingType = "DeleteThingType"
    case deleteTopicRule = "DeleteTopicRule"
    case deleteV2LoggingLevel = "DeleteV2LoggingLevel"
    case deprecateThingType = "DeprecateThingType"
    case describeAccountAuditConfiguration = "DescribeAccountAuditConfiguration"
    case describeAuditFinding = "DescribeAuditFinding"
    case describeAuditMitigationActionsTask = "DescribeAuditMitigationActionsTask"
    case describeAuditTask = "DescribeAuditTask"
    case describeAuthorizer = "DescribeAuthorizer"
    case describeBillingGroup = "DescribeBillingGroup"
    case describeCACertificate = "DescribeCACertificate"
    case describeCertificate = "DescribeCertificate"
    case describeDefaultAuthorizer = "DescribeDefaultAuthorizer"
    case describeEndpoint = "DescribeEndpoint"
    case describeEventConfigurations = "DescribeEventConfigurations"
    case describeIndex = "DescribeIndex"
    case describeJob = "DescribeJob"
    case describeJobExecution = "DescribeJobExecution"
    case describeMitigationAction = "DescribeMitigationAction"
    case describeRoleAlias = "DescribeRoleAlias"
    case describeScheduledAudit = "DescribeScheduledAudit"
    case describeSecurityProfile = "DescribeSecurityProfile"
    case describeStream = "DescribeStream"
    case describeThing = "DescribeThing"
    case describeThingGroup = "DescribeThingGroup"
    case describeThingRegistrationTask = "DescribeThingRegistrationTask"
    case describeThingType = "DescribeThingType"
    case detachPolicy = "DetachPolicy"
    case detachPrincipalPolicy = "DetachPrincipalPolicy"
    case detachSecurityProfile = "DetachSecurityProfile"
    case detachThingPrincipal = "DetachThingPrincipal"
    case disableTopicRule = "DisableTopicRule"
    case enableTopicRule = "EnableTopicRule"
    case getEffectivePolicies = "GetEffectivePolicies"
    case getIndexingConfiguration = "GetIndexingConfiguration"
    case getJobDocument = "GetJobDocument"
    case getLoggingOptions = "GetLoggingOptions"
    case getOTAUpdate = "GetOTAUpdate"
    case getPolicy = "GetPolicy"
    case getPolicyVersion = "GetPolicyVersion"
    case getRegistrationCode = "GetRegistrationCode"
    case getStatistics = "GetStatistics"
    case getTopicRule = "GetTopicRule"
    case getV2LoggingOptions = "GetV2LoggingOptions"
    case listActiveViolations = "ListActiveViolations"
    case listAttachedPolicies = "ListAttachedPolicies"
    case listAuditFindings = "ListAuditFindings"
    case listAuditMitigationActionsExecutions = "ListAuditMitigationActionsExecutions"
    case listAuditMitigationActionsTasks = "ListAuditMitigationActionsTasks"
    case listAuditTasks = "ListAuditTasks"
    case listAuthorizers = "ListAuthorizers"
    case listBillingGroups = "ListBillingGroups"
    case listCACertificates = "ListCACertificates"
    case listCertificates = "ListCertificates"
    case listCertificatesByCA = "ListCertificatesByCA"
    case listIndices = "ListIndices"
    case listJobExecutionsForJob = "ListJobExecutionsForJob"
    case listJobExecutionsForThing = "ListJobExecutionsForThing"
    case listJobs = "ListJobs"
    case listMitigationActions = "ListMitigationActions"
    case listOTAUpdates = "ListOTAUpdates"
    case listOutgoingCertificates = "ListOutgoingCertificates"
    case listPolicies = "ListPolicies"
    case listPolicyPrincipals = "ListPolicyPrincipals"
    case listPolicyVersions = "ListPolicyVersions"
    case listPrincipalPolicies = "ListPrincipalPolicies"
    case listPrincipalThings = "ListPrincipalThings"
    case listRoleAliases = "ListRoleAliases"
    case listScheduledAudits = "ListScheduledAudits"
    case listSecurityProfiles = "ListSecurityProfiles"
    case listSecurityProfilesForTarget = "ListSecurityProfilesForTarget"
    case listStreams = "ListStreams"
    case listTagsForResource = "ListTagsForResource"
    case listTargetsForPolicy = "ListTargetsForPolicy"
    case listTargetsForSecurityProfile = "ListTargetsForSecurityProfile"
    case listThingGroups = "ListThingGroups"
    case listThingGroupsForThing = "ListThingGroupsForThing"
    case listThingPrincipals = "ListThingPrincipals"
    case listThingRegistrationTaskReports = "ListThingRegistrationTaskReports"
    case listThingRegistrationTasks = "ListThingRegistrationTasks"
    case listThingTypes = "ListThingTypes"
    case listThings = "ListThings"
    case listThingsInBillingGroup = "ListThingsInBillingGroup"
    case listThingsInThingGroup = "ListThingsInThingGroup"
    case listTopicRules = "ListTopicRules"
    case listV2LoggingLevels = "ListV2LoggingLevels"
    case listViolationEvents = "ListViolationEvents"
    case registerCACertificate = "RegisterCACertificate"
    case registerCertificate = "RegisterCertificate"
    case registerThing = "RegisterThing"
    case rejectCertificateTransfer = "RejectCertificateTransfer"
    case removeThingFromBillingGroup = "RemoveThingFromBillingGroup"
    case removeThingFromThingGroup = "RemoveThingFromThingGroup"
    case replaceTopicRule = "ReplaceTopicRule"
    case searchIndex = "SearchIndex"
    case setDefaultAuthorizer = "SetDefaultAuthorizer"
    case setDefaultPolicyVersion = "SetDefaultPolicyVersion"
    case setLoggingOptions = "SetLoggingOptions"
    case setV2LoggingLevel = "SetV2LoggingLevel"
    case setV2LoggingOptions = "SetV2LoggingOptions"
    case startAuditMitigationActionsTask = "StartAuditMitigationActionsTask"
    case startOnDemandAuditTask = "StartOnDemandAuditTask"
    case startThingRegistrationTask = "StartThingRegistrationTask"
    case stopThingRegistrationTask = "StopThingRegistrationTask"
    case tagResource = "TagResource"
    case testAuthorization = "TestAuthorization"
    case testInvokeAuthorizer = "TestInvokeAuthorizer"
    case transferCertificate = "TransferCertificate"
    case untagResource = "UntagResource"
    case updateAccountAuditConfiguration = "UpdateAccountAuditConfiguration"
    case updateAuthorizer = "UpdateAuthorizer"
    case updateBillingGroup = "UpdateBillingGroup"
    case updateCACertificate = "UpdateCACertificate"
    case updateCertificate = "UpdateCertificate"
    case updateDynamicThingGroup = "UpdateDynamicThingGroup"
    case updateEventConfigurations = "UpdateEventConfigurations"
    case updateIndexingConfiguration = "UpdateIndexingConfiguration"
    case updateJob = "UpdateJob"
    case updateMitigationAction = "UpdateMitigationAction"
    case updateRoleAlias = "UpdateRoleAlias"
    case updateScheduledAudit = "UpdateScheduledAudit"
    case updateSecurityProfile = "UpdateSecurityProfile"
    case updateStream = "UpdateStream"
    case updateThing = "UpdateThing"
    case updateThingGroup = "UpdateThingGroup"
    case updateThingGroupsForThing = "UpdateThingGroupsForThing"
    case validateSecurityProfileBehaviors = "ValidateSecurityProfileBehaviors"

    public var operationPath: String {
        switch self {
        case .acceptCertificateTransfer:
            return "/accept-certificate-transfer/{certificateId}"
        case .addThingToBillingGroup:
            return "/billing-groups/addThingToBillingGroup"
        case .addThingToThingGroup:
            return "/thing-groups/addThingToThingGroup"
        case .associateTargetsWithJob:
            return "/jobs/{jobId}/targets"
        case .attachPolicy:
            return "/target-policies/{policyName}"
        case .attachPrincipalPolicy:
            return "/principal-policies/{policyName}"
        case .attachSecurityProfile:
            return "/security-profiles/{securityProfileName}/targets"
        case .attachThingPrincipal:
            return "/things/{thingName}/principals"
        case .cancelAuditMitigationActionsTask:
            return "/audit/mitigationactions/tasks/{taskId}/cancel"
        case .cancelAuditTask:
            return "/audit/tasks/{taskId}/cancel"
        case .cancelCertificateTransfer:
            return "/cancel-certificate-transfer/{certificateId}"
        case .cancelJob:
            return "/jobs/{jobId}/cancel"
        case .cancelJobExecution:
            return "/things/{thingName}/jobs/{jobId}/cancel"
        case .clearDefaultAuthorizer:
            return "/default-authorizer"
        case .createAuthorizer:
            return "/authorizer/{authorizerName}"
        case .createBillingGroup:
            return "/billing-groups/{billingGroupName}"
        case .createCertificateFromCsr:
            return "/certificates"
        case .createDynamicThingGroup:
            return "/dynamic-thing-groups/{thingGroupName}"
        case .createJob:
            return "/jobs/{jobId}"
        case .createKeysAndCertificate:
            return "/keys-and-certificate"
        case .createMitigationAction:
            return "/mitigationactions/actions/{actionName}"
        case .createOTAUpdate:
            return "/otaUpdates/{otaUpdateId}"
        case .createPolicy:
            return "/policies/{policyName}"
        case .createPolicyVersion:
            return "/policies/{policyName}/version"
        case .createRoleAlias:
            return "/role-aliases/{roleAlias}"
        case .createScheduledAudit:
            return "/audit/scheduledaudits/{scheduledAuditName}"
        case .createSecurityProfile:
            return "/security-profiles/{securityProfileName}"
        case .createStream:
            return "/streams/{streamId}"
        case .createThing:
            return "/things/{thingName}"
        case .createThingGroup:
            return "/thing-groups/{thingGroupName}"
        case .createThingType:
            return "/thing-types/{thingTypeName}"
        case .createTopicRule:
            return "/rules/{ruleName}"
        case .deleteAccountAuditConfiguration:
            return "/audit/configuration"
        case .deleteAuthorizer:
            return "/authorizer/{authorizerName}"
        case .deleteBillingGroup:
            return "/billing-groups/{billingGroupName}"
        case .deleteCACertificate:
            return "/cacertificate/{caCertificateId}"
        case .deleteCertificate:
            return "/certificates/{certificateId}"
        case .deleteDynamicThingGroup:
            return "/dynamic-thing-groups/{thingGroupName}"
        case .deleteJob:
            return "/jobs/{jobId}"
        case .deleteJobExecution:
            return "/things/{thingName}/jobs/{jobId}/executionNumber/{executionNumber}"
        case .deleteMitigationAction:
            return "/mitigationactions/actions/{actionName}"
        case .deleteOTAUpdate:
            return "/otaUpdates/{otaUpdateId}"
        case .deletePolicy:
            return "/policies/{policyName}"
        case .deletePolicyVersion:
            return "/policies/{policyName}/version/{policyVersionId}"
        case .deleteRegistrationCode:
            return "/registrationcode"
        case .deleteRoleAlias:
            return "/role-aliases/{roleAlias}"
        case .deleteScheduledAudit:
            return "/audit/scheduledaudits/{scheduledAuditName}"
        case .deleteSecurityProfile:
            return "/security-profiles/{securityProfileName}"
        case .deleteStream:
            return "/streams/{streamId}"
        case .deleteThing:
            return "/things/{thingName}"
        case .deleteThingGroup:
            return "/thing-groups/{thingGroupName}"
        case .deleteThingType:
            return "/thing-types/{thingTypeName}"
        case .deleteTopicRule:
            return "/rules/{ruleName}"
        case .deleteV2LoggingLevel:
            return "/v2LoggingLevel"
        case .deprecateThingType:
            return "/thing-types/{thingTypeName}/deprecate"
        case .describeAccountAuditConfiguration:
            return "/audit/configuration"
        case .describeAuditFinding:
            return "/audit/findings/{findingId}"
        case .describeAuditMitigationActionsTask:
            return "/audit/mitigationactions/tasks/{taskId}"
        case .describeAuditTask:
            return "/audit/tasks/{taskId}"
        case .describeAuthorizer:
            return "/authorizer/{authorizerName}"
        case .describeBillingGroup:
            return "/billing-groups/{billingGroupName}"
        case .describeCACertificate:
            return "/cacertificate/{caCertificateId}"
        case .describeCertificate:
            return "/certificates/{certificateId}"
        case .describeDefaultAuthorizer:
            return "/default-authorizer"
        case .describeEndpoint:
            return "/endpoint"
        case .describeEventConfigurations:
            return "/event-configurations"
        case .describeIndex:
            return "/indices/{indexName}"
        case .describeJob:
            return "/jobs/{jobId}"
        case .describeJobExecution:
            return "/things/{thingName}/jobs/{jobId}"
        case .describeMitigationAction:
            return "/mitigationactions/actions/{actionName}"
        case .describeRoleAlias:
            return "/role-aliases/{roleAlias}"
        case .describeScheduledAudit:
            return "/audit/scheduledaudits/{scheduledAuditName}"
        case .describeSecurityProfile:
            return "/security-profiles/{securityProfileName}"
        case .describeStream:
            return "/streams/{streamId}"
        case .describeThing:
            return "/things/{thingName}"
        case .describeThingGroup:
            return "/thing-groups/{thingGroupName}"
        case .describeThingRegistrationTask:
            return "/thing-registration-tasks/{taskId}"
        case .describeThingType:
            return "/thing-types/{thingTypeName}"
        case .detachPolicy:
            return "/target-policies/{policyName}"
        case .detachPrincipalPolicy:
            return "/principal-policies/{policyName}"
        case .detachSecurityProfile:
            return "/security-profiles/{securityProfileName}/targets"
        case .detachThingPrincipal:
            return "/things/{thingName}/principals"
        case .disableTopicRule:
            return "/rules/{ruleName}/disable"
        case .enableTopicRule:
            return "/rules/{ruleName}/enable"
        case .getEffectivePolicies:
            return "/effective-policies"
        case .getIndexingConfiguration:
            return "/indexing/config"
        case .getJobDocument:
            return "/jobs/{jobId}/job-document"
        case .getLoggingOptions:
            return "/loggingOptions"
        case .getOTAUpdate:
            return "/otaUpdates/{otaUpdateId}"
        case .getPolicy:
            return "/policies/{policyName}"
        case .getPolicyVersion:
            return "/policies/{policyName}/version/{policyVersionId}"
        case .getRegistrationCode:
            return "/registrationcode"
        case .getStatistics:
            return "/indices/statistics"
        case .getTopicRule:
            return "/rules/{ruleName}"
        case .getV2LoggingOptions:
            return "/v2LoggingOptions"
        case .listActiveViolations:
            return "/active-violations"
        case .listAttachedPolicies:
            return "/attached-policies/{target}"
        case .listAuditFindings:
            return "/audit/findings"
        case .listAuditMitigationActionsExecutions:
            return "/audit/mitigationactions/executions"
        case .listAuditMitigationActionsTasks:
            return "/audit/mitigationactions/tasks"
        case .listAuditTasks:
            return "/audit/tasks"
        case .listAuthorizers:
            return "/authorizers/"
        case .listBillingGroups:
            return "/billing-groups"
        case .listCACertificates:
            return "/cacertificates"
        case .listCertificates:
            return "/certificates"
        case .listCertificatesByCA:
            return "/certificates-by-ca/{caCertificateId}"
        case .listIndices:
            return "/indices"
        case .listJobExecutionsForJob:
            return "/jobs/{jobId}/things"
        case .listJobExecutionsForThing:
            return "/things/{thingName}/jobs"
        case .listJobs:
            return "/jobs"
        case .listMitigationActions:
            return "/mitigationactions/actions"
        case .listOTAUpdates:
            return "/otaUpdates"
        case .listOutgoingCertificates:
            return "/certificates-out-going"
        case .listPolicies:
            return "/policies"
        case .listPolicyPrincipals:
            return "/policy-principals"
        case .listPolicyVersions:
            return "/policies/{policyName}/version"
        case .listPrincipalPolicies:
            return "/principal-policies"
        case .listPrincipalThings:
            return "/principals/things"
        case .listRoleAliases:
            return "/role-aliases"
        case .listScheduledAudits:
            return "/audit/scheduledaudits"
        case .listSecurityProfiles:
            return "/security-profiles"
        case .listSecurityProfilesForTarget:
            return "/security-profiles-for-target"
        case .listStreams:
            return "/streams"
        case .listTagsForResource:
            return "/tags"
        case .listTargetsForPolicy:
            return "/policy-targets/{policyName}"
        case .listTargetsForSecurityProfile:
            return "/security-profiles/{securityProfileName}/targets"
        case .listThingGroups:
            return "/thing-groups"
        case .listThingGroupsForThing:
            return "/things/{thingName}/thing-groups"
        case .listThingPrincipals:
            return "/things/{thingName}/principals"
        case .listThingRegistrationTaskReports:
            return "/thing-registration-tasks/{taskId}/reports"
        case .listThingRegistrationTasks:
            return "/thing-registration-tasks"
        case .listThingTypes:
            return "/thing-types"
        case .listThings:
            return "/things"
        case .listThingsInBillingGroup:
            return "/billing-groups/{billingGroupName}/things"
        case .listThingsInThingGroup:
            return "/thing-groups/{thingGroupName}/things"
        case .listTopicRules:
            return "/rules"
        case .listV2LoggingLevels:
            return "/v2LoggingLevel"
        case .listViolationEvents:
            return "/violation-events"
        case .registerCACertificate:
            return "/cacertificate"
        case .registerCertificate:
            return "/certificate/register"
        case .registerThing:
            return "/things"
        case .rejectCertificateTransfer:
            return "/reject-certificate-transfer/{certificateId}"
        case .removeThingFromBillingGroup:
            return "/billing-groups/removeThingFromBillingGroup"
        case .removeThingFromThingGroup:
            return "/thing-groups/removeThingFromThingGroup"
        case .replaceTopicRule:
            return "/rules/{ruleName}"
        case .searchIndex:
            return "/indices/search"
        case .setDefaultAuthorizer:
            return "/default-authorizer"
        case .setDefaultPolicyVersion:
            return "/policies/{policyName}/version/{policyVersionId}"
        case .setLoggingOptions:
            return "/loggingOptions"
        case .setV2LoggingLevel:
            return "/v2LoggingLevel"
        case .setV2LoggingOptions:
            return "/v2LoggingOptions"
        case .startAuditMitigationActionsTask:
            return "/audit/mitigationactions/tasks/{taskId}"
        case .startOnDemandAuditTask:
            return "/audit/tasks"
        case .startThingRegistrationTask:
            return "/thing-registration-tasks"
        case .stopThingRegistrationTask:
            return "/thing-registration-tasks/{taskId}/cancel"
        case .tagResource:
            return "/tags"
        case .testAuthorization:
            return "/test-authorization"
        case .testInvokeAuthorizer:
            return "/authorizer/{authorizerName}/test"
        case .transferCertificate:
            return "/transfer-certificate/{certificateId}"
        case .untagResource:
            return "/untag"
        case .updateAccountAuditConfiguration:
            return "/audit/configuration"
        case .updateAuthorizer:
            return "/authorizer/{authorizerName}"
        case .updateBillingGroup:
            return "/billing-groups/{billingGroupName}"
        case .updateCACertificate:
            return "/cacertificate/{caCertificateId}"
        case .updateCertificate:
            return "/certificates/{certificateId}"
        case .updateDynamicThingGroup:
            return "/dynamic-thing-groups/{thingGroupName}"
        case .updateEventConfigurations:
            return "/event-configurations"
        case .updateIndexingConfiguration:
            return "/indexing/config"
        case .updateJob:
            return "/jobs/{jobId}"
        case .updateMitigationAction:
            return "/mitigationactions/actions/{actionName}"
        case .updateRoleAlias:
            return "/role-aliases/{roleAlias}"
        case .updateScheduledAudit:
            return "/audit/scheduledaudits/{scheduledAuditName}"
        case .updateSecurityProfile:
            return "/security-profiles/{securityProfileName}"
        case .updateStream:
            return "/streams/{streamId}"
        case .updateThing:
            return "/things/{thingName}"
        case .updateThingGroup:
            return "/thing-groups/{thingGroupName}"
        case .updateThingGroupsForThing:
            return "/thing-groups/updateThingGroupsForThing"
        case .validateSecurityProfileBehaviors:
            return "/security-profile-behaviors/validate"
        }
    }
}

/**
 Structure to encode the path input for the AcceptCertificateTransfer
 operation.
 */
public struct AcceptCertificateTransferOperationInputPath: Codable, Equatable {
    public var certificateId: CertificateId

    public init(certificateId: CertificateId) {
        self.certificateId = certificateId
    }

    enum CodingKeys: String, CodingKey {
        case certificateId
    }

    public func validate() throws {
        try certificateId.validateAsCertificateId()
    }
}

public extension AcceptCertificateTransferRequest {
    public func asIotModelAcceptCertificateTransferOperationInputPath() -> AcceptCertificateTransferOperationInputPath {
        return AcceptCertificateTransferOperationInputPath(
            certificateId: certificateId)
    }
}

/**
 Structure to encode the query input for the AcceptCertificateTransfer
 operation.
 */
public struct AcceptCertificateTransferOperationInputQuery: Codable, Equatable {
    public var setAsActive: SetAsActive?

    public init(setAsActive: SetAsActive? = nil) {
        self.setAsActive = setAsActive
    }

    enum CodingKeys: String, CodingKey {
        case setAsActive
    }

    public func validate() throws {
    }
}

public extension AcceptCertificateTransferRequest {
    public func asIotModelAcceptCertificateTransferOperationInputQuery() -> AcceptCertificateTransferOperationInputQuery {
        return AcceptCertificateTransferOperationInputQuery(
            setAsActive: setAsActive)
    }
}

/**
 Structure to encode the path input for the AssociateTargetsWithJob
 operation.
 */
public struct AssociateTargetsWithJobOperationInputPath: Codable, Equatable {
    public var jobId: JobId

    public init(jobId: JobId) {
        self.jobId = jobId
    }

    enum CodingKeys: String, CodingKey {
        case jobId
    }

    public func validate() throws {
        try jobId.validateAsJobId()
    }
}

public extension AssociateTargetsWithJobRequest {
    public func asIotModelAssociateTargetsWithJobOperationInputPath() -> AssociateTargetsWithJobOperationInputPath {
        return AssociateTargetsWithJobOperationInputPath(
            jobId: jobId)
    }
}

/**
 Structure to encode the body input for the AssociateTargetsWithJob
 operation.
 */
public struct AssociateTargetsWithJobOperationInputBody: Codable, Equatable {
    public var comment: Comment?
    public var targets: JobTargets

    public init(comment: Comment? = nil,
                targets: JobTargets) {
        self.comment = comment
        self.targets = targets
    }

    enum CodingKeys: String, CodingKey {
        case comment
        case targets
    }

    public func validate() throws {
        try comment?.validateAsComment()
        try targets.validateAsJobTargets()
    }
}

public extension AssociateTargetsWithJobRequest {
    public func asIotModelAssociateTargetsWithJobOperationInputBody() -> AssociateTargetsWithJobOperationInputBody {
        return AssociateTargetsWithJobOperationInputBody(
            comment: comment,
            targets: targets)
    }
}

/**
 Structure to encode the path input for the AttachPolicy
 operation.
 */
public struct AttachPolicyOperationInputPath: Codable, Equatable {
    public var policyName: PolicyName

    public init(policyName: PolicyName) {
        self.policyName = policyName
    }

    enum CodingKeys: String, CodingKey {
        case policyName
    }

    public func validate() throws {
        try policyName.validateAsPolicyName()
    }
}

public extension AttachPolicyRequest {
    public func asIotModelAttachPolicyOperationInputPath() -> AttachPolicyOperationInputPath {
        return AttachPolicyOperationInputPath(
            policyName: policyName)
    }
}

/**
 Structure to encode the body input for the AttachPolicy
 operation.
 */
public struct AttachPolicyOperationInputBody: Codable, Equatable {
    public var target: PolicyTarget

    public init(target: PolicyTarget) {
        self.target = target
    }

    enum CodingKeys: String, CodingKey {
        case target
    }

    public func validate() throws {
    }
}

public extension AttachPolicyRequest {
    public func asIotModelAttachPolicyOperationInputBody() -> AttachPolicyOperationInputBody {
        return AttachPolicyOperationInputBody(
            target: target)
    }
}

/**
 Structure to encode the path input for the AttachPrincipalPolicy
 operation.
 */
public struct AttachPrincipalPolicyOperationInputPath: Codable, Equatable {
    public var policyName: PolicyName

    public init(policyName: PolicyName) {
        self.policyName = policyName
    }

    enum CodingKeys: String, CodingKey {
        case policyName
    }

    public func validate() throws {
        try policyName.validateAsPolicyName()
    }
}

public extension AttachPrincipalPolicyRequest {
    public func asIotModelAttachPrincipalPolicyOperationInputPath() -> AttachPrincipalPolicyOperationInputPath {
        return AttachPrincipalPolicyOperationInputPath(
            policyName: policyName)
    }
}

/**
 Structure to encode the body input for the AttachPrincipalPolicy
 operation.
 */
public struct AttachPrincipalPolicyOperationInputAdditionalHeaders: Codable, Equatable {
    public var principal: Principal

    public init(principal: Principal) {
        self.principal = principal
    }

    enum CodingKeys: String, CodingKey {
        case principal = "x-amzn-iot-principal"
    }

    public func validate() throws {
    }
}

public extension AttachPrincipalPolicyRequest {
    public func asIotModelAttachPrincipalPolicyOperationInputAdditionalHeaders() -> AttachPrincipalPolicyOperationInputAdditionalHeaders {
        return AttachPrincipalPolicyOperationInputAdditionalHeaders(
            principal: principal)
    }
}

/**
 Structure to encode the path input for the AttachSecurityProfile
 operation.
 */
public struct AttachSecurityProfileOperationInputPath: Codable, Equatable {
    public var securityProfileName: SecurityProfileName

    public init(securityProfileName: SecurityProfileName) {
        self.securityProfileName = securityProfileName
    }

    enum CodingKeys: String, CodingKey {
        case securityProfileName
    }

    public func validate() throws {
        try securityProfileName.validateAsSecurityProfileName()
    }
}

public extension AttachSecurityProfileRequest {
    public func asIotModelAttachSecurityProfileOperationInputPath() -> AttachSecurityProfileOperationInputPath {
        return AttachSecurityProfileOperationInputPath(
            securityProfileName: securityProfileName)
    }
}

/**
 Structure to encode the query input for the AttachSecurityProfile
 operation.
 */
public struct AttachSecurityProfileOperationInputQuery: Codable, Equatable {
    public var securityProfileTargetArn: SecurityProfileTargetArn

    public init(securityProfileTargetArn: SecurityProfileTargetArn) {
        self.securityProfileTargetArn = securityProfileTargetArn
    }

    enum CodingKeys: String, CodingKey {
        case securityProfileTargetArn
    }

    public func validate() throws {
    }
}

public extension AttachSecurityProfileRequest {
    public func asIotModelAttachSecurityProfileOperationInputQuery() -> AttachSecurityProfileOperationInputQuery {
        return AttachSecurityProfileOperationInputQuery(
            securityProfileTargetArn: securityProfileTargetArn)
    }
}

/**
 Structure to encode the path input for the AttachThingPrincipal
 operation.
 */
public struct AttachThingPrincipalOperationInputPath: Codable, Equatable {
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

public extension AttachThingPrincipalRequest {
    public func asIotModelAttachThingPrincipalOperationInputPath() -> AttachThingPrincipalOperationInputPath {
        return AttachThingPrincipalOperationInputPath(
            thingName: thingName)
    }
}

/**
 Structure to encode the body input for the AttachThingPrincipal
 operation.
 */
public struct AttachThingPrincipalOperationInputAdditionalHeaders: Codable, Equatable {
    public var principal: Principal

    public init(principal: Principal) {
        self.principal = principal
    }

    enum CodingKeys: String, CodingKey {
        case principal = "x-amzn-principal"
    }

    public func validate() throws {
    }
}

public extension AttachThingPrincipalRequest {
    public func asIotModelAttachThingPrincipalOperationInputAdditionalHeaders() -> AttachThingPrincipalOperationInputAdditionalHeaders {
        return AttachThingPrincipalOperationInputAdditionalHeaders(
            principal: principal)
    }
}

/**
 Structure to encode the path input for the CancelAuditMitigationActionsTask
 operation.
 */
public struct CancelAuditMitigationActionsTaskOperationInputPath: Codable, Equatable {
    public var taskId: AuditMitigationActionsTaskId

    public init(taskId: AuditMitigationActionsTaskId) {
        self.taskId = taskId
    }

    enum CodingKeys: String, CodingKey {
        case taskId
    }

    public func validate() throws {
        try taskId.validateAsAuditMitigationActionsTaskId()
    }
}

public extension CancelAuditMitigationActionsTaskRequest {
    public func asIotModelCancelAuditMitigationActionsTaskOperationInputPath() -> CancelAuditMitigationActionsTaskOperationInputPath {
        return CancelAuditMitigationActionsTaskOperationInputPath(
            taskId: taskId)
    }
}

/**
 Structure to encode the path input for the CancelAuditTask
 operation.
 */
public struct CancelAuditTaskOperationInputPath: Codable, Equatable {
    public var taskId: AuditTaskId

    public init(taskId: AuditTaskId) {
        self.taskId = taskId
    }

    enum CodingKeys: String, CodingKey {
        case taskId
    }

    public func validate() throws {
        try taskId.validateAsAuditTaskId()
    }
}

public extension CancelAuditTaskRequest {
    public func asIotModelCancelAuditTaskOperationInputPath() -> CancelAuditTaskOperationInputPath {
        return CancelAuditTaskOperationInputPath(
            taskId: taskId)
    }
}

/**
 Structure to encode the path input for the CancelCertificateTransfer
 operation.
 */
public struct CancelCertificateTransferOperationInputPath: Codable, Equatable {
    public var certificateId: CertificateId

    public init(certificateId: CertificateId) {
        self.certificateId = certificateId
    }

    enum CodingKeys: String, CodingKey {
        case certificateId
    }

    public func validate() throws {
        try certificateId.validateAsCertificateId()
    }
}

public extension CancelCertificateTransferRequest {
    public func asIotModelCancelCertificateTransferOperationInputPath() -> CancelCertificateTransferOperationInputPath {
        return CancelCertificateTransferOperationInputPath(
            certificateId: certificateId)
    }
}

/**
 Structure to encode the path input for the CancelJob
 operation.
 */
public struct CancelJobOperationInputPath: Codable, Equatable {
    public var jobId: JobId

    public init(jobId: JobId) {
        self.jobId = jobId
    }

    enum CodingKeys: String, CodingKey {
        case jobId
    }

    public func validate() throws {
        try jobId.validateAsJobId()
    }
}

public extension CancelJobRequest {
    public func asIotModelCancelJobOperationInputPath() -> CancelJobOperationInputPath {
        return CancelJobOperationInputPath(
            jobId: jobId)
    }
}

/**
 Structure to encode the query input for the CancelJob
 operation.
 */
public struct CancelJobOperationInputQuery: Codable, Equatable {
    public var force: ForceFlag?

    public init(force: ForceFlag? = nil) {
        self.force = force
    }

    enum CodingKeys: String, CodingKey {
        case force
    }

    public func validate() throws {
    }
}

public extension CancelJobRequest {
    public func asIotModelCancelJobOperationInputQuery() -> CancelJobOperationInputQuery {
        return CancelJobOperationInputQuery(
            force: force)
    }
}

/**
 Structure to encode the body input for the CancelJob
 operation.
 */
public struct CancelJobOperationInputBody: Codable, Equatable {
    public var comment: Comment?
    public var reasonCode: ReasonCode?

    public init(comment: Comment? = nil,
                reasonCode: ReasonCode? = nil) {
        self.comment = comment
        self.reasonCode = reasonCode
    }

    enum CodingKeys: String, CodingKey {
        case comment
        case reasonCode
    }

    public func validate() throws {
        try comment?.validateAsComment()
        try reasonCode?.validateAsReasonCode()
    }
}

public extension CancelJobRequest {
    public func asIotModelCancelJobOperationInputBody() -> CancelJobOperationInputBody {
        return CancelJobOperationInputBody(
            comment: comment,
            reasonCode: reasonCode)
    }
}

/**
 Structure to encode the path input for the CancelJobExecution
 operation.
 */
public struct CancelJobExecutionOperationInputPath: Codable, Equatable {
    public var jobId: JobId
    public var thingName: ThingName

    public init(jobId: JobId,
                thingName: ThingName) {
        self.jobId = jobId
        self.thingName = thingName
    }

    enum CodingKeys: String, CodingKey {
        case jobId
        case thingName
    }

    public func validate() throws {
        try jobId.validateAsJobId()
        try thingName.validateAsThingName()
    }
}

public extension CancelJobExecutionRequest {
    public func asIotModelCancelJobExecutionOperationInputPath() -> CancelJobExecutionOperationInputPath {
        return CancelJobExecutionOperationInputPath(
            jobId: jobId,
            thingName: thingName)
    }
}

/**
 Structure to encode the query input for the CancelJobExecution
 operation.
 */
public struct CancelJobExecutionOperationInputQuery: Codable, Equatable {
    public var force: ForceFlag?

    public init(force: ForceFlag? = nil) {
        self.force = force
    }

    enum CodingKeys: String, CodingKey {
        case force
    }

    public func validate() throws {
    }
}

public extension CancelJobExecutionRequest {
    public func asIotModelCancelJobExecutionOperationInputQuery() -> CancelJobExecutionOperationInputQuery {
        return CancelJobExecutionOperationInputQuery(
            force: force)
    }
}

/**
 Structure to encode the body input for the CancelJobExecution
 operation.
 */
public struct CancelJobExecutionOperationInputBody: Codable, Equatable {
    public var expectedVersion: ExpectedVersion?
    public var statusDetails: DetailsMap?

    public init(expectedVersion: ExpectedVersion? = nil,
                statusDetails: DetailsMap? = nil) {
        self.expectedVersion = expectedVersion
        self.statusDetails = statusDetails
    }

    enum CodingKeys: String, CodingKey {
        case expectedVersion
        case statusDetails
    }

    public func validate() throws {
    }
}

public extension CancelJobExecutionRequest {
    public func asIotModelCancelJobExecutionOperationInputBody() -> CancelJobExecutionOperationInputBody {
        return CancelJobExecutionOperationInputBody(
            expectedVersion: expectedVersion,
            statusDetails: statusDetails)
    }
}

/**
 Structure to encode the path input for the CreateAuthorizer
 operation.
 */
public struct CreateAuthorizerOperationInputPath: Codable, Equatable {
    public var authorizerName: AuthorizerName

    public init(authorizerName: AuthorizerName) {
        self.authorizerName = authorizerName
    }

    enum CodingKeys: String, CodingKey {
        case authorizerName
    }

    public func validate() throws {
        try authorizerName.validateAsAuthorizerName()
    }
}

public extension CreateAuthorizerRequest {
    public func asIotModelCreateAuthorizerOperationInputPath() -> CreateAuthorizerOperationInputPath {
        return CreateAuthorizerOperationInputPath(
            authorizerName: authorizerName)
    }
}

/**
 Structure to encode the body input for the CreateAuthorizer
 operation.
 */
public struct CreateAuthorizerOperationInputBody: Codable, Equatable {
    public var authorizerFunctionArn: AuthorizerFunctionArn
    public var status: AuthorizerStatus?
    public var tokenKeyName: TokenKeyName
    public var tokenSigningPublicKeys: PublicKeyMap

    public init(authorizerFunctionArn: AuthorizerFunctionArn,
                status: AuthorizerStatus? = nil,
                tokenKeyName: TokenKeyName,
                tokenSigningPublicKeys: PublicKeyMap) {
        self.authorizerFunctionArn = authorizerFunctionArn
        self.status = status
        self.tokenKeyName = tokenKeyName
        self.tokenSigningPublicKeys = tokenSigningPublicKeys
    }

    enum CodingKeys: String, CodingKey {
        case authorizerFunctionArn
        case status
        case tokenKeyName
        case tokenSigningPublicKeys
    }

    public func validate() throws {
        try tokenKeyName.validateAsTokenKeyName()
    }
}

public extension CreateAuthorizerRequest {
    public func asIotModelCreateAuthorizerOperationInputBody() -> CreateAuthorizerOperationInputBody {
        return CreateAuthorizerOperationInputBody(
            authorizerFunctionArn: authorizerFunctionArn,
            status: status,
            tokenKeyName: tokenKeyName,
            tokenSigningPublicKeys: tokenSigningPublicKeys)
    }
}

/**
 Structure to encode the path input for the CreateBillingGroup
 operation.
 */
public struct CreateBillingGroupOperationInputPath: Codable, Equatable {
    public var billingGroupName: BillingGroupName

    public init(billingGroupName: BillingGroupName) {
        self.billingGroupName = billingGroupName
    }

    enum CodingKeys: String, CodingKey {
        case billingGroupName
    }

    public func validate() throws {
        try billingGroupName.validateAsBillingGroupName()
    }
}

public extension CreateBillingGroupRequest {
    public func asIotModelCreateBillingGroupOperationInputPath() -> CreateBillingGroupOperationInputPath {
        return CreateBillingGroupOperationInputPath(
            billingGroupName: billingGroupName)
    }
}

/**
 Structure to encode the body input for the CreateBillingGroup
 operation.
 */
public struct CreateBillingGroupOperationInputBody: Codable, Equatable {
    public var billingGroupProperties: BillingGroupProperties?
    public var tags: TagList?

    public init(billingGroupProperties: BillingGroupProperties? = nil,
                tags: TagList? = nil) {
        self.billingGroupProperties = billingGroupProperties
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case billingGroupProperties
        case tags
    }

    public func validate() throws {
        try billingGroupProperties?.validate()
    }
}

public extension CreateBillingGroupRequest {
    public func asIotModelCreateBillingGroupOperationInputBody() -> CreateBillingGroupOperationInputBody {
        return CreateBillingGroupOperationInputBody(
            billingGroupProperties: billingGroupProperties,
            tags: tags)
    }
}

/**
 Structure to encode the query input for the CreateCertificateFromCsr
 operation.
 */
public struct CreateCertificateFromCsrOperationInputQuery: Codable, Equatable {
    public var setAsActive: SetAsActive?

    public init(setAsActive: SetAsActive? = nil) {
        self.setAsActive = setAsActive
    }

    enum CodingKeys: String, CodingKey {
        case setAsActive
    }

    public func validate() throws {
    }
}

public extension CreateCertificateFromCsrRequest {
    public func asIotModelCreateCertificateFromCsrOperationInputQuery() -> CreateCertificateFromCsrOperationInputQuery {
        return CreateCertificateFromCsrOperationInputQuery(
            setAsActive: setAsActive)
    }
}

/**
 Structure to encode the body input for the CreateCertificateFromCsr
 operation.
 */
public struct CreateCertificateFromCsrOperationInputBody: Codable, Equatable {
    public var certificateSigningRequest: CertificateSigningRequest

    public init(certificateSigningRequest: CertificateSigningRequest) {
        self.certificateSigningRequest = certificateSigningRequest
    }

    enum CodingKeys: String, CodingKey {
        case certificateSigningRequest
    }

    public func validate() throws {
        try certificateSigningRequest.validateAsCertificateSigningRequest()
    }
}

public extension CreateCertificateFromCsrRequest {
    public func asIotModelCreateCertificateFromCsrOperationInputBody() -> CreateCertificateFromCsrOperationInputBody {
        return CreateCertificateFromCsrOperationInputBody(
            certificateSigningRequest: certificateSigningRequest)
    }
}

/**
 Structure to encode the path input for the CreateDynamicThingGroup
 operation.
 */
public struct CreateDynamicThingGroupOperationInputPath: Codable, Equatable {
    public var thingGroupName: ThingGroupName

    public init(thingGroupName: ThingGroupName) {
        self.thingGroupName = thingGroupName
    }

    enum CodingKeys: String, CodingKey {
        case thingGroupName
    }

    public func validate() throws {
        try thingGroupName.validateAsThingGroupName()
    }
}

public extension CreateDynamicThingGroupRequest {
    public func asIotModelCreateDynamicThingGroupOperationInputPath() -> CreateDynamicThingGroupOperationInputPath {
        return CreateDynamicThingGroupOperationInputPath(
            thingGroupName: thingGroupName)
    }
}

/**
 Structure to encode the body input for the CreateDynamicThingGroup
 operation.
 */
public struct CreateDynamicThingGroupOperationInputBody: Codable, Equatable {
    public var indexName: IndexName?
    public var queryString: QueryString
    public var queryVersion: QueryVersion?
    public var tags: TagList?
    public var thingGroupProperties: ThingGroupProperties?

    public init(indexName: IndexName? = nil,
                queryString: QueryString,
                queryVersion: QueryVersion? = nil,
                tags: TagList? = nil,
                thingGroupProperties: ThingGroupProperties? = nil) {
        self.indexName = indexName
        self.queryString = queryString
        self.queryVersion = queryVersion
        self.tags = tags
        self.thingGroupProperties = thingGroupProperties
    }

    enum CodingKeys: String, CodingKey {
        case indexName
        case queryString
        case queryVersion
        case tags
        case thingGroupProperties
    }

    public func validate() throws {
        try indexName?.validateAsIndexName()
        try queryString.validateAsQueryString()
        try thingGroupProperties?.validate()
    }
}

public extension CreateDynamicThingGroupRequest {
    public func asIotModelCreateDynamicThingGroupOperationInputBody() -> CreateDynamicThingGroupOperationInputBody {
        return CreateDynamicThingGroupOperationInputBody(
            indexName: indexName,
            queryString: queryString,
            queryVersion: queryVersion,
            tags: tags,
            thingGroupProperties: thingGroupProperties)
    }
}

/**
 Structure to encode the path input for the CreateJob
 operation.
 */
public struct CreateJobOperationInputPath: Codable, Equatable {
    public var jobId: JobId

    public init(jobId: JobId) {
        self.jobId = jobId
    }

    enum CodingKeys: String, CodingKey {
        case jobId
    }

    public func validate() throws {
        try jobId.validateAsJobId()
    }
}

public extension CreateJobRequest {
    public func asIotModelCreateJobOperationInputPath() -> CreateJobOperationInputPath {
        return CreateJobOperationInputPath(
            jobId: jobId)
    }
}

/**
 Structure to encode the body input for the CreateJob
 operation.
 */
public struct CreateJobOperationInputBody: Codable, Equatable {
    public var abortConfig: AbortConfig?
    public var description: JobDescription?
    public var document: JobDocument?
    public var documentSource: JobDocumentSource?
    public var jobExecutionsRolloutConfig: JobExecutionsRolloutConfig?
    public var presignedUrlConfig: PresignedUrlConfig?
    public var tags: TagList?
    public var targetSelection: TargetSelection?
    public var targets: JobTargets
    public var timeoutConfig: TimeoutConfig?

    public init(abortConfig: AbortConfig? = nil,
                description: JobDescription? = nil,
                document: JobDocument? = nil,
                documentSource: JobDocumentSource? = nil,
                jobExecutionsRolloutConfig: JobExecutionsRolloutConfig? = nil,
                presignedUrlConfig: PresignedUrlConfig? = nil,
                tags: TagList? = nil,
                targetSelection: TargetSelection? = nil,
                targets: JobTargets,
                timeoutConfig: TimeoutConfig? = nil) {
        self.abortConfig = abortConfig
        self.description = description
        self.document = document
        self.documentSource = documentSource
        self.jobExecutionsRolloutConfig = jobExecutionsRolloutConfig
        self.presignedUrlConfig = presignedUrlConfig
        self.tags = tags
        self.targetSelection = targetSelection
        self.targets = targets
        self.timeoutConfig = timeoutConfig
    }

    enum CodingKeys: String, CodingKey {
        case abortConfig
        case description
        case document
        case documentSource
        case jobExecutionsRolloutConfig
        case presignedUrlConfig
        case tags
        case targetSelection
        case targets
        case timeoutConfig
    }

    public func validate() throws {
        try abortConfig?.validate()
        try description?.validateAsJobDescription()
        try document?.validateAsJobDocument()
        try documentSource?.validateAsJobDocumentSource()
        try jobExecutionsRolloutConfig?.validate()
        try presignedUrlConfig?.validate()
        try targets.validateAsJobTargets()
        try timeoutConfig?.validate()
    }
}

public extension CreateJobRequest {
    public func asIotModelCreateJobOperationInputBody() -> CreateJobOperationInputBody {
        return CreateJobOperationInputBody(
            abortConfig: abortConfig,
            description: description,
            document: document,
            documentSource: documentSource,
            jobExecutionsRolloutConfig: jobExecutionsRolloutConfig,
            presignedUrlConfig: presignedUrlConfig,
            tags: tags,
            targetSelection: targetSelection,
            targets: targets,
            timeoutConfig: timeoutConfig)
    }
}

/**
 Structure to encode the query input for the CreateKeysAndCertificate
 operation.
 */
public struct CreateKeysAndCertificateOperationInputQuery: Codable, Equatable {
    public var setAsActive: SetAsActive?

    public init(setAsActive: SetAsActive? = nil) {
        self.setAsActive = setAsActive
    }

    enum CodingKeys: String, CodingKey {
        case setAsActive
    }

    public func validate() throws {
    }
}

public extension CreateKeysAndCertificateRequest {
    public func asIotModelCreateKeysAndCertificateOperationInputQuery() -> CreateKeysAndCertificateOperationInputQuery {
        return CreateKeysAndCertificateOperationInputQuery(
            setAsActive: setAsActive)
    }
}

/**
 Structure to encode the path input for the CreateMitigationAction
 operation.
 */
public struct CreateMitigationActionOperationInputPath: Codable, Equatable {
    public var actionName: MitigationActionName

    public init(actionName: MitigationActionName) {
        self.actionName = actionName
    }

    enum CodingKeys: String, CodingKey {
        case actionName
    }

    public func validate() throws {
        try actionName.validateAsMitigationActionName()
    }
}

public extension CreateMitigationActionRequest {
    public func asIotModelCreateMitigationActionOperationInputPath() -> CreateMitigationActionOperationInputPath {
        return CreateMitigationActionOperationInputPath(
            actionName: actionName)
    }
}

/**
 Structure to encode the body input for the CreateMitigationAction
 operation.
 */
public struct CreateMitigationActionOperationInputBody: Codable, Equatable {
    public var actionParams: MitigationActionParams
    public var roleArn: RoleArn
    public var tags: TagList?

    public init(actionParams: MitigationActionParams,
                roleArn: RoleArn,
                tags: TagList? = nil) {
        self.actionParams = actionParams
        self.roleArn = roleArn
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case actionParams
        case roleArn
        case tags
    }

    public func validate() throws {
        try actionParams.validate()
        try roleArn.validateAsRoleArn()
    }
}

public extension CreateMitigationActionRequest {
    public func asIotModelCreateMitigationActionOperationInputBody() -> CreateMitigationActionOperationInputBody {
        return CreateMitigationActionOperationInputBody(
            actionParams: actionParams,
            roleArn: roleArn,
            tags: tags)
    }
}

/**
 Structure to encode the path input for the CreateOTAUpdate
 operation.
 */
public struct CreateOTAUpdateOperationInputPath: Codable, Equatable {
    public var otaUpdateId: OTAUpdateId

    public init(otaUpdateId: OTAUpdateId) {
        self.otaUpdateId = otaUpdateId
    }

    enum CodingKeys: String, CodingKey {
        case otaUpdateId
    }

    public func validate() throws {
        try otaUpdateId.validateAsOTAUpdateId()
    }
}

public extension CreateOTAUpdateRequest {
    public func asIotModelCreateOTAUpdateOperationInputPath() -> CreateOTAUpdateOperationInputPath {
        return CreateOTAUpdateOperationInputPath(
            otaUpdateId: otaUpdateId)
    }
}

/**
 Structure to encode the body input for the CreateOTAUpdate
 operation.
 */
public struct CreateOTAUpdateOperationInputBody: Codable, Equatable {
    public var additionalParameters: AdditionalParameterMap?
    public var awsJobExecutionsRolloutConfig: AwsJobExecutionsRolloutConfig?
    public var description: OTAUpdateDescription?
    public var files: OTAUpdateFiles
    public var roleArn: RoleArn
    public var tags: TagList?
    public var targetSelection: TargetSelection?
    public var targets: Targets

    public init(additionalParameters: AdditionalParameterMap? = nil,
                awsJobExecutionsRolloutConfig: AwsJobExecutionsRolloutConfig? = nil,
                description: OTAUpdateDescription? = nil,
                files: OTAUpdateFiles,
                roleArn: RoleArn,
                tags: TagList? = nil,
                targetSelection: TargetSelection? = nil,
                targets: Targets) {
        self.additionalParameters = additionalParameters
        self.awsJobExecutionsRolloutConfig = awsJobExecutionsRolloutConfig
        self.description = description
        self.files = files
        self.roleArn = roleArn
        self.tags = tags
        self.targetSelection = targetSelection
        self.targets = targets
    }

    enum CodingKeys: String, CodingKey {
        case additionalParameters
        case awsJobExecutionsRolloutConfig
        case description
        case files
        case roleArn
        case tags
        case targetSelection
        case targets
    }

    public func validate() throws {
        try awsJobExecutionsRolloutConfig?.validate()
        try description?.validateAsOTAUpdateDescription()
        try files.validateAsOTAUpdateFiles()
        try roleArn.validateAsRoleArn()
        try targets.validateAsTargets()
    }
}

public extension CreateOTAUpdateRequest {
    public func asIotModelCreateOTAUpdateOperationInputBody() -> CreateOTAUpdateOperationInputBody {
        return CreateOTAUpdateOperationInputBody(
            additionalParameters: additionalParameters,
            awsJobExecutionsRolloutConfig: awsJobExecutionsRolloutConfig,
            description: description,
            files: files,
            roleArn: roleArn,
            tags: tags,
            targetSelection: targetSelection,
            targets: targets)
    }
}

/**
 Structure to encode the path input for the CreatePolicy
 operation.
 */
public struct CreatePolicyOperationInputPath: Codable, Equatable {
    public var policyName: PolicyName

    public init(policyName: PolicyName) {
        self.policyName = policyName
    }

    enum CodingKeys: String, CodingKey {
        case policyName
    }

    public func validate() throws {
        try policyName.validateAsPolicyName()
    }
}

public extension CreatePolicyRequest {
    public func asIotModelCreatePolicyOperationInputPath() -> CreatePolicyOperationInputPath {
        return CreatePolicyOperationInputPath(
            policyName: policyName)
    }
}

/**
 Structure to encode the body input for the CreatePolicy
 operation.
 */
public struct CreatePolicyOperationInputBody: Codable, Equatable {
    public var policyDocument: PolicyDocument

    public init(policyDocument: PolicyDocument) {
        self.policyDocument = policyDocument
    }

    enum CodingKeys: String, CodingKey {
        case policyDocument
    }

    public func validate() throws {
    }
}

public extension CreatePolicyRequest {
    public func asIotModelCreatePolicyOperationInputBody() -> CreatePolicyOperationInputBody {
        return CreatePolicyOperationInputBody(
            policyDocument: policyDocument)
    }
}

/**
 Structure to encode the path input for the CreatePolicyVersion
 operation.
 */
public struct CreatePolicyVersionOperationInputPath: Codable, Equatable {
    public var policyName: PolicyName

    public init(policyName: PolicyName) {
        self.policyName = policyName
    }

    enum CodingKeys: String, CodingKey {
        case policyName
    }

    public func validate() throws {
        try policyName.validateAsPolicyName()
    }
}

public extension CreatePolicyVersionRequest {
    public func asIotModelCreatePolicyVersionOperationInputPath() -> CreatePolicyVersionOperationInputPath {
        return CreatePolicyVersionOperationInputPath(
            policyName: policyName)
    }
}

/**
 Structure to encode the query input for the CreatePolicyVersion
 operation.
 */
public struct CreatePolicyVersionOperationInputQuery: Codable, Equatable {
    public var setAsDefault: SetAsDefault?

    public init(setAsDefault: SetAsDefault? = nil) {
        self.setAsDefault = setAsDefault
    }

    enum CodingKeys: String, CodingKey {
        case setAsDefault
    }

    public func validate() throws {
    }
}

public extension CreatePolicyVersionRequest {
    public func asIotModelCreatePolicyVersionOperationInputQuery() -> CreatePolicyVersionOperationInputQuery {
        return CreatePolicyVersionOperationInputQuery(
            setAsDefault: setAsDefault)
    }
}

/**
 Structure to encode the body input for the CreatePolicyVersion
 operation.
 */
public struct CreatePolicyVersionOperationInputBody: Codable, Equatable {
    public var policyDocument: PolicyDocument

    public init(policyDocument: PolicyDocument) {
        self.policyDocument = policyDocument
    }

    enum CodingKeys: String, CodingKey {
        case policyDocument
    }

    public func validate() throws {
    }
}

public extension CreatePolicyVersionRequest {
    public func asIotModelCreatePolicyVersionOperationInputBody() -> CreatePolicyVersionOperationInputBody {
        return CreatePolicyVersionOperationInputBody(
            policyDocument: policyDocument)
    }
}

/**
 Structure to encode the path input for the CreateRoleAlias
 operation.
 */
public struct CreateRoleAliasOperationInputPath: Codable, Equatable {
    public var roleAlias: RoleAlias

    public init(roleAlias: RoleAlias) {
        self.roleAlias = roleAlias
    }

    enum CodingKeys: String, CodingKey {
        case roleAlias
    }

    public func validate() throws {
        try roleAlias.validateAsRoleAlias()
    }
}

public extension CreateRoleAliasRequest {
    public func asIotModelCreateRoleAliasOperationInputPath() -> CreateRoleAliasOperationInputPath {
        return CreateRoleAliasOperationInputPath(
            roleAlias: roleAlias)
    }
}

/**
 Structure to encode the body input for the CreateRoleAlias
 operation.
 */
public struct CreateRoleAliasOperationInputBody: Codable, Equatable {
    public var credentialDurationSeconds: CredentialDurationSeconds?
    public var roleArn: RoleArn

    public init(credentialDurationSeconds: CredentialDurationSeconds? = nil,
                roleArn: RoleArn) {
        self.credentialDurationSeconds = credentialDurationSeconds
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case credentialDurationSeconds
        case roleArn
    }

    public func validate() throws {
        try credentialDurationSeconds?.validateAsCredentialDurationSeconds()
        try roleArn.validateAsRoleArn()
    }
}

public extension CreateRoleAliasRequest {
    public func asIotModelCreateRoleAliasOperationInputBody() -> CreateRoleAliasOperationInputBody {
        return CreateRoleAliasOperationInputBody(
            credentialDurationSeconds: credentialDurationSeconds,
            roleArn: roleArn)
    }
}

/**
 Structure to encode the path input for the CreateScheduledAudit
 operation.
 */
public struct CreateScheduledAuditOperationInputPath: Codable, Equatable {
    public var scheduledAuditName: ScheduledAuditName

    public init(scheduledAuditName: ScheduledAuditName) {
        self.scheduledAuditName = scheduledAuditName
    }

    enum CodingKeys: String, CodingKey {
        case scheduledAuditName
    }

    public func validate() throws {
        try scheduledAuditName.validateAsScheduledAuditName()
    }
}

public extension CreateScheduledAuditRequest {
    public func asIotModelCreateScheduledAuditOperationInputPath() -> CreateScheduledAuditOperationInputPath {
        return CreateScheduledAuditOperationInputPath(
            scheduledAuditName: scheduledAuditName)
    }
}

/**
 Structure to encode the body input for the CreateScheduledAudit
 operation.
 */
public struct CreateScheduledAuditOperationInputBody: Codable, Equatable {
    public var dayOfMonth: DayOfMonth?
    public var dayOfWeek: DayOfWeek?
    public var frequency: AuditFrequency
    public var tags: TagList?
    public var targetCheckNames: TargetAuditCheckNames

    public init(dayOfMonth: DayOfMonth? = nil,
                dayOfWeek: DayOfWeek? = nil,
                frequency: AuditFrequency,
                tags: TagList? = nil,
                targetCheckNames: TargetAuditCheckNames) {
        self.dayOfMonth = dayOfMonth
        self.dayOfWeek = dayOfWeek
        self.frequency = frequency
        self.tags = tags
        self.targetCheckNames = targetCheckNames
    }

    enum CodingKeys: String, CodingKey {
        case dayOfMonth
        case dayOfWeek
        case frequency
        case tags
        case targetCheckNames
    }

    public func validate() throws {
        try dayOfMonth?.validateAsDayOfMonth()
    }
}

public extension CreateScheduledAuditRequest {
    public func asIotModelCreateScheduledAuditOperationInputBody() -> CreateScheduledAuditOperationInputBody {
        return CreateScheduledAuditOperationInputBody(
            dayOfMonth: dayOfMonth,
            dayOfWeek: dayOfWeek,
            frequency: frequency,
            tags: tags,
            targetCheckNames: targetCheckNames)
    }
}

/**
 Structure to encode the path input for the CreateSecurityProfile
 operation.
 */
public struct CreateSecurityProfileOperationInputPath: Codable, Equatable {
    public var securityProfileName: SecurityProfileName

    public init(securityProfileName: SecurityProfileName) {
        self.securityProfileName = securityProfileName
    }

    enum CodingKeys: String, CodingKey {
        case securityProfileName
    }

    public func validate() throws {
        try securityProfileName.validateAsSecurityProfileName()
    }
}

public extension CreateSecurityProfileRequest {
    public func asIotModelCreateSecurityProfileOperationInputPath() -> CreateSecurityProfileOperationInputPath {
        return CreateSecurityProfileOperationInputPath(
            securityProfileName: securityProfileName)
    }
}

/**
 Structure to encode the body input for the CreateSecurityProfile
 operation.
 */
public struct CreateSecurityProfileOperationInputBody: Codable, Equatable {
    public var additionalMetricsToRetain: AdditionalMetricsToRetainList?
    public var alertTargets: AlertTargets?
    public var behaviors: Behaviors?
    public var securityProfileDescription: SecurityProfileDescription?
    public var tags: TagList?

    public init(additionalMetricsToRetain: AdditionalMetricsToRetainList? = nil,
                alertTargets: AlertTargets? = nil,
                behaviors: Behaviors? = nil,
                securityProfileDescription: SecurityProfileDescription? = nil,
                tags: TagList? = nil) {
        self.additionalMetricsToRetain = additionalMetricsToRetain
        self.alertTargets = alertTargets
        self.behaviors = behaviors
        self.securityProfileDescription = securityProfileDescription
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case additionalMetricsToRetain
        case alertTargets
        case behaviors
        case securityProfileDescription
        case tags
    }

    public func validate() throws {
        try behaviors?.validateAsBehaviors()
        try securityProfileDescription?.validateAsSecurityProfileDescription()
    }
}

public extension CreateSecurityProfileRequest {
    public func asIotModelCreateSecurityProfileOperationInputBody() -> CreateSecurityProfileOperationInputBody {
        return CreateSecurityProfileOperationInputBody(
            additionalMetricsToRetain: additionalMetricsToRetain,
            alertTargets: alertTargets,
            behaviors: behaviors,
            securityProfileDescription: securityProfileDescription,
            tags: tags)
    }
}

/**
 Structure to encode the path input for the CreateStream
 operation.
 */
public struct CreateStreamOperationInputPath: Codable, Equatable {
    public var streamId: StreamId

    public init(streamId: StreamId) {
        self.streamId = streamId
    }

    enum CodingKeys: String, CodingKey {
        case streamId
    }

    public func validate() throws {
        try streamId.validateAsStreamId()
    }
}

public extension CreateStreamRequest {
    public func asIotModelCreateStreamOperationInputPath() -> CreateStreamOperationInputPath {
        return CreateStreamOperationInputPath(
            streamId: streamId)
    }
}

/**
 Structure to encode the body input for the CreateStream
 operation.
 */
public struct CreateStreamOperationInputBody: Codable, Equatable {
    public var description: StreamDescription?
    public var files: StreamFiles
    public var roleArn: RoleArn
    public var tags: TagList?

    public init(description: StreamDescription? = nil,
                files: StreamFiles,
                roleArn: RoleArn,
                tags: TagList? = nil) {
        self.description = description
        self.files = files
        self.roleArn = roleArn
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case description
        case files
        case roleArn
        case tags
    }

    public func validate() throws {
        try description?.validateAsStreamDescription()
        try files.validateAsStreamFiles()
        try roleArn.validateAsRoleArn()
    }
}

public extension CreateStreamRequest {
    public func asIotModelCreateStreamOperationInputBody() -> CreateStreamOperationInputBody {
        return CreateStreamOperationInputBody(
            description: description,
            files: files,
            roleArn: roleArn,
            tags: tags)
    }
}

/**
 Structure to encode the path input for the CreateThing
 operation.
 */
public struct CreateThingOperationInputPath: Codable, Equatable {
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

public extension CreateThingRequest {
    public func asIotModelCreateThingOperationInputPath() -> CreateThingOperationInputPath {
        return CreateThingOperationInputPath(
            thingName: thingName)
    }
}

/**
 Structure to encode the body input for the CreateThing
 operation.
 */
public struct CreateThingOperationInputBody: Codable, Equatable {
    public var attributePayload: AttributePayload?
    public var billingGroupName: BillingGroupName?
    public var thingTypeName: ThingTypeName?

    public init(attributePayload: AttributePayload? = nil,
                billingGroupName: BillingGroupName? = nil,
                thingTypeName: ThingTypeName? = nil) {
        self.attributePayload = attributePayload
        self.billingGroupName = billingGroupName
        self.thingTypeName = thingTypeName
    }

    enum CodingKeys: String, CodingKey {
        case attributePayload
        case billingGroupName
        case thingTypeName
    }

    public func validate() throws {
        try attributePayload?.validate()
        try billingGroupName?.validateAsBillingGroupName()
        try thingTypeName?.validateAsThingTypeName()
    }
}

public extension CreateThingRequest {
    public func asIotModelCreateThingOperationInputBody() -> CreateThingOperationInputBody {
        return CreateThingOperationInputBody(
            attributePayload: attributePayload,
            billingGroupName: billingGroupName,
            thingTypeName: thingTypeName)
    }
}

/**
 Structure to encode the path input for the CreateThingGroup
 operation.
 */
public struct CreateThingGroupOperationInputPath: Codable, Equatable {
    public var thingGroupName: ThingGroupName

    public init(thingGroupName: ThingGroupName) {
        self.thingGroupName = thingGroupName
    }

    enum CodingKeys: String, CodingKey {
        case thingGroupName
    }

    public func validate() throws {
        try thingGroupName.validateAsThingGroupName()
    }
}

public extension CreateThingGroupRequest {
    public func asIotModelCreateThingGroupOperationInputPath() -> CreateThingGroupOperationInputPath {
        return CreateThingGroupOperationInputPath(
            thingGroupName: thingGroupName)
    }
}

/**
 Structure to encode the body input for the CreateThingGroup
 operation.
 */
public struct CreateThingGroupOperationInputBody: Codable, Equatable {
    public var parentGroupName: ThingGroupName?
    public var tags: TagList?
    public var thingGroupProperties: ThingGroupProperties?

    public init(parentGroupName: ThingGroupName? = nil,
                tags: TagList? = nil,
                thingGroupProperties: ThingGroupProperties? = nil) {
        self.parentGroupName = parentGroupName
        self.tags = tags
        self.thingGroupProperties = thingGroupProperties
    }

    enum CodingKeys: String, CodingKey {
        case parentGroupName
        case tags
        case thingGroupProperties
    }

    public func validate() throws {
        try parentGroupName?.validateAsThingGroupName()
        try thingGroupProperties?.validate()
    }
}

public extension CreateThingGroupRequest {
    public func asIotModelCreateThingGroupOperationInputBody() -> CreateThingGroupOperationInputBody {
        return CreateThingGroupOperationInputBody(
            parentGroupName: parentGroupName,
            tags: tags,
            thingGroupProperties: thingGroupProperties)
    }
}

/**
 Structure to encode the path input for the CreateThingType
 operation.
 */
public struct CreateThingTypeOperationInputPath: Codable, Equatable {
    public var thingTypeName: ThingTypeName

    public init(thingTypeName: ThingTypeName) {
        self.thingTypeName = thingTypeName
    }

    enum CodingKeys: String, CodingKey {
        case thingTypeName
    }

    public func validate() throws {
        try thingTypeName.validateAsThingTypeName()
    }
}

public extension CreateThingTypeRequest {
    public func asIotModelCreateThingTypeOperationInputPath() -> CreateThingTypeOperationInputPath {
        return CreateThingTypeOperationInputPath(
            thingTypeName: thingTypeName)
    }
}

/**
 Structure to encode the body input for the CreateThingType
 operation.
 */
public struct CreateThingTypeOperationInputBody: Codable, Equatable {
    public var tags: TagList?
    public var thingTypeProperties: ThingTypeProperties?

    public init(tags: TagList? = nil,
                thingTypeProperties: ThingTypeProperties? = nil) {
        self.tags = tags
        self.thingTypeProperties = thingTypeProperties
    }

    enum CodingKeys: String, CodingKey {
        case tags
        case thingTypeProperties
    }

    public func validate() throws {
        try thingTypeProperties?.validate()
    }
}

public extension CreateThingTypeRequest {
    public func asIotModelCreateThingTypeOperationInputBody() -> CreateThingTypeOperationInputBody {
        return CreateThingTypeOperationInputBody(
            tags: tags,
            thingTypeProperties: thingTypeProperties)
    }
}

/**
 Structure to encode the path input for the CreateTopicRule
 operation.
 */
public struct CreateTopicRuleOperationInputPath: Codable, Equatable {
    public var ruleName: RuleName

    public init(ruleName: RuleName) {
        self.ruleName = ruleName
    }

    enum CodingKeys: String, CodingKey {
        case ruleName
    }

    public func validate() throws {
        try ruleName.validateAsRuleName()
    }
}

public extension CreateTopicRuleRequest {
    public func asIotModelCreateTopicRuleOperationInputPath() -> CreateTopicRuleOperationInputPath {
        return CreateTopicRuleOperationInputPath(
            ruleName: ruleName)
    }
}

/**
 Structure to encode the body input for the CreateTopicRule
 operation.
 */
public struct CreateTopicRuleOperationInputAdditionalHeaders: Codable, Equatable {
    public var tags: String?

    public init(tags: String? = nil) {
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case tags = "x-amz-tagging"
    }

    public func validate() throws {
    }
}

public extension CreateTopicRuleRequest {
    public func asIotModelCreateTopicRuleOperationInputAdditionalHeaders() -> CreateTopicRuleOperationInputAdditionalHeaders {
        return CreateTopicRuleOperationInputAdditionalHeaders(
            tags: tags)
    }
}

/**
 Structure to encode the query input for the DeleteAccountAuditConfiguration
 operation.
 */
public struct DeleteAccountAuditConfigurationOperationInputQuery: Codable, Equatable {
    public var deleteScheduledAudits: DeleteScheduledAudits?

    public init(deleteScheduledAudits: DeleteScheduledAudits? = nil) {
        self.deleteScheduledAudits = deleteScheduledAudits
    }

    enum CodingKeys: String, CodingKey {
        case deleteScheduledAudits
    }

    public func validate() throws {
    }
}

public extension DeleteAccountAuditConfigurationRequest {
    public func asIotModelDeleteAccountAuditConfigurationOperationInputQuery() -> DeleteAccountAuditConfigurationOperationInputQuery {
        return DeleteAccountAuditConfigurationOperationInputQuery(
            deleteScheduledAudits: deleteScheduledAudits)
    }
}

/**
 Structure to encode the path input for the DeleteAuthorizer
 operation.
 */
public struct DeleteAuthorizerOperationInputPath: Codable, Equatable {
    public var authorizerName: AuthorizerName

    public init(authorizerName: AuthorizerName) {
        self.authorizerName = authorizerName
    }

    enum CodingKeys: String, CodingKey {
        case authorizerName
    }

    public func validate() throws {
        try authorizerName.validateAsAuthorizerName()
    }
}

public extension DeleteAuthorizerRequest {
    public func asIotModelDeleteAuthorizerOperationInputPath() -> DeleteAuthorizerOperationInputPath {
        return DeleteAuthorizerOperationInputPath(
            authorizerName: authorizerName)
    }
}

/**
 Structure to encode the path input for the DeleteBillingGroup
 operation.
 */
public struct DeleteBillingGroupOperationInputPath: Codable, Equatable {
    public var billingGroupName: BillingGroupName

    public init(billingGroupName: BillingGroupName) {
        self.billingGroupName = billingGroupName
    }

    enum CodingKeys: String, CodingKey {
        case billingGroupName
    }

    public func validate() throws {
        try billingGroupName.validateAsBillingGroupName()
    }
}

public extension DeleteBillingGroupRequest {
    public func asIotModelDeleteBillingGroupOperationInputPath() -> DeleteBillingGroupOperationInputPath {
        return DeleteBillingGroupOperationInputPath(
            billingGroupName: billingGroupName)
    }
}

/**
 Structure to encode the query input for the DeleteBillingGroup
 operation.
 */
public struct DeleteBillingGroupOperationInputQuery: Codable, Equatable {
    public var expectedVersion: OptionalVersion?

    public init(expectedVersion: OptionalVersion? = nil) {
        self.expectedVersion = expectedVersion
    }

    enum CodingKeys: String, CodingKey {
        case expectedVersion
    }

    public func validate() throws {
    }
}

public extension DeleteBillingGroupRequest {
    public func asIotModelDeleteBillingGroupOperationInputQuery() -> DeleteBillingGroupOperationInputQuery {
        return DeleteBillingGroupOperationInputQuery(
            expectedVersion: expectedVersion)
    }
}

/**
 Structure to encode the path input for the DeleteCACertificate
 operation.
 */
public struct DeleteCACertificateOperationInputPath: Codable, Equatable {
    public var certificateId: CertificateId

    public init(certificateId: CertificateId) {
        self.certificateId = certificateId
    }

    enum CodingKeys: String, CodingKey {
        case certificateId = "caCertificateId"
    }

    public func validate() throws {
        try certificateId.validateAsCertificateId()
    }
}

public extension DeleteCACertificateRequest {
    public func asIotModelDeleteCACertificateOperationInputPath() -> DeleteCACertificateOperationInputPath {
        return DeleteCACertificateOperationInputPath(
            certificateId: certificateId)
    }
}

/**
 Structure to encode the path input for the DeleteCertificate
 operation.
 */
public struct DeleteCertificateOperationInputPath: Codable, Equatable {
    public var certificateId: CertificateId

    public init(certificateId: CertificateId) {
        self.certificateId = certificateId
    }

    enum CodingKeys: String, CodingKey {
        case certificateId
    }

    public func validate() throws {
        try certificateId.validateAsCertificateId()
    }
}

public extension DeleteCertificateRequest {
    public func asIotModelDeleteCertificateOperationInputPath() -> DeleteCertificateOperationInputPath {
        return DeleteCertificateOperationInputPath(
            certificateId: certificateId)
    }
}

/**
 Structure to encode the query input for the DeleteCertificate
 operation.
 */
public struct DeleteCertificateOperationInputQuery: Codable, Equatable {
    public var forceDelete: ForceDelete?

    public init(forceDelete: ForceDelete? = nil) {
        self.forceDelete = forceDelete
    }

    enum CodingKeys: String, CodingKey {
        case forceDelete
    }

    public func validate() throws {
    }
}

public extension DeleteCertificateRequest {
    public func asIotModelDeleteCertificateOperationInputQuery() -> DeleteCertificateOperationInputQuery {
        return DeleteCertificateOperationInputQuery(
            forceDelete: forceDelete)
    }
}

/**
 Structure to encode the path input for the DeleteDynamicThingGroup
 operation.
 */
public struct DeleteDynamicThingGroupOperationInputPath: Codable, Equatable {
    public var thingGroupName: ThingGroupName

    public init(thingGroupName: ThingGroupName) {
        self.thingGroupName = thingGroupName
    }

    enum CodingKeys: String, CodingKey {
        case thingGroupName
    }

    public func validate() throws {
        try thingGroupName.validateAsThingGroupName()
    }
}

public extension DeleteDynamicThingGroupRequest {
    public func asIotModelDeleteDynamicThingGroupOperationInputPath() -> DeleteDynamicThingGroupOperationInputPath {
        return DeleteDynamicThingGroupOperationInputPath(
            thingGroupName: thingGroupName)
    }
}

/**
 Structure to encode the query input for the DeleteDynamicThingGroup
 operation.
 */
public struct DeleteDynamicThingGroupOperationInputQuery: Codable, Equatable {
    public var expectedVersion: OptionalVersion?

    public init(expectedVersion: OptionalVersion? = nil) {
        self.expectedVersion = expectedVersion
    }

    enum CodingKeys: String, CodingKey {
        case expectedVersion
    }

    public func validate() throws {
    }
}

public extension DeleteDynamicThingGroupRequest {
    public func asIotModelDeleteDynamicThingGroupOperationInputQuery() -> DeleteDynamicThingGroupOperationInputQuery {
        return DeleteDynamicThingGroupOperationInputQuery(
            expectedVersion: expectedVersion)
    }
}

/**
 Structure to encode the path input for the DeleteJob
 operation.
 */
public struct DeleteJobOperationInputPath: Codable, Equatable {
    public var jobId: JobId

    public init(jobId: JobId) {
        self.jobId = jobId
    }

    enum CodingKeys: String, CodingKey {
        case jobId
    }

    public func validate() throws {
        try jobId.validateAsJobId()
    }
}

public extension DeleteJobRequest {
    public func asIotModelDeleteJobOperationInputPath() -> DeleteJobOperationInputPath {
        return DeleteJobOperationInputPath(
            jobId: jobId)
    }
}

/**
 Structure to encode the query input for the DeleteJob
 operation.
 */
public struct DeleteJobOperationInputQuery: Codable, Equatable {
    public var force: ForceFlag?

    public init(force: ForceFlag? = nil) {
        self.force = force
    }

    enum CodingKeys: String, CodingKey {
        case force
    }

    public func validate() throws {
    }
}

public extension DeleteJobRequest {
    public func asIotModelDeleteJobOperationInputQuery() -> DeleteJobOperationInputQuery {
        return DeleteJobOperationInputQuery(
            force: force)
    }
}

/**
 Structure to encode the path input for the DeleteJobExecution
 operation.
 */
public struct DeleteJobExecutionOperationInputPath: Codable, Equatable {
    public var executionNumber: ExecutionNumber
    public var jobId: JobId
    public var thingName: ThingName

    public init(executionNumber: ExecutionNumber,
                jobId: JobId,
                thingName: ThingName) {
        self.executionNumber = executionNumber
        self.jobId = jobId
        self.thingName = thingName
    }

    enum CodingKeys: String, CodingKey {
        case executionNumber
        case jobId
        case thingName
    }

    public func validate() throws {
        try jobId.validateAsJobId()
        try thingName.validateAsThingName()
    }
}

public extension DeleteJobExecutionRequest {
    public func asIotModelDeleteJobExecutionOperationInputPath() -> DeleteJobExecutionOperationInputPath {
        return DeleteJobExecutionOperationInputPath(
            executionNumber: executionNumber,
            jobId: jobId,
            thingName: thingName)
    }
}

/**
 Structure to encode the query input for the DeleteJobExecution
 operation.
 */
public struct DeleteJobExecutionOperationInputQuery: Codable, Equatable {
    public var force: ForceFlag?

    public init(force: ForceFlag? = nil) {
        self.force = force
    }

    enum CodingKeys: String, CodingKey {
        case force
    }

    public func validate() throws {
    }
}

public extension DeleteJobExecutionRequest {
    public func asIotModelDeleteJobExecutionOperationInputQuery() -> DeleteJobExecutionOperationInputQuery {
        return DeleteJobExecutionOperationInputQuery(
            force: force)
    }
}

/**
 Structure to encode the path input for the DeleteMitigationAction
 operation.
 */
public struct DeleteMitigationActionOperationInputPath: Codable, Equatable {
    public var actionName: MitigationActionName

    public init(actionName: MitigationActionName) {
        self.actionName = actionName
    }

    enum CodingKeys: String, CodingKey {
        case actionName
    }

    public func validate() throws {
        try actionName.validateAsMitigationActionName()
    }
}

public extension DeleteMitigationActionRequest {
    public func asIotModelDeleteMitigationActionOperationInputPath() -> DeleteMitigationActionOperationInputPath {
        return DeleteMitigationActionOperationInputPath(
            actionName: actionName)
    }
}

/**
 Structure to encode the path input for the DeleteOTAUpdate
 operation.
 */
public struct DeleteOTAUpdateOperationInputPath: Codable, Equatable {
    public var otaUpdateId: OTAUpdateId

    public init(otaUpdateId: OTAUpdateId) {
        self.otaUpdateId = otaUpdateId
    }

    enum CodingKeys: String, CodingKey {
        case otaUpdateId
    }

    public func validate() throws {
        try otaUpdateId.validateAsOTAUpdateId()
    }
}

public extension DeleteOTAUpdateRequest {
    public func asIotModelDeleteOTAUpdateOperationInputPath() -> DeleteOTAUpdateOperationInputPath {
        return DeleteOTAUpdateOperationInputPath(
            otaUpdateId: otaUpdateId)
    }
}

/**
 Structure to encode the query input for the DeleteOTAUpdate
 operation.
 */
public struct DeleteOTAUpdateOperationInputQuery: Codable, Equatable {
    public var deleteStream: DeleteStream?
    public var forceDeleteAWSJob: ForceDeleteAWSJob?

    public init(deleteStream: DeleteStream? = nil,
                forceDeleteAWSJob: ForceDeleteAWSJob? = nil) {
        self.deleteStream = deleteStream
        self.forceDeleteAWSJob = forceDeleteAWSJob
    }

    enum CodingKeys: String, CodingKey {
        case deleteStream
        case forceDeleteAWSJob
    }

    public func validate() throws {
    }
}

public extension DeleteOTAUpdateRequest {
    public func asIotModelDeleteOTAUpdateOperationInputQuery() -> DeleteOTAUpdateOperationInputQuery {
        return DeleteOTAUpdateOperationInputQuery(
            deleteStream: deleteStream,
            forceDeleteAWSJob: forceDeleteAWSJob)
    }
}

/**
 Structure to encode the path input for the DeletePolicy
 operation.
 */
public struct DeletePolicyOperationInputPath: Codable, Equatable {
    public var policyName: PolicyName

    public init(policyName: PolicyName) {
        self.policyName = policyName
    }

    enum CodingKeys: String, CodingKey {
        case policyName
    }

    public func validate() throws {
        try policyName.validateAsPolicyName()
    }
}

public extension DeletePolicyRequest {
    public func asIotModelDeletePolicyOperationInputPath() -> DeletePolicyOperationInputPath {
        return DeletePolicyOperationInputPath(
            policyName: policyName)
    }
}

/**
 Structure to encode the path input for the DeletePolicyVersion
 operation.
 */
public struct DeletePolicyVersionOperationInputPath: Codable, Equatable {
    public var policyName: PolicyName
    public var policyVersionId: PolicyVersionId

    public init(policyName: PolicyName,
                policyVersionId: PolicyVersionId) {
        self.policyName = policyName
        self.policyVersionId = policyVersionId
    }

    enum CodingKeys: String, CodingKey {
        case policyName
        case policyVersionId
    }

    public func validate() throws {
        try policyName.validateAsPolicyName()
        try policyVersionId.validateAsPolicyVersionId()
    }
}

public extension DeletePolicyVersionRequest {
    public func asIotModelDeletePolicyVersionOperationInputPath() -> DeletePolicyVersionOperationInputPath {
        return DeletePolicyVersionOperationInputPath(
            policyName: policyName,
            policyVersionId: policyVersionId)
    }
}

/**
 Structure to encode the path input for the DeleteRoleAlias
 operation.
 */
public struct DeleteRoleAliasOperationInputPath: Codable, Equatable {
    public var roleAlias: RoleAlias

    public init(roleAlias: RoleAlias) {
        self.roleAlias = roleAlias
    }

    enum CodingKeys: String, CodingKey {
        case roleAlias
    }

    public func validate() throws {
        try roleAlias.validateAsRoleAlias()
    }
}

public extension DeleteRoleAliasRequest {
    public func asIotModelDeleteRoleAliasOperationInputPath() -> DeleteRoleAliasOperationInputPath {
        return DeleteRoleAliasOperationInputPath(
            roleAlias: roleAlias)
    }
}

/**
 Structure to encode the path input for the DeleteScheduledAudit
 operation.
 */
public struct DeleteScheduledAuditOperationInputPath: Codable, Equatable {
    public var scheduledAuditName: ScheduledAuditName

    public init(scheduledAuditName: ScheduledAuditName) {
        self.scheduledAuditName = scheduledAuditName
    }

    enum CodingKeys: String, CodingKey {
        case scheduledAuditName
    }

    public func validate() throws {
        try scheduledAuditName.validateAsScheduledAuditName()
    }
}

public extension DeleteScheduledAuditRequest {
    public func asIotModelDeleteScheduledAuditOperationInputPath() -> DeleteScheduledAuditOperationInputPath {
        return DeleteScheduledAuditOperationInputPath(
            scheduledAuditName: scheduledAuditName)
    }
}

/**
 Structure to encode the path input for the DeleteSecurityProfile
 operation.
 */
public struct DeleteSecurityProfileOperationInputPath: Codable, Equatable {
    public var securityProfileName: SecurityProfileName

    public init(securityProfileName: SecurityProfileName) {
        self.securityProfileName = securityProfileName
    }

    enum CodingKeys: String, CodingKey {
        case securityProfileName
    }

    public func validate() throws {
        try securityProfileName.validateAsSecurityProfileName()
    }
}

public extension DeleteSecurityProfileRequest {
    public func asIotModelDeleteSecurityProfileOperationInputPath() -> DeleteSecurityProfileOperationInputPath {
        return DeleteSecurityProfileOperationInputPath(
            securityProfileName: securityProfileName)
    }
}

/**
 Structure to encode the query input for the DeleteSecurityProfile
 operation.
 */
public struct DeleteSecurityProfileOperationInputQuery: Codable, Equatable {
    public var expectedVersion: OptionalVersion?

    public init(expectedVersion: OptionalVersion? = nil) {
        self.expectedVersion = expectedVersion
    }

    enum CodingKeys: String, CodingKey {
        case expectedVersion
    }

    public func validate() throws {
    }
}

public extension DeleteSecurityProfileRequest {
    public func asIotModelDeleteSecurityProfileOperationInputQuery() -> DeleteSecurityProfileOperationInputQuery {
        return DeleteSecurityProfileOperationInputQuery(
            expectedVersion: expectedVersion)
    }
}

/**
 Structure to encode the path input for the DeleteStream
 operation.
 */
public struct DeleteStreamOperationInputPath: Codable, Equatable {
    public var streamId: StreamId

    public init(streamId: StreamId) {
        self.streamId = streamId
    }

    enum CodingKeys: String, CodingKey {
        case streamId
    }

    public func validate() throws {
        try streamId.validateAsStreamId()
    }
}

public extension DeleteStreamRequest {
    public func asIotModelDeleteStreamOperationInputPath() -> DeleteStreamOperationInputPath {
        return DeleteStreamOperationInputPath(
            streamId: streamId)
    }
}

/**
 Structure to encode the path input for the DeleteThing
 operation.
 */
public struct DeleteThingOperationInputPath: Codable, Equatable {
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

public extension DeleteThingRequest {
    public func asIotModelDeleteThingOperationInputPath() -> DeleteThingOperationInputPath {
        return DeleteThingOperationInputPath(
            thingName: thingName)
    }
}

/**
 Structure to encode the query input for the DeleteThing
 operation.
 */
public struct DeleteThingOperationInputQuery: Codable, Equatable {
    public var expectedVersion: OptionalVersion?

    public init(expectedVersion: OptionalVersion? = nil) {
        self.expectedVersion = expectedVersion
    }

    enum CodingKeys: String, CodingKey {
        case expectedVersion
    }

    public func validate() throws {
    }
}

public extension DeleteThingRequest {
    public func asIotModelDeleteThingOperationInputQuery() -> DeleteThingOperationInputQuery {
        return DeleteThingOperationInputQuery(
            expectedVersion: expectedVersion)
    }
}

/**
 Structure to encode the path input for the DeleteThingGroup
 operation.
 */
public struct DeleteThingGroupOperationInputPath: Codable, Equatable {
    public var thingGroupName: ThingGroupName

    public init(thingGroupName: ThingGroupName) {
        self.thingGroupName = thingGroupName
    }

    enum CodingKeys: String, CodingKey {
        case thingGroupName
    }

    public func validate() throws {
        try thingGroupName.validateAsThingGroupName()
    }
}

public extension DeleteThingGroupRequest {
    public func asIotModelDeleteThingGroupOperationInputPath() -> DeleteThingGroupOperationInputPath {
        return DeleteThingGroupOperationInputPath(
            thingGroupName: thingGroupName)
    }
}

/**
 Structure to encode the query input for the DeleteThingGroup
 operation.
 */
public struct DeleteThingGroupOperationInputQuery: Codable, Equatable {
    public var expectedVersion: OptionalVersion?

    public init(expectedVersion: OptionalVersion? = nil) {
        self.expectedVersion = expectedVersion
    }

    enum CodingKeys: String, CodingKey {
        case expectedVersion
    }

    public func validate() throws {
    }
}

public extension DeleteThingGroupRequest {
    public func asIotModelDeleteThingGroupOperationInputQuery() -> DeleteThingGroupOperationInputQuery {
        return DeleteThingGroupOperationInputQuery(
            expectedVersion: expectedVersion)
    }
}

/**
 Structure to encode the path input for the DeleteThingType
 operation.
 */
public struct DeleteThingTypeOperationInputPath: Codable, Equatable {
    public var thingTypeName: ThingTypeName

    public init(thingTypeName: ThingTypeName) {
        self.thingTypeName = thingTypeName
    }

    enum CodingKeys: String, CodingKey {
        case thingTypeName
    }

    public func validate() throws {
        try thingTypeName.validateAsThingTypeName()
    }
}

public extension DeleteThingTypeRequest {
    public func asIotModelDeleteThingTypeOperationInputPath() -> DeleteThingTypeOperationInputPath {
        return DeleteThingTypeOperationInputPath(
            thingTypeName: thingTypeName)
    }
}

/**
 Structure to encode the path input for the DeleteTopicRule
 operation.
 */
public struct DeleteTopicRuleOperationInputPath: Codable, Equatable {
    public var ruleName: RuleName

    public init(ruleName: RuleName) {
        self.ruleName = ruleName
    }

    enum CodingKeys: String, CodingKey {
        case ruleName
    }

    public func validate() throws {
        try ruleName.validateAsRuleName()
    }
}

public extension DeleteTopicRuleRequest {
    public func asIotModelDeleteTopicRuleOperationInputPath() -> DeleteTopicRuleOperationInputPath {
        return DeleteTopicRuleOperationInputPath(
            ruleName: ruleName)
    }
}

/**
 Structure to encode the query input for the DeleteV2LoggingLevel
 operation.
 */
public struct DeleteV2LoggingLevelOperationInputQuery: Codable, Equatable {
    public var targetName: LogTargetName
    public var targetType: LogTargetType

    public init(targetName: LogTargetName,
                targetType: LogTargetType) {
        self.targetName = targetName
        self.targetType = targetType
    }

    enum CodingKeys: String, CodingKey {
        case targetName
        case targetType
    }

    public func validate() throws {
    }
}

public extension DeleteV2LoggingLevelRequest {
    public func asIotModelDeleteV2LoggingLevelOperationInputQuery() -> DeleteV2LoggingLevelOperationInputQuery {
        return DeleteV2LoggingLevelOperationInputQuery(
            targetName: targetName,
            targetType: targetType)
    }
}

/**
 Structure to encode the path input for the DeprecateThingType
 operation.
 */
public struct DeprecateThingTypeOperationInputPath: Codable, Equatable {
    public var thingTypeName: ThingTypeName

    public init(thingTypeName: ThingTypeName) {
        self.thingTypeName = thingTypeName
    }

    enum CodingKeys: String, CodingKey {
        case thingTypeName
    }

    public func validate() throws {
        try thingTypeName.validateAsThingTypeName()
    }
}

public extension DeprecateThingTypeRequest {
    public func asIotModelDeprecateThingTypeOperationInputPath() -> DeprecateThingTypeOperationInputPath {
        return DeprecateThingTypeOperationInputPath(
            thingTypeName: thingTypeName)
    }
}

/**
 Structure to encode the body input for the DeprecateThingType
 operation.
 */
public struct DeprecateThingTypeOperationInputBody: Codable, Equatable {
    public var undoDeprecate: UndoDeprecate?

    public init(undoDeprecate: UndoDeprecate? = nil) {
        self.undoDeprecate = undoDeprecate
    }

    enum CodingKeys: String, CodingKey {
        case undoDeprecate
    }

    public func validate() throws {
    }
}

public extension DeprecateThingTypeRequest {
    public func asIotModelDeprecateThingTypeOperationInputBody() -> DeprecateThingTypeOperationInputBody {
        return DeprecateThingTypeOperationInputBody(
            undoDeprecate: undoDeprecate)
    }
}

/**
 Structure to encode the path input for the DescribeAuditFinding
 operation.
 */
public struct DescribeAuditFindingOperationInputPath: Codable, Equatable {
    public var findingId: FindingId

    public init(findingId: FindingId) {
        self.findingId = findingId
    }

    enum CodingKeys: String, CodingKey {
        case findingId
    }

    public func validate() throws {
        try findingId.validateAsFindingId()
    }
}

public extension DescribeAuditFindingRequest {
    public func asIotModelDescribeAuditFindingOperationInputPath() -> DescribeAuditFindingOperationInputPath {
        return DescribeAuditFindingOperationInputPath(
            findingId: findingId)
    }
}

/**
 Structure to encode the path input for the DescribeAuditMitigationActionsTask
 operation.
 */
public struct DescribeAuditMitigationActionsTaskOperationInputPath: Codable, Equatable {
    public var taskId: AuditMitigationActionsTaskId

    public init(taskId: AuditMitigationActionsTaskId) {
        self.taskId = taskId
    }

    enum CodingKeys: String, CodingKey {
        case taskId
    }

    public func validate() throws {
        try taskId.validateAsAuditMitigationActionsTaskId()
    }
}

public extension DescribeAuditMitigationActionsTaskRequest {
    public func asIotModelDescribeAuditMitigationActionsTaskOperationInputPath() -> DescribeAuditMitigationActionsTaskOperationInputPath {
        return DescribeAuditMitigationActionsTaskOperationInputPath(
            taskId: taskId)
    }
}

/**
 Structure to encode the path input for the DescribeAuditTask
 operation.
 */
public struct DescribeAuditTaskOperationInputPath: Codable, Equatable {
    public var taskId: AuditTaskId

    public init(taskId: AuditTaskId) {
        self.taskId = taskId
    }

    enum CodingKeys: String, CodingKey {
        case taskId
    }

    public func validate() throws {
        try taskId.validateAsAuditTaskId()
    }
}

public extension DescribeAuditTaskRequest {
    public func asIotModelDescribeAuditTaskOperationInputPath() -> DescribeAuditTaskOperationInputPath {
        return DescribeAuditTaskOperationInputPath(
            taskId: taskId)
    }
}

/**
 Structure to encode the path input for the DescribeAuthorizer
 operation.
 */
public struct DescribeAuthorizerOperationInputPath: Codable, Equatable {
    public var authorizerName: AuthorizerName

    public init(authorizerName: AuthorizerName) {
        self.authorizerName = authorizerName
    }

    enum CodingKeys: String, CodingKey {
        case authorizerName
    }

    public func validate() throws {
        try authorizerName.validateAsAuthorizerName()
    }
}

public extension DescribeAuthorizerRequest {
    public func asIotModelDescribeAuthorizerOperationInputPath() -> DescribeAuthorizerOperationInputPath {
        return DescribeAuthorizerOperationInputPath(
            authorizerName: authorizerName)
    }
}

/**
 Structure to encode the path input for the DescribeBillingGroup
 operation.
 */
public struct DescribeBillingGroupOperationInputPath: Codable, Equatable {
    public var billingGroupName: BillingGroupName

    public init(billingGroupName: BillingGroupName) {
        self.billingGroupName = billingGroupName
    }

    enum CodingKeys: String, CodingKey {
        case billingGroupName
    }

    public func validate() throws {
        try billingGroupName.validateAsBillingGroupName()
    }
}

public extension DescribeBillingGroupRequest {
    public func asIotModelDescribeBillingGroupOperationInputPath() -> DescribeBillingGroupOperationInputPath {
        return DescribeBillingGroupOperationInputPath(
            billingGroupName: billingGroupName)
    }
}

/**
 Structure to encode the path input for the DescribeCACertificate
 operation.
 */
public struct DescribeCACertificateOperationInputPath: Codable, Equatable {
    public var certificateId: CertificateId

    public init(certificateId: CertificateId) {
        self.certificateId = certificateId
    }

    enum CodingKeys: String, CodingKey {
        case certificateId = "caCertificateId"
    }

    public func validate() throws {
        try certificateId.validateAsCertificateId()
    }
}

public extension DescribeCACertificateRequest {
    public func asIotModelDescribeCACertificateOperationInputPath() -> DescribeCACertificateOperationInputPath {
        return DescribeCACertificateOperationInputPath(
            certificateId: certificateId)
    }
}

/**
 Structure to encode the path input for the DescribeCertificate
 operation.
 */
public struct DescribeCertificateOperationInputPath: Codable, Equatable {
    public var certificateId: CertificateId

    public init(certificateId: CertificateId) {
        self.certificateId = certificateId
    }

    enum CodingKeys: String, CodingKey {
        case certificateId
    }

    public func validate() throws {
        try certificateId.validateAsCertificateId()
    }
}

public extension DescribeCertificateRequest {
    public func asIotModelDescribeCertificateOperationInputPath() -> DescribeCertificateOperationInputPath {
        return DescribeCertificateOperationInputPath(
            certificateId: certificateId)
    }
}

/**
 Structure to encode the query input for the DescribeEndpoint
 operation.
 */
public struct DescribeEndpointOperationInputQuery: Codable, Equatable {
    public var endpointType: EndpointType?

    public init(endpointType: EndpointType? = nil) {
        self.endpointType = endpointType
    }

    enum CodingKeys: String, CodingKey {
        case endpointType
    }

    public func validate() throws {
    }
}

public extension DescribeEndpointRequest {
    public func asIotModelDescribeEndpointOperationInputQuery() -> DescribeEndpointOperationInputQuery {
        return DescribeEndpointOperationInputQuery(
            endpointType: endpointType)
    }
}

/**
 Structure to encode the path input for the DescribeIndex
 operation.
 */
public struct DescribeIndexOperationInputPath: Codable, Equatable {
    public var indexName: IndexName

    public init(indexName: IndexName) {
        self.indexName = indexName
    }

    enum CodingKeys: String, CodingKey {
        case indexName
    }

    public func validate() throws {
        try indexName.validateAsIndexName()
    }
}

public extension DescribeIndexRequest {
    public func asIotModelDescribeIndexOperationInputPath() -> DescribeIndexOperationInputPath {
        return DescribeIndexOperationInputPath(
            indexName: indexName)
    }
}

/**
 Structure to encode the path input for the DescribeJob
 operation.
 */
public struct DescribeJobOperationInputPath: Codable, Equatable {
    public var jobId: JobId

    public init(jobId: JobId) {
        self.jobId = jobId
    }

    enum CodingKeys: String, CodingKey {
        case jobId
    }

    public func validate() throws {
        try jobId.validateAsJobId()
    }
}

public extension DescribeJobRequest {
    public func asIotModelDescribeJobOperationInputPath() -> DescribeJobOperationInputPath {
        return DescribeJobOperationInputPath(
            jobId: jobId)
    }
}

/**
 Structure to encode the path input for the DescribeJobExecution
 operation.
 */
public struct DescribeJobExecutionOperationInputPath: Codable, Equatable {
    public var jobId: JobId
    public var thingName: ThingName

    public init(jobId: JobId,
                thingName: ThingName) {
        self.jobId = jobId
        self.thingName = thingName
    }

    enum CodingKeys: String, CodingKey {
        case jobId
        case thingName
    }

    public func validate() throws {
        try jobId.validateAsJobId()
        try thingName.validateAsThingName()
    }
}

public extension DescribeJobExecutionRequest {
    public func asIotModelDescribeJobExecutionOperationInputPath() -> DescribeJobExecutionOperationInputPath {
        return DescribeJobExecutionOperationInputPath(
            jobId: jobId,
            thingName: thingName)
    }
}

/**
 Structure to encode the query input for the DescribeJobExecution
 operation.
 */
public struct DescribeJobExecutionOperationInputQuery: Codable, Equatable {
    public var executionNumber: ExecutionNumber?

    public init(executionNumber: ExecutionNumber? = nil) {
        self.executionNumber = executionNumber
    }

    enum CodingKeys: String, CodingKey {
        case executionNumber
    }

    public func validate() throws {
    }
}

public extension DescribeJobExecutionRequest {
    public func asIotModelDescribeJobExecutionOperationInputQuery() -> DescribeJobExecutionOperationInputQuery {
        return DescribeJobExecutionOperationInputQuery(
            executionNumber: executionNumber)
    }
}

/**
 Structure to encode the path input for the DescribeMitigationAction
 operation.
 */
public struct DescribeMitigationActionOperationInputPath: Codable, Equatable {
    public var actionName: MitigationActionName

    public init(actionName: MitigationActionName) {
        self.actionName = actionName
    }

    enum CodingKeys: String, CodingKey {
        case actionName
    }

    public func validate() throws {
        try actionName.validateAsMitigationActionName()
    }
}

public extension DescribeMitigationActionRequest {
    public func asIotModelDescribeMitigationActionOperationInputPath() -> DescribeMitigationActionOperationInputPath {
        return DescribeMitigationActionOperationInputPath(
            actionName: actionName)
    }
}

/**
 Structure to encode the path input for the DescribeRoleAlias
 operation.
 */
public struct DescribeRoleAliasOperationInputPath: Codable, Equatable {
    public var roleAlias: RoleAlias

    public init(roleAlias: RoleAlias) {
        self.roleAlias = roleAlias
    }

    enum CodingKeys: String, CodingKey {
        case roleAlias
    }

    public func validate() throws {
        try roleAlias.validateAsRoleAlias()
    }
}

public extension DescribeRoleAliasRequest {
    public func asIotModelDescribeRoleAliasOperationInputPath() -> DescribeRoleAliasOperationInputPath {
        return DescribeRoleAliasOperationInputPath(
            roleAlias: roleAlias)
    }
}

/**
 Structure to encode the path input for the DescribeScheduledAudit
 operation.
 */
public struct DescribeScheduledAuditOperationInputPath: Codable, Equatable {
    public var scheduledAuditName: ScheduledAuditName

    public init(scheduledAuditName: ScheduledAuditName) {
        self.scheduledAuditName = scheduledAuditName
    }

    enum CodingKeys: String, CodingKey {
        case scheduledAuditName
    }

    public func validate() throws {
        try scheduledAuditName.validateAsScheduledAuditName()
    }
}

public extension DescribeScheduledAuditRequest {
    public func asIotModelDescribeScheduledAuditOperationInputPath() -> DescribeScheduledAuditOperationInputPath {
        return DescribeScheduledAuditOperationInputPath(
            scheduledAuditName: scheduledAuditName)
    }
}

/**
 Structure to encode the path input for the DescribeSecurityProfile
 operation.
 */
public struct DescribeSecurityProfileOperationInputPath: Codable, Equatable {
    public var securityProfileName: SecurityProfileName

    public init(securityProfileName: SecurityProfileName) {
        self.securityProfileName = securityProfileName
    }

    enum CodingKeys: String, CodingKey {
        case securityProfileName
    }

    public func validate() throws {
        try securityProfileName.validateAsSecurityProfileName()
    }
}

public extension DescribeSecurityProfileRequest {
    public func asIotModelDescribeSecurityProfileOperationInputPath() -> DescribeSecurityProfileOperationInputPath {
        return DescribeSecurityProfileOperationInputPath(
            securityProfileName: securityProfileName)
    }
}

/**
 Structure to encode the path input for the DescribeStream
 operation.
 */
public struct DescribeStreamOperationInputPath: Codable, Equatable {
    public var streamId: StreamId

    public init(streamId: StreamId) {
        self.streamId = streamId
    }

    enum CodingKeys: String, CodingKey {
        case streamId
    }

    public func validate() throws {
        try streamId.validateAsStreamId()
    }
}

public extension DescribeStreamRequest {
    public func asIotModelDescribeStreamOperationInputPath() -> DescribeStreamOperationInputPath {
        return DescribeStreamOperationInputPath(
            streamId: streamId)
    }
}

/**
 Structure to encode the path input for the DescribeThing
 operation.
 */
public struct DescribeThingOperationInputPath: Codable, Equatable {
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

public extension DescribeThingRequest {
    public func asIotModelDescribeThingOperationInputPath() -> DescribeThingOperationInputPath {
        return DescribeThingOperationInputPath(
            thingName: thingName)
    }
}

/**
 Structure to encode the path input for the DescribeThingGroup
 operation.
 */
public struct DescribeThingGroupOperationInputPath: Codable, Equatable {
    public var thingGroupName: ThingGroupName

    public init(thingGroupName: ThingGroupName) {
        self.thingGroupName = thingGroupName
    }

    enum CodingKeys: String, CodingKey {
        case thingGroupName
    }

    public func validate() throws {
        try thingGroupName.validateAsThingGroupName()
    }
}

public extension DescribeThingGroupRequest {
    public func asIotModelDescribeThingGroupOperationInputPath() -> DescribeThingGroupOperationInputPath {
        return DescribeThingGroupOperationInputPath(
            thingGroupName: thingGroupName)
    }
}

/**
 Structure to encode the path input for the DescribeThingRegistrationTask
 operation.
 */
public struct DescribeThingRegistrationTaskOperationInputPath: Codable, Equatable {
    public var taskId: TaskId

    public init(taskId: TaskId) {
        self.taskId = taskId
    }

    enum CodingKeys: String, CodingKey {
        case taskId
    }

    public func validate() throws {
        try taskId.validateAsTaskId()
    }
}

public extension DescribeThingRegistrationTaskRequest {
    public func asIotModelDescribeThingRegistrationTaskOperationInputPath() -> DescribeThingRegistrationTaskOperationInputPath {
        return DescribeThingRegistrationTaskOperationInputPath(
            taskId: taskId)
    }
}

/**
 Structure to encode the path input for the DescribeThingType
 operation.
 */
public struct DescribeThingTypeOperationInputPath: Codable, Equatable {
    public var thingTypeName: ThingTypeName

    public init(thingTypeName: ThingTypeName) {
        self.thingTypeName = thingTypeName
    }

    enum CodingKeys: String, CodingKey {
        case thingTypeName
    }

    public func validate() throws {
        try thingTypeName.validateAsThingTypeName()
    }
}

public extension DescribeThingTypeRequest {
    public func asIotModelDescribeThingTypeOperationInputPath() -> DescribeThingTypeOperationInputPath {
        return DescribeThingTypeOperationInputPath(
            thingTypeName: thingTypeName)
    }
}

/**
 Structure to encode the path input for the DetachPolicy
 operation.
 */
public struct DetachPolicyOperationInputPath: Codable, Equatable {
    public var policyName: PolicyName

    public init(policyName: PolicyName) {
        self.policyName = policyName
    }

    enum CodingKeys: String, CodingKey {
        case policyName
    }

    public func validate() throws {
        try policyName.validateAsPolicyName()
    }
}

public extension DetachPolicyRequest {
    public func asIotModelDetachPolicyOperationInputPath() -> DetachPolicyOperationInputPath {
        return DetachPolicyOperationInputPath(
            policyName: policyName)
    }
}

/**
 Structure to encode the body input for the DetachPolicy
 operation.
 */
public struct DetachPolicyOperationInputBody: Codable, Equatable {
    public var target: PolicyTarget

    public init(target: PolicyTarget) {
        self.target = target
    }

    enum CodingKeys: String, CodingKey {
        case target
    }

    public func validate() throws {
    }
}

public extension DetachPolicyRequest {
    public func asIotModelDetachPolicyOperationInputBody() -> DetachPolicyOperationInputBody {
        return DetachPolicyOperationInputBody(
            target: target)
    }
}

/**
 Structure to encode the path input for the DetachPrincipalPolicy
 operation.
 */
public struct DetachPrincipalPolicyOperationInputPath: Codable, Equatable {
    public var policyName: PolicyName

    public init(policyName: PolicyName) {
        self.policyName = policyName
    }

    enum CodingKeys: String, CodingKey {
        case policyName
    }

    public func validate() throws {
        try policyName.validateAsPolicyName()
    }
}

public extension DetachPrincipalPolicyRequest {
    public func asIotModelDetachPrincipalPolicyOperationInputPath() -> DetachPrincipalPolicyOperationInputPath {
        return DetachPrincipalPolicyOperationInputPath(
            policyName: policyName)
    }
}

/**
 Structure to encode the body input for the DetachPrincipalPolicy
 operation.
 */
public struct DetachPrincipalPolicyOperationInputAdditionalHeaders: Codable, Equatable {
    public var principal: Principal

    public init(principal: Principal) {
        self.principal = principal
    }

    enum CodingKeys: String, CodingKey {
        case principal = "x-amzn-iot-principal"
    }

    public func validate() throws {
    }
}

public extension DetachPrincipalPolicyRequest {
    public func asIotModelDetachPrincipalPolicyOperationInputAdditionalHeaders() -> DetachPrincipalPolicyOperationInputAdditionalHeaders {
        return DetachPrincipalPolicyOperationInputAdditionalHeaders(
            principal: principal)
    }
}

/**
 Structure to encode the path input for the DetachSecurityProfile
 operation.
 */
public struct DetachSecurityProfileOperationInputPath: Codable, Equatable {
    public var securityProfileName: SecurityProfileName

    public init(securityProfileName: SecurityProfileName) {
        self.securityProfileName = securityProfileName
    }

    enum CodingKeys: String, CodingKey {
        case securityProfileName
    }

    public func validate() throws {
        try securityProfileName.validateAsSecurityProfileName()
    }
}

public extension DetachSecurityProfileRequest {
    public func asIotModelDetachSecurityProfileOperationInputPath() -> DetachSecurityProfileOperationInputPath {
        return DetachSecurityProfileOperationInputPath(
            securityProfileName: securityProfileName)
    }
}

/**
 Structure to encode the query input for the DetachSecurityProfile
 operation.
 */
public struct DetachSecurityProfileOperationInputQuery: Codable, Equatable {
    public var securityProfileTargetArn: SecurityProfileTargetArn

    public init(securityProfileTargetArn: SecurityProfileTargetArn) {
        self.securityProfileTargetArn = securityProfileTargetArn
    }

    enum CodingKeys: String, CodingKey {
        case securityProfileTargetArn
    }

    public func validate() throws {
    }
}

public extension DetachSecurityProfileRequest {
    public func asIotModelDetachSecurityProfileOperationInputQuery() -> DetachSecurityProfileOperationInputQuery {
        return DetachSecurityProfileOperationInputQuery(
            securityProfileTargetArn: securityProfileTargetArn)
    }
}

/**
 Structure to encode the path input for the DetachThingPrincipal
 operation.
 */
public struct DetachThingPrincipalOperationInputPath: Codable, Equatable {
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

public extension DetachThingPrincipalRequest {
    public func asIotModelDetachThingPrincipalOperationInputPath() -> DetachThingPrincipalOperationInputPath {
        return DetachThingPrincipalOperationInputPath(
            thingName: thingName)
    }
}

/**
 Structure to encode the body input for the DetachThingPrincipal
 operation.
 */
public struct DetachThingPrincipalOperationInputAdditionalHeaders: Codable, Equatable {
    public var principal: Principal

    public init(principal: Principal) {
        self.principal = principal
    }

    enum CodingKeys: String, CodingKey {
        case principal = "x-amzn-principal"
    }

    public func validate() throws {
    }
}

public extension DetachThingPrincipalRequest {
    public func asIotModelDetachThingPrincipalOperationInputAdditionalHeaders() -> DetachThingPrincipalOperationInputAdditionalHeaders {
        return DetachThingPrincipalOperationInputAdditionalHeaders(
            principal: principal)
    }
}

/**
 Structure to encode the path input for the DisableTopicRule
 operation.
 */
public struct DisableTopicRuleOperationInputPath: Codable, Equatable {
    public var ruleName: RuleName

    public init(ruleName: RuleName) {
        self.ruleName = ruleName
    }

    enum CodingKeys: String, CodingKey {
        case ruleName
    }

    public func validate() throws {
        try ruleName.validateAsRuleName()
    }
}

public extension DisableTopicRuleRequest {
    public func asIotModelDisableTopicRuleOperationInputPath() -> DisableTopicRuleOperationInputPath {
        return DisableTopicRuleOperationInputPath(
            ruleName: ruleName)
    }
}

/**
 Structure to encode the path input for the EnableTopicRule
 operation.
 */
public struct EnableTopicRuleOperationInputPath: Codable, Equatable {
    public var ruleName: RuleName

    public init(ruleName: RuleName) {
        self.ruleName = ruleName
    }

    enum CodingKeys: String, CodingKey {
        case ruleName
    }

    public func validate() throws {
        try ruleName.validateAsRuleName()
    }
}

public extension EnableTopicRuleRequest {
    public func asIotModelEnableTopicRuleOperationInputPath() -> EnableTopicRuleOperationInputPath {
        return EnableTopicRuleOperationInputPath(
            ruleName: ruleName)
    }
}

/**
 Structure to encode the query input for the GetEffectivePolicies
 operation.
 */
public struct GetEffectivePoliciesOperationInputQuery: Codable, Equatable {
    public var thingName: ThingName?

    public init(thingName: ThingName? = nil) {
        self.thingName = thingName
    }

    enum CodingKeys: String, CodingKey {
        case thingName
    }

    public func validate() throws {
        try thingName?.validateAsThingName()
    }
}

public extension GetEffectivePoliciesRequest {
    public func asIotModelGetEffectivePoliciesOperationInputQuery() -> GetEffectivePoliciesOperationInputQuery {
        return GetEffectivePoliciesOperationInputQuery(
            thingName: thingName)
    }
}

/**
 Structure to encode the body input for the GetEffectivePolicies
 operation.
 */
public struct GetEffectivePoliciesOperationInputBody: Codable, Equatable {
    public var cognitoIdentityPoolId: CognitoIdentityPoolId?
    public var principal: Principal?

    public init(cognitoIdentityPoolId: CognitoIdentityPoolId? = nil,
                principal: Principal? = nil) {
        self.cognitoIdentityPoolId = cognitoIdentityPoolId
        self.principal = principal
    }

    enum CodingKeys: String, CodingKey {
        case cognitoIdentityPoolId
        case principal
    }

    public func validate() throws {
    }
}

public extension GetEffectivePoliciesRequest {
    public func asIotModelGetEffectivePoliciesOperationInputBody() -> GetEffectivePoliciesOperationInputBody {
        return GetEffectivePoliciesOperationInputBody(
            cognitoIdentityPoolId: cognitoIdentityPoolId,
            principal: principal)
    }
}

/**
 Structure to encode the path input for the GetJobDocument
 operation.
 */
public struct GetJobDocumentOperationInputPath: Codable, Equatable {
    public var jobId: JobId

    public init(jobId: JobId) {
        self.jobId = jobId
    }

    enum CodingKeys: String, CodingKey {
        case jobId
    }

    public func validate() throws {
        try jobId.validateAsJobId()
    }
}

public extension GetJobDocumentRequest {
    public func asIotModelGetJobDocumentOperationInputPath() -> GetJobDocumentOperationInputPath {
        return GetJobDocumentOperationInputPath(
            jobId: jobId)
    }
}

/**
 Structure to encode the path input for the GetOTAUpdate
 operation.
 */
public struct GetOTAUpdateOperationInputPath: Codable, Equatable {
    public var otaUpdateId: OTAUpdateId

    public init(otaUpdateId: OTAUpdateId) {
        self.otaUpdateId = otaUpdateId
    }

    enum CodingKeys: String, CodingKey {
        case otaUpdateId
    }

    public func validate() throws {
        try otaUpdateId.validateAsOTAUpdateId()
    }
}

public extension GetOTAUpdateRequest {
    public func asIotModelGetOTAUpdateOperationInputPath() -> GetOTAUpdateOperationInputPath {
        return GetOTAUpdateOperationInputPath(
            otaUpdateId: otaUpdateId)
    }
}

/**
 Structure to encode the path input for the GetPolicy
 operation.
 */
public struct GetPolicyOperationInputPath: Codable, Equatable {
    public var policyName: PolicyName

    public init(policyName: PolicyName) {
        self.policyName = policyName
    }

    enum CodingKeys: String, CodingKey {
        case policyName
    }

    public func validate() throws {
        try policyName.validateAsPolicyName()
    }
}

public extension GetPolicyRequest {
    public func asIotModelGetPolicyOperationInputPath() -> GetPolicyOperationInputPath {
        return GetPolicyOperationInputPath(
            policyName: policyName)
    }
}

/**
 Structure to encode the path input for the GetPolicyVersion
 operation.
 */
public struct GetPolicyVersionOperationInputPath: Codable, Equatable {
    public var policyName: PolicyName
    public var policyVersionId: PolicyVersionId

    public init(policyName: PolicyName,
                policyVersionId: PolicyVersionId) {
        self.policyName = policyName
        self.policyVersionId = policyVersionId
    }

    enum CodingKeys: String, CodingKey {
        case policyName
        case policyVersionId
    }

    public func validate() throws {
        try policyName.validateAsPolicyName()
        try policyVersionId.validateAsPolicyVersionId()
    }
}

public extension GetPolicyVersionRequest {
    public func asIotModelGetPolicyVersionOperationInputPath() -> GetPolicyVersionOperationInputPath {
        return GetPolicyVersionOperationInputPath(
            policyName: policyName,
            policyVersionId: policyVersionId)
    }
}

/**
 Structure to encode the path input for the GetTopicRule
 operation.
 */
public struct GetTopicRuleOperationInputPath: Codable, Equatable {
    public var ruleName: RuleName

    public init(ruleName: RuleName) {
        self.ruleName = ruleName
    }

    enum CodingKeys: String, CodingKey {
        case ruleName
    }

    public func validate() throws {
        try ruleName.validateAsRuleName()
    }
}

public extension GetTopicRuleRequest {
    public func asIotModelGetTopicRuleOperationInputPath() -> GetTopicRuleOperationInputPath {
        return GetTopicRuleOperationInputPath(
            ruleName: ruleName)
    }
}

/**
 Structure to encode the query input for the ListActiveViolations
 operation.
 */
public struct ListActiveViolationsOperationInputQuery: Codable, Equatable {
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var securityProfileName: SecurityProfileName?
    public var thingName: DeviceDefenderThingName?

    public init(maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                securityProfileName: SecurityProfileName? = nil,
                thingName: DeviceDefenderThingName? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.securityProfileName = securityProfileName
        self.thingName = thingName
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case securityProfileName
        case thingName
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try securityProfileName?.validateAsSecurityProfileName()
        try thingName?.validateAsDeviceDefenderThingName()
    }
}

public extension ListActiveViolationsRequest {
    public func asIotModelListActiveViolationsOperationInputQuery() -> ListActiveViolationsOperationInputQuery {
        return ListActiveViolationsOperationInputQuery(
            maxResults: maxResults,
            nextToken: nextToken,
            securityProfileName: securityProfileName,
            thingName: thingName)
    }
}

/**
 Structure to encode the path input for the ListAttachedPolicies
 operation.
 */
public struct ListAttachedPoliciesOperationInputPath: Codable, Equatable {
    public var target: PolicyTarget

    public init(target: PolicyTarget) {
        self.target = target
    }

    enum CodingKeys: String, CodingKey {
        case target
    }

    public func validate() throws {
    }
}

public extension ListAttachedPoliciesRequest {
    public func asIotModelListAttachedPoliciesOperationInputPath() -> ListAttachedPoliciesOperationInputPath {
        return ListAttachedPoliciesOperationInputPath(
            target: target)
    }
}

/**
 Structure to encode the query input for the ListAttachedPolicies
 operation.
 */
public struct ListAttachedPoliciesOperationInputQuery: Codable, Equatable {
    public var marker: Marker?
    public var pageSize: PageSize?
    public var recursive: Recursive?

    public init(marker: Marker? = nil,
                pageSize: PageSize? = nil,
                recursive: Recursive? = nil) {
        self.marker = marker
        self.pageSize = pageSize
        self.recursive = recursive
    }

    enum CodingKeys: String, CodingKey {
        case marker
        case pageSize
        case recursive
    }

    public func validate() throws {
        try marker?.validateAsMarker()
        try pageSize?.validateAsPageSize()
    }
}

public extension ListAttachedPoliciesRequest {
    public func asIotModelListAttachedPoliciesOperationInputQuery() -> ListAttachedPoliciesOperationInputQuery {
        return ListAttachedPoliciesOperationInputQuery(
            marker: marker,
            pageSize: pageSize,
            recursive: recursive)
    }
}

/**
 Structure to encode the query input for the ListAuditMitigationActionsExecutions
 operation.
 */
public struct ListAuditMitigationActionsExecutionsOperationInputQuery: Codable, Equatable {
    public var actionStatus: AuditMitigationActionsExecutionStatus?
    public var findingId: FindingId
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var taskId: AuditMitigationActionsTaskId

    public init(actionStatus: AuditMitigationActionsExecutionStatus? = nil,
                findingId: FindingId,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                taskId: AuditMitigationActionsTaskId) {
        self.actionStatus = actionStatus
        self.findingId = findingId
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.taskId = taskId
    }

    enum CodingKeys: String, CodingKey {
        case actionStatus
        case findingId
        case maxResults
        case nextToken
        case taskId
    }

    public func validate() throws {
        try findingId.validateAsFindingId()
        try maxResults?.validateAsMaxResults()
        try taskId.validateAsAuditMitigationActionsTaskId()
    }
}

public extension ListAuditMitigationActionsExecutionsRequest {
    public func asIotModelListAuditMitigationActionsExecutionsOperationInputQuery() -> ListAuditMitigationActionsExecutionsOperationInputQuery {
        return ListAuditMitigationActionsExecutionsOperationInputQuery(
            actionStatus: actionStatus,
            findingId: findingId,
            maxResults: maxResults,
            nextToken: nextToken,
            taskId: taskId)
    }
}

/**
 Structure to encode the query input for the ListAuditMitigationActionsTasks
 operation.
 */
public struct ListAuditMitigationActionsTasksOperationInputQuery: Codable, Equatable {
    public var auditTaskId: AuditTaskId?
    public var endTime: Timestamp
    public var findingId: FindingId?
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var startTime: Timestamp
    public var taskStatus: AuditMitigationActionsTaskStatus?

    public init(auditTaskId: AuditTaskId? = nil,
                endTime: Timestamp,
                findingId: FindingId? = nil,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                startTime: Timestamp,
                taskStatus: AuditMitigationActionsTaskStatus? = nil) {
        self.auditTaskId = auditTaskId
        self.endTime = endTime
        self.findingId = findingId
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.startTime = startTime
        self.taskStatus = taskStatus
    }

    enum CodingKeys: String, CodingKey {
        case auditTaskId
        case endTime
        case findingId
        case maxResults
        case nextToken
        case startTime
        case taskStatus
    }

    public func validate() throws {
        try auditTaskId?.validateAsAuditTaskId()
        try findingId?.validateAsFindingId()
        try maxResults?.validateAsMaxResults()
    }
}

public extension ListAuditMitigationActionsTasksRequest {
    public func asIotModelListAuditMitigationActionsTasksOperationInputQuery() -> ListAuditMitigationActionsTasksOperationInputQuery {
        return ListAuditMitigationActionsTasksOperationInputQuery(
            auditTaskId: auditTaskId,
            endTime: endTime,
            findingId: findingId,
            maxResults: maxResults,
            nextToken: nextToken,
            startTime: startTime,
            taskStatus: taskStatus)
    }
}

/**
 Structure to encode the query input for the ListAuditTasks
 operation.
 */
public struct ListAuditTasksOperationInputQuery: Codable, Equatable {
    public var endTime: Timestamp
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var startTime: Timestamp
    public var taskStatus: AuditTaskStatus?
    public var taskType: AuditTaskType?

    public init(endTime: Timestamp,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                startTime: Timestamp,
                taskStatus: AuditTaskStatus? = nil,
                taskType: AuditTaskType? = nil) {
        self.endTime = endTime
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.startTime = startTime
        self.taskStatus = taskStatus
        self.taskType = taskType
    }

    enum CodingKeys: String, CodingKey {
        case endTime
        case maxResults
        case nextToken
        case startTime
        case taskStatus
        case taskType
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
    }
}

public extension ListAuditTasksRequest {
    public func asIotModelListAuditTasksOperationInputQuery() -> ListAuditTasksOperationInputQuery {
        return ListAuditTasksOperationInputQuery(
            endTime: endTime,
            maxResults: maxResults,
            nextToken: nextToken,
            startTime: startTime,
            taskStatus: taskStatus,
            taskType: taskType)
    }
}

/**
 Structure to encode the query input for the ListAuthorizers
 operation.
 */
public struct ListAuthorizersOperationInputQuery: Codable, Equatable {
    public var ascendingOrder: AscendingOrder?
    public var marker: Marker?
    public var pageSize: PageSize?
    public var status: AuthorizerStatus?

    public init(ascendingOrder: AscendingOrder? = nil,
                marker: Marker? = nil,
                pageSize: PageSize? = nil,
                status: AuthorizerStatus? = nil) {
        self.ascendingOrder = ascendingOrder
        self.marker = marker
        self.pageSize = pageSize
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case ascendingOrder = "isAscendingOrder"
        case marker
        case pageSize
        case status
    }

    public func validate() throws {
        try marker?.validateAsMarker()
        try pageSize?.validateAsPageSize()
    }
}

public extension ListAuthorizersRequest {
    public func asIotModelListAuthorizersOperationInputQuery() -> ListAuthorizersOperationInputQuery {
        return ListAuthorizersOperationInputQuery(
            ascendingOrder: ascendingOrder,
            marker: marker,
            pageSize: pageSize,
            status: status)
    }
}

/**
 Structure to encode the query input for the ListBillingGroups
 operation.
 */
public struct ListBillingGroupsOperationInputQuery: Codable, Equatable {
    public var maxResults: RegistryMaxResults?
    public var namePrefixFilter: BillingGroupName?
    public var nextToken: NextToken?

    public init(maxResults: RegistryMaxResults? = nil,
                namePrefixFilter: BillingGroupName? = nil,
                nextToken: NextToken? = nil) {
        self.maxResults = maxResults
        self.namePrefixFilter = namePrefixFilter
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case namePrefixFilter
        case nextToken
    }

    public func validate() throws {
        try maxResults?.validateAsRegistryMaxResults()
        try namePrefixFilter?.validateAsBillingGroupName()
    }
}

public extension ListBillingGroupsRequest {
    public func asIotModelListBillingGroupsOperationInputQuery() -> ListBillingGroupsOperationInputQuery {
        return ListBillingGroupsOperationInputQuery(
            maxResults: maxResults,
            namePrefixFilter: namePrefixFilter,
            nextToken: nextToken)
    }
}

/**
 Structure to encode the query input for the ListCACertificates
 operation.
 */
public struct ListCACertificatesOperationInputQuery: Codable, Equatable {
    public var ascendingOrder: AscendingOrder?
    public var marker: Marker?
    public var pageSize: PageSize?

    public init(ascendingOrder: AscendingOrder? = nil,
                marker: Marker? = nil,
                pageSize: PageSize? = nil) {
        self.ascendingOrder = ascendingOrder
        self.marker = marker
        self.pageSize = pageSize
    }

    enum CodingKeys: String, CodingKey {
        case ascendingOrder = "isAscendingOrder"
        case marker
        case pageSize
    }

    public func validate() throws {
        try marker?.validateAsMarker()
        try pageSize?.validateAsPageSize()
    }
}

public extension ListCACertificatesRequest {
    public func asIotModelListCACertificatesOperationInputQuery() -> ListCACertificatesOperationInputQuery {
        return ListCACertificatesOperationInputQuery(
            ascendingOrder: ascendingOrder,
            marker: marker,
            pageSize: pageSize)
    }
}

/**
 Structure to encode the query input for the ListCertificates
 operation.
 */
public struct ListCertificatesOperationInputQuery: Codable, Equatable {
    public var ascendingOrder: AscendingOrder?
    public var marker: Marker?
    public var pageSize: PageSize?

    public init(ascendingOrder: AscendingOrder? = nil,
                marker: Marker? = nil,
                pageSize: PageSize? = nil) {
        self.ascendingOrder = ascendingOrder
        self.marker = marker
        self.pageSize = pageSize
    }

    enum CodingKeys: String, CodingKey {
        case ascendingOrder = "isAscendingOrder"
        case marker
        case pageSize
    }

    public func validate() throws {
        try marker?.validateAsMarker()
        try pageSize?.validateAsPageSize()
    }
}

public extension ListCertificatesRequest {
    public func asIotModelListCertificatesOperationInputQuery() -> ListCertificatesOperationInputQuery {
        return ListCertificatesOperationInputQuery(
            ascendingOrder: ascendingOrder,
            marker: marker,
            pageSize: pageSize)
    }
}

/**
 Structure to encode the path input for the ListCertificatesByCA
 operation.
 */
public struct ListCertificatesByCAOperationInputPath: Codable, Equatable {
    public var caCertificateId: CertificateId

    public init(caCertificateId: CertificateId) {
        self.caCertificateId = caCertificateId
    }

    enum CodingKeys: String, CodingKey {
        case caCertificateId
    }

    public func validate() throws {
        try caCertificateId.validateAsCertificateId()
    }
}

public extension ListCertificatesByCARequest {
    public func asIotModelListCertificatesByCAOperationInputPath() -> ListCertificatesByCAOperationInputPath {
        return ListCertificatesByCAOperationInputPath(
            caCertificateId: caCertificateId)
    }
}

/**
 Structure to encode the query input for the ListCertificatesByCA
 operation.
 */
public struct ListCertificatesByCAOperationInputQuery: Codable, Equatable {
    public var ascendingOrder: AscendingOrder?
    public var marker: Marker?
    public var pageSize: PageSize?

    public init(ascendingOrder: AscendingOrder? = nil,
                marker: Marker? = nil,
                pageSize: PageSize? = nil) {
        self.ascendingOrder = ascendingOrder
        self.marker = marker
        self.pageSize = pageSize
    }

    enum CodingKeys: String, CodingKey {
        case ascendingOrder = "isAscendingOrder"
        case marker
        case pageSize
    }

    public func validate() throws {
        try marker?.validateAsMarker()
        try pageSize?.validateAsPageSize()
    }
}

public extension ListCertificatesByCARequest {
    public func asIotModelListCertificatesByCAOperationInputQuery() -> ListCertificatesByCAOperationInputQuery {
        return ListCertificatesByCAOperationInputQuery(
            ascendingOrder: ascendingOrder,
            marker: marker,
            pageSize: pageSize)
    }
}

/**
 Structure to encode the query input for the ListIndices
 operation.
 */
public struct ListIndicesOperationInputQuery: Codable, Equatable {
    public var maxResults: QueryMaxResults?
    public var nextToken: NextToken?

    public init(maxResults: QueryMaxResults? = nil,
                nextToken: NextToken? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
    }

    public func validate() throws {
        try maxResults?.validateAsQueryMaxResults()
    }
}

public extension ListIndicesRequest {
    public func asIotModelListIndicesOperationInputQuery() -> ListIndicesOperationInputQuery {
        return ListIndicesOperationInputQuery(
            maxResults: maxResults,
            nextToken: nextToken)
    }
}

/**
 Structure to encode the path input for the ListJobExecutionsForJob
 operation.
 */
public struct ListJobExecutionsForJobOperationInputPath: Codable, Equatable {
    public var jobId: JobId

    public init(jobId: JobId) {
        self.jobId = jobId
    }

    enum CodingKeys: String, CodingKey {
        case jobId
    }

    public func validate() throws {
        try jobId.validateAsJobId()
    }
}

public extension ListJobExecutionsForJobRequest {
    public func asIotModelListJobExecutionsForJobOperationInputPath() -> ListJobExecutionsForJobOperationInputPath {
        return ListJobExecutionsForJobOperationInputPath(
            jobId: jobId)
    }
}

/**
 Structure to encode the query input for the ListJobExecutionsForJob
 operation.
 */
public struct ListJobExecutionsForJobOperationInputQuery: Codable, Equatable {
    public var maxResults: LaserMaxResults?
    public var nextToken: NextToken?
    public var status: JobExecutionStatus?

    public init(maxResults: LaserMaxResults? = nil,
                nextToken: NextToken? = nil,
                status: JobExecutionStatus? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case status
    }

    public func validate() throws {
        try maxResults?.validateAsLaserMaxResults()
    }
}

public extension ListJobExecutionsForJobRequest {
    public func asIotModelListJobExecutionsForJobOperationInputQuery() -> ListJobExecutionsForJobOperationInputQuery {
        return ListJobExecutionsForJobOperationInputQuery(
            maxResults: maxResults,
            nextToken: nextToken,
            status: status)
    }
}

/**
 Structure to encode the path input for the ListJobExecutionsForThing
 operation.
 */
public struct ListJobExecutionsForThingOperationInputPath: Codable, Equatable {
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

public extension ListJobExecutionsForThingRequest {
    public func asIotModelListJobExecutionsForThingOperationInputPath() -> ListJobExecutionsForThingOperationInputPath {
        return ListJobExecutionsForThingOperationInputPath(
            thingName: thingName)
    }
}

/**
 Structure to encode the query input for the ListJobExecutionsForThing
 operation.
 */
public struct ListJobExecutionsForThingOperationInputQuery: Codable, Equatable {
    public var maxResults: LaserMaxResults?
    public var nextToken: NextToken?
    public var status: JobExecutionStatus?

    public init(maxResults: LaserMaxResults? = nil,
                nextToken: NextToken? = nil,
                status: JobExecutionStatus? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case status
    }

    public func validate() throws {
        try maxResults?.validateAsLaserMaxResults()
    }
}

public extension ListJobExecutionsForThingRequest {
    public func asIotModelListJobExecutionsForThingOperationInputQuery() -> ListJobExecutionsForThingOperationInputQuery {
        return ListJobExecutionsForThingOperationInputQuery(
            maxResults: maxResults,
            nextToken: nextToken,
            status: status)
    }
}

/**
 Structure to encode the query input for the ListJobs
 operation.
 */
public struct ListJobsOperationInputQuery: Codable, Equatable {
    public var maxResults: LaserMaxResults?
    public var nextToken: NextToken?
    public var status: JobStatus?
    public var targetSelection: TargetSelection?
    public var thingGroupId: ThingGroupId?
    public var thingGroupName: ThingGroupName?

    public init(maxResults: LaserMaxResults? = nil,
                nextToken: NextToken? = nil,
                status: JobStatus? = nil,
                targetSelection: TargetSelection? = nil,
                thingGroupId: ThingGroupId? = nil,
                thingGroupName: ThingGroupName? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.status = status
        self.targetSelection = targetSelection
        self.thingGroupId = thingGroupId
        self.thingGroupName = thingGroupName
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case status
        case targetSelection
        case thingGroupId
        case thingGroupName
    }

    public func validate() throws {
        try maxResults?.validateAsLaserMaxResults()
        try thingGroupId?.validateAsThingGroupId()
        try thingGroupName?.validateAsThingGroupName()
    }
}

public extension ListJobsRequest {
    public func asIotModelListJobsOperationInputQuery() -> ListJobsOperationInputQuery {
        return ListJobsOperationInputQuery(
            maxResults: maxResults,
            nextToken: nextToken,
            status: status,
            targetSelection: targetSelection,
            thingGroupId: thingGroupId,
            thingGroupName: thingGroupName)
    }
}

/**
 Structure to encode the query input for the ListMitigationActions
 operation.
 */
public struct ListMitigationActionsOperationInputQuery: Codable, Equatable {
    public var actionType: MitigationActionType?
    public var maxResults: MaxResults?
    public var nextToken: NextToken?

    public init(actionType: MitigationActionType? = nil,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil) {
        self.actionType = actionType
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case actionType
        case maxResults
        case nextToken
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
    }
}

public extension ListMitigationActionsRequest {
    public func asIotModelListMitigationActionsOperationInputQuery() -> ListMitigationActionsOperationInputQuery {
        return ListMitigationActionsOperationInputQuery(
            actionType: actionType,
            maxResults: maxResults,
            nextToken: nextToken)
    }
}

/**
 Structure to encode the query input for the ListOTAUpdates
 operation.
 */
public struct ListOTAUpdatesOperationInputQuery: Codable, Equatable {
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var otaUpdateStatus: OTAUpdateStatus?

    public init(maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                otaUpdateStatus: OTAUpdateStatus? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.otaUpdateStatus = otaUpdateStatus
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case otaUpdateStatus
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
    }
}

public extension ListOTAUpdatesRequest {
    public func asIotModelListOTAUpdatesOperationInputQuery() -> ListOTAUpdatesOperationInputQuery {
        return ListOTAUpdatesOperationInputQuery(
            maxResults: maxResults,
            nextToken: nextToken,
            otaUpdateStatus: otaUpdateStatus)
    }
}

/**
 Structure to encode the query input for the ListOutgoingCertificates
 operation.
 */
public struct ListOutgoingCertificatesOperationInputQuery: Codable, Equatable {
    public var ascendingOrder: AscendingOrder?
    public var marker: Marker?
    public var pageSize: PageSize?

    public init(ascendingOrder: AscendingOrder? = nil,
                marker: Marker? = nil,
                pageSize: PageSize? = nil) {
        self.ascendingOrder = ascendingOrder
        self.marker = marker
        self.pageSize = pageSize
    }

    enum CodingKeys: String, CodingKey {
        case ascendingOrder = "isAscendingOrder"
        case marker
        case pageSize
    }

    public func validate() throws {
        try marker?.validateAsMarker()
        try pageSize?.validateAsPageSize()
    }
}

public extension ListOutgoingCertificatesRequest {
    public func asIotModelListOutgoingCertificatesOperationInputQuery() -> ListOutgoingCertificatesOperationInputQuery {
        return ListOutgoingCertificatesOperationInputQuery(
            ascendingOrder: ascendingOrder,
            marker: marker,
            pageSize: pageSize)
    }
}

/**
 Structure to encode the query input for the ListPolicies
 operation.
 */
public struct ListPoliciesOperationInputQuery: Codable, Equatable {
    public var ascendingOrder: AscendingOrder?
    public var marker: Marker?
    public var pageSize: PageSize?

    public init(ascendingOrder: AscendingOrder? = nil,
                marker: Marker? = nil,
                pageSize: PageSize? = nil) {
        self.ascendingOrder = ascendingOrder
        self.marker = marker
        self.pageSize = pageSize
    }

    enum CodingKeys: String, CodingKey {
        case ascendingOrder = "isAscendingOrder"
        case marker
        case pageSize
    }

    public func validate() throws {
        try marker?.validateAsMarker()
        try pageSize?.validateAsPageSize()
    }
}

public extension ListPoliciesRequest {
    public func asIotModelListPoliciesOperationInputQuery() -> ListPoliciesOperationInputQuery {
        return ListPoliciesOperationInputQuery(
            ascendingOrder: ascendingOrder,
            marker: marker,
            pageSize: pageSize)
    }
}

/**
 Structure to encode the query input for the ListPolicyPrincipals
 operation.
 */
public struct ListPolicyPrincipalsOperationInputQuery: Codable, Equatable {
    public var ascendingOrder: AscendingOrder?
    public var marker: Marker?
    public var pageSize: PageSize?

    public init(ascendingOrder: AscendingOrder? = nil,
                marker: Marker? = nil,
                pageSize: PageSize? = nil) {
        self.ascendingOrder = ascendingOrder
        self.marker = marker
        self.pageSize = pageSize
    }

    enum CodingKeys: String, CodingKey {
        case ascendingOrder = "isAscendingOrder"
        case marker
        case pageSize
    }

    public func validate() throws {
        try marker?.validateAsMarker()
        try pageSize?.validateAsPageSize()
    }
}

public extension ListPolicyPrincipalsRequest {
    public func asIotModelListPolicyPrincipalsOperationInputQuery() -> ListPolicyPrincipalsOperationInputQuery {
        return ListPolicyPrincipalsOperationInputQuery(
            ascendingOrder: ascendingOrder,
            marker: marker,
            pageSize: pageSize)
    }
}

/**
 Structure to encode the body input for the ListPolicyPrincipals
 operation.
 */
public struct ListPolicyPrincipalsOperationInputAdditionalHeaders: Codable, Equatable {
    public var policyName: PolicyName

    public init(policyName: PolicyName) {
        self.policyName = policyName
    }

    enum CodingKeys: String, CodingKey {
        case policyName = "x-amzn-iot-policy"
    }

    public func validate() throws {
        try policyName.validateAsPolicyName()
    }
}

public extension ListPolicyPrincipalsRequest {
    public func asIotModelListPolicyPrincipalsOperationInputAdditionalHeaders() -> ListPolicyPrincipalsOperationInputAdditionalHeaders {
        return ListPolicyPrincipalsOperationInputAdditionalHeaders(
            policyName: policyName)
    }
}

/**
 Structure to encode the path input for the ListPolicyVersions
 operation.
 */
public struct ListPolicyVersionsOperationInputPath: Codable, Equatable {
    public var policyName: PolicyName

    public init(policyName: PolicyName) {
        self.policyName = policyName
    }

    enum CodingKeys: String, CodingKey {
        case policyName
    }

    public func validate() throws {
        try policyName.validateAsPolicyName()
    }
}

public extension ListPolicyVersionsRequest {
    public func asIotModelListPolicyVersionsOperationInputPath() -> ListPolicyVersionsOperationInputPath {
        return ListPolicyVersionsOperationInputPath(
            policyName: policyName)
    }
}

/**
 Structure to encode the query input for the ListPrincipalPolicies
 operation.
 */
public struct ListPrincipalPoliciesOperationInputQuery: Codable, Equatable {
    public var ascendingOrder: AscendingOrder?
    public var marker: Marker?
    public var pageSize: PageSize?

    public init(ascendingOrder: AscendingOrder? = nil,
                marker: Marker? = nil,
                pageSize: PageSize? = nil) {
        self.ascendingOrder = ascendingOrder
        self.marker = marker
        self.pageSize = pageSize
    }

    enum CodingKeys: String, CodingKey {
        case ascendingOrder = "isAscendingOrder"
        case marker
        case pageSize
    }

    public func validate() throws {
        try marker?.validateAsMarker()
        try pageSize?.validateAsPageSize()
    }
}

public extension ListPrincipalPoliciesRequest {
    public func asIotModelListPrincipalPoliciesOperationInputQuery() -> ListPrincipalPoliciesOperationInputQuery {
        return ListPrincipalPoliciesOperationInputQuery(
            ascendingOrder: ascendingOrder,
            marker: marker,
            pageSize: pageSize)
    }
}

/**
 Structure to encode the body input for the ListPrincipalPolicies
 operation.
 */
public struct ListPrincipalPoliciesOperationInputAdditionalHeaders: Codable, Equatable {
    public var principal: Principal

    public init(principal: Principal) {
        self.principal = principal
    }

    enum CodingKeys: String, CodingKey {
        case principal = "x-amzn-iot-principal"
    }

    public func validate() throws {
    }
}

public extension ListPrincipalPoliciesRequest {
    public func asIotModelListPrincipalPoliciesOperationInputAdditionalHeaders() -> ListPrincipalPoliciesOperationInputAdditionalHeaders {
        return ListPrincipalPoliciesOperationInputAdditionalHeaders(
            principal: principal)
    }
}

/**
 Structure to encode the query input for the ListPrincipalThings
 operation.
 */
public struct ListPrincipalThingsOperationInputQuery: Codable, Equatable {
    public var maxResults: RegistryMaxResults?
    public var nextToken: NextToken?

    public init(maxResults: RegistryMaxResults? = nil,
                nextToken: NextToken? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
    }

    public func validate() throws {
        try maxResults?.validateAsRegistryMaxResults()
    }
}

public extension ListPrincipalThingsRequest {
    public func asIotModelListPrincipalThingsOperationInputQuery() -> ListPrincipalThingsOperationInputQuery {
        return ListPrincipalThingsOperationInputQuery(
            maxResults: maxResults,
            nextToken: nextToken)
    }
}

/**
 Structure to encode the body input for the ListPrincipalThings
 operation.
 */
public struct ListPrincipalThingsOperationInputAdditionalHeaders: Codable, Equatable {
    public var principal: Principal

    public init(principal: Principal) {
        self.principal = principal
    }

    enum CodingKeys: String, CodingKey {
        case principal = "x-amzn-principal"
    }

    public func validate() throws {
    }
}

public extension ListPrincipalThingsRequest {
    public func asIotModelListPrincipalThingsOperationInputAdditionalHeaders() -> ListPrincipalThingsOperationInputAdditionalHeaders {
        return ListPrincipalThingsOperationInputAdditionalHeaders(
            principal: principal)
    }
}

/**
 Structure to encode the query input for the ListRoleAliases
 operation.
 */
public struct ListRoleAliasesOperationInputQuery: Codable, Equatable {
    public var ascendingOrder: AscendingOrder?
    public var marker: Marker?
    public var pageSize: PageSize?

    public init(ascendingOrder: AscendingOrder? = nil,
                marker: Marker? = nil,
                pageSize: PageSize? = nil) {
        self.ascendingOrder = ascendingOrder
        self.marker = marker
        self.pageSize = pageSize
    }

    enum CodingKeys: String, CodingKey {
        case ascendingOrder = "isAscendingOrder"
        case marker
        case pageSize
    }

    public func validate() throws {
        try marker?.validateAsMarker()
        try pageSize?.validateAsPageSize()
    }
}

public extension ListRoleAliasesRequest {
    public func asIotModelListRoleAliasesOperationInputQuery() -> ListRoleAliasesOperationInputQuery {
        return ListRoleAliasesOperationInputQuery(
            ascendingOrder: ascendingOrder,
            marker: marker,
            pageSize: pageSize)
    }
}

/**
 Structure to encode the query input for the ListScheduledAudits
 operation.
 */
public struct ListScheduledAuditsOperationInputQuery: Codable, Equatable {
    public var maxResults: MaxResults?
    public var nextToken: NextToken?

    public init(maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
    }
}

public extension ListScheduledAuditsRequest {
    public func asIotModelListScheduledAuditsOperationInputQuery() -> ListScheduledAuditsOperationInputQuery {
        return ListScheduledAuditsOperationInputQuery(
            maxResults: maxResults,
            nextToken: nextToken)
    }
}

/**
 Structure to encode the query input for the ListSecurityProfiles
 operation.
 */
public struct ListSecurityProfilesOperationInputQuery: Codable, Equatable {
    public var maxResults: MaxResults?
    public var nextToken: NextToken?

    public init(maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
    }
}

public extension ListSecurityProfilesRequest {
    public func asIotModelListSecurityProfilesOperationInputQuery() -> ListSecurityProfilesOperationInputQuery {
        return ListSecurityProfilesOperationInputQuery(
            maxResults: maxResults,
            nextToken: nextToken)
    }
}

/**
 Structure to encode the query input for the ListSecurityProfilesForTarget
 operation.
 */
public struct ListSecurityProfilesForTargetOperationInputQuery: Codable, Equatable {
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var recursive: Recursive?
    public var securityProfileTargetArn: SecurityProfileTargetArn

    public init(maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                recursive: Recursive? = nil,
                securityProfileTargetArn: SecurityProfileTargetArn) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.recursive = recursive
        self.securityProfileTargetArn = securityProfileTargetArn
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case recursive
        case securityProfileTargetArn
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
    }
}

public extension ListSecurityProfilesForTargetRequest {
    public func asIotModelListSecurityProfilesForTargetOperationInputQuery() -> ListSecurityProfilesForTargetOperationInputQuery {
        return ListSecurityProfilesForTargetOperationInputQuery(
            maxResults: maxResults,
            nextToken: nextToken,
            recursive: recursive,
            securityProfileTargetArn: securityProfileTargetArn)
    }
}

/**
 Structure to encode the query input for the ListStreams
 operation.
 */
public struct ListStreamsOperationInputQuery: Codable, Equatable {
    public var ascendingOrder: AscendingOrder?
    public var maxResults: MaxResults?
    public var nextToken: NextToken?

    public init(ascendingOrder: AscendingOrder? = nil,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil) {
        self.ascendingOrder = ascendingOrder
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case ascendingOrder = "isAscendingOrder"
        case maxResults
        case nextToken
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
    }
}

public extension ListStreamsRequest {
    public func asIotModelListStreamsOperationInputQuery() -> ListStreamsOperationInputQuery {
        return ListStreamsOperationInputQuery(
            ascendingOrder: ascendingOrder,
            maxResults: maxResults,
            nextToken: nextToken)
    }
}

/**
 Structure to encode the query input for the ListTagsForResource
 operation.
 */
public struct ListTagsForResourceOperationInputQuery: Codable, Equatable {
    public var nextToken: NextToken?
    public var resourceArn: ResourceArn2

    public init(nextToken: NextToken? = nil,
                resourceArn: ResourceArn2) {
        self.nextToken = nextToken
        self.resourceArn = resourceArn
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case resourceArn
    }

    public func validate() throws {
    }
}

public extension ListTagsForResourceRequest {
    public func asIotModelListTagsForResourceOperationInputQuery() -> ListTagsForResourceOperationInputQuery {
        return ListTagsForResourceOperationInputQuery(
            nextToken: nextToken,
            resourceArn: resourceArn)
    }
}

/**
 Structure to encode the path input for the ListTargetsForPolicy
 operation.
 */
public struct ListTargetsForPolicyOperationInputPath: Codable, Equatable {
    public var policyName: PolicyName

    public init(policyName: PolicyName) {
        self.policyName = policyName
    }

    enum CodingKeys: String, CodingKey {
        case policyName
    }

    public func validate() throws {
        try policyName.validateAsPolicyName()
    }
}

public extension ListTargetsForPolicyRequest {
    public func asIotModelListTargetsForPolicyOperationInputPath() -> ListTargetsForPolicyOperationInputPath {
        return ListTargetsForPolicyOperationInputPath(
            policyName: policyName)
    }
}

/**
 Structure to encode the query input for the ListTargetsForPolicy
 operation.
 */
public struct ListTargetsForPolicyOperationInputQuery: Codable, Equatable {
    public var marker: Marker?
    public var pageSize: PageSize?

    public init(marker: Marker? = nil,
                pageSize: PageSize? = nil) {
        self.marker = marker
        self.pageSize = pageSize
    }

    enum CodingKeys: String, CodingKey {
        case marker
        case pageSize
    }

    public func validate() throws {
        try marker?.validateAsMarker()
        try pageSize?.validateAsPageSize()
    }
}

public extension ListTargetsForPolicyRequest {
    public func asIotModelListTargetsForPolicyOperationInputQuery() -> ListTargetsForPolicyOperationInputQuery {
        return ListTargetsForPolicyOperationInputQuery(
            marker: marker,
            pageSize: pageSize)
    }
}

/**
 Structure to encode the path input for the ListTargetsForSecurityProfile
 operation.
 */
public struct ListTargetsForSecurityProfileOperationInputPath: Codable, Equatable {
    public var securityProfileName: SecurityProfileName

    public init(securityProfileName: SecurityProfileName) {
        self.securityProfileName = securityProfileName
    }

    enum CodingKeys: String, CodingKey {
        case securityProfileName
    }

    public func validate() throws {
        try securityProfileName.validateAsSecurityProfileName()
    }
}

public extension ListTargetsForSecurityProfileRequest {
    public func asIotModelListTargetsForSecurityProfileOperationInputPath() -> ListTargetsForSecurityProfileOperationInputPath {
        return ListTargetsForSecurityProfileOperationInputPath(
            securityProfileName: securityProfileName)
    }
}

/**
 Structure to encode the query input for the ListTargetsForSecurityProfile
 operation.
 */
public struct ListTargetsForSecurityProfileOperationInputQuery: Codable, Equatable {
    public var maxResults: MaxResults?
    public var nextToken: NextToken?

    public init(maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
    }
}

public extension ListTargetsForSecurityProfileRequest {
    public func asIotModelListTargetsForSecurityProfileOperationInputQuery() -> ListTargetsForSecurityProfileOperationInputQuery {
        return ListTargetsForSecurityProfileOperationInputQuery(
            maxResults: maxResults,
            nextToken: nextToken)
    }
}

/**
 Structure to encode the query input for the ListThingGroups
 operation.
 */
public struct ListThingGroupsOperationInputQuery: Codable, Equatable {
    public var maxResults: RegistryMaxResults?
    public var namePrefixFilter: ThingGroupName?
    public var nextToken: NextToken?
    public var parentGroup: ThingGroupName?
    public var recursive: RecursiveWithoutDefault?

    public init(maxResults: RegistryMaxResults? = nil,
                namePrefixFilter: ThingGroupName? = nil,
                nextToken: NextToken? = nil,
                parentGroup: ThingGroupName? = nil,
                recursive: RecursiveWithoutDefault? = nil) {
        self.maxResults = maxResults
        self.namePrefixFilter = namePrefixFilter
        self.nextToken = nextToken
        self.parentGroup = parentGroup
        self.recursive = recursive
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case namePrefixFilter
        case nextToken
        case parentGroup
        case recursive
    }

    public func validate() throws {
        try maxResults?.validateAsRegistryMaxResults()
        try namePrefixFilter?.validateAsThingGroupName()
        try parentGroup?.validateAsThingGroupName()
    }
}

public extension ListThingGroupsRequest {
    public func asIotModelListThingGroupsOperationInputQuery() -> ListThingGroupsOperationInputQuery {
        return ListThingGroupsOperationInputQuery(
            maxResults: maxResults,
            namePrefixFilter: namePrefixFilter,
            nextToken: nextToken,
            parentGroup: parentGroup,
            recursive: recursive)
    }
}

/**
 Structure to encode the path input for the ListThingGroupsForThing
 operation.
 */
public struct ListThingGroupsForThingOperationInputPath: Codable, Equatable {
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

public extension ListThingGroupsForThingRequest {
    public func asIotModelListThingGroupsForThingOperationInputPath() -> ListThingGroupsForThingOperationInputPath {
        return ListThingGroupsForThingOperationInputPath(
            thingName: thingName)
    }
}

/**
 Structure to encode the query input for the ListThingGroupsForThing
 operation.
 */
public struct ListThingGroupsForThingOperationInputQuery: Codable, Equatable {
    public var maxResults: RegistryMaxResults?
    public var nextToken: NextToken?

    public init(maxResults: RegistryMaxResults? = nil,
                nextToken: NextToken? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
    }

    public func validate() throws {
        try maxResults?.validateAsRegistryMaxResults()
    }
}

public extension ListThingGroupsForThingRequest {
    public func asIotModelListThingGroupsForThingOperationInputQuery() -> ListThingGroupsForThingOperationInputQuery {
        return ListThingGroupsForThingOperationInputQuery(
            maxResults: maxResults,
            nextToken: nextToken)
    }
}

/**
 Structure to encode the path input for the ListThingPrincipals
 operation.
 */
public struct ListThingPrincipalsOperationInputPath: Codable, Equatable {
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

public extension ListThingPrincipalsRequest {
    public func asIotModelListThingPrincipalsOperationInputPath() -> ListThingPrincipalsOperationInputPath {
        return ListThingPrincipalsOperationInputPath(
            thingName: thingName)
    }
}

/**
 Structure to encode the path input for the ListThingRegistrationTaskReports
 operation.
 */
public struct ListThingRegistrationTaskReportsOperationInputPath: Codable, Equatable {
    public var taskId: TaskId

    public init(taskId: TaskId) {
        self.taskId = taskId
    }

    enum CodingKeys: String, CodingKey {
        case taskId
    }

    public func validate() throws {
        try taskId.validateAsTaskId()
    }
}

public extension ListThingRegistrationTaskReportsRequest {
    public func asIotModelListThingRegistrationTaskReportsOperationInputPath() -> ListThingRegistrationTaskReportsOperationInputPath {
        return ListThingRegistrationTaskReportsOperationInputPath(
            taskId: taskId)
    }
}

/**
 Structure to encode the query input for the ListThingRegistrationTaskReports
 operation.
 */
public struct ListThingRegistrationTaskReportsOperationInputQuery: Codable, Equatable {
    public var maxResults: RegistryMaxResults?
    public var nextToken: NextToken?
    public var reportType: ReportType

    public init(maxResults: RegistryMaxResults? = nil,
                nextToken: NextToken? = nil,
                reportType: ReportType) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.reportType = reportType
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case reportType
    }

    public func validate() throws {
        try maxResults?.validateAsRegistryMaxResults()
    }
}

public extension ListThingRegistrationTaskReportsRequest {
    public func asIotModelListThingRegistrationTaskReportsOperationInputQuery() -> ListThingRegistrationTaskReportsOperationInputQuery {
        return ListThingRegistrationTaskReportsOperationInputQuery(
            maxResults: maxResults,
            nextToken: nextToken,
            reportType: reportType)
    }
}

/**
 Structure to encode the query input for the ListThingRegistrationTasks
 operation.
 */
public struct ListThingRegistrationTasksOperationInputQuery: Codable, Equatable {
    public var maxResults: RegistryMaxResults?
    public var nextToken: NextToken?
    public var status: Status?

    public init(maxResults: RegistryMaxResults? = nil,
                nextToken: NextToken? = nil,
                status: Status? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case status
    }

    public func validate() throws {
        try maxResults?.validateAsRegistryMaxResults()
    }
}

public extension ListThingRegistrationTasksRequest {
    public func asIotModelListThingRegistrationTasksOperationInputQuery() -> ListThingRegistrationTasksOperationInputQuery {
        return ListThingRegistrationTasksOperationInputQuery(
            maxResults: maxResults,
            nextToken: nextToken,
            status: status)
    }
}

/**
 Structure to encode the query input for the ListThingTypes
 operation.
 */
public struct ListThingTypesOperationInputQuery: Codable, Equatable {
    public var maxResults: RegistryMaxResults?
    public var nextToken: NextToken?
    public var thingTypeName: ThingTypeName?

    public init(maxResults: RegistryMaxResults? = nil,
                nextToken: NextToken? = nil,
                thingTypeName: ThingTypeName? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.thingTypeName = thingTypeName
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case thingTypeName
    }

    public func validate() throws {
        try maxResults?.validateAsRegistryMaxResults()
        try thingTypeName?.validateAsThingTypeName()
    }
}

public extension ListThingTypesRequest {
    public func asIotModelListThingTypesOperationInputQuery() -> ListThingTypesOperationInputQuery {
        return ListThingTypesOperationInputQuery(
            maxResults: maxResults,
            nextToken: nextToken,
            thingTypeName: thingTypeName)
    }
}

/**
 Structure to encode the query input for the ListThings
 operation.
 */
public struct ListThingsOperationInputQuery: Codable, Equatable {
    public var attributeName: AttributeName?
    public var attributeValue: AttributeValue?
    public var maxResults: RegistryMaxResults?
    public var nextToken: NextToken?
    public var thingTypeName: ThingTypeName?

    public init(attributeName: AttributeName? = nil,
                attributeValue: AttributeValue? = nil,
                maxResults: RegistryMaxResults? = nil,
                nextToken: NextToken? = nil,
                thingTypeName: ThingTypeName? = nil) {
        self.attributeName = attributeName
        self.attributeValue = attributeValue
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.thingTypeName = thingTypeName
    }

    enum CodingKeys: String, CodingKey {
        case attributeName
        case attributeValue
        case maxResults
        case nextToken
        case thingTypeName
    }

    public func validate() throws {
        try attributeName?.validateAsAttributeName()
        try attributeValue?.validateAsAttributeValue()
        try maxResults?.validateAsRegistryMaxResults()
        try thingTypeName?.validateAsThingTypeName()
    }
}

public extension ListThingsRequest {
    public func asIotModelListThingsOperationInputQuery() -> ListThingsOperationInputQuery {
        return ListThingsOperationInputQuery(
            attributeName: attributeName,
            attributeValue: attributeValue,
            maxResults: maxResults,
            nextToken: nextToken,
            thingTypeName: thingTypeName)
    }
}

/**
 Structure to encode the path input for the ListThingsInBillingGroup
 operation.
 */
public struct ListThingsInBillingGroupOperationInputPath: Codable, Equatable {
    public var billingGroupName: BillingGroupName

    public init(billingGroupName: BillingGroupName) {
        self.billingGroupName = billingGroupName
    }

    enum CodingKeys: String, CodingKey {
        case billingGroupName
    }

    public func validate() throws {
        try billingGroupName.validateAsBillingGroupName()
    }
}

public extension ListThingsInBillingGroupRequest {
    public func asIotModelListThingsInBillingGroupOperationInputPath() -> ListThingsInBillingGroupOperationInputPath {
        return ListThingsInBillingGroupOperationInputPath(
            billingGroupName: billingGroupName)
    }
}

/**
 Structure to encode the query input for the ListThingsInBillingGroup
 operation.
 */
public struct ListThingsInBillingGroupOperationInputQuery: Codable, Equatable {
    public var maxResults: RegistryMaxResults?
    public var nextToken: NextToken?

    public init(maxResults: RegistryMaxResults? = nil,
                nextToken: NextToken? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
    }

    public func validate() throws {
        try maxResults?.validateAsRegistryMaxResults()
    }
}

public extension ListThingsInBillingGroupRequest {
    public func asIotModelListThingsInBillingGroupOperationInputQuery() -> ListThingsInBillingGroupOperationInputQuery {
        return ListThingsInBillingGroupOperationInputQuery(
            maxResults: maxResults,
            nextToken: nextToken)
    }
}

/**
 Structure to encode the path input for the ListThingsInThingGroup
 operation.
 */
public struct ListThingsInThingGroupOperationInputPath: Codable, Equatable {
    public var thingGroupName: ThingGroupName

    public init(thingGroupName: ThingGroupName) {
        self.thingGroupName = thingGroupName
    }

    enum CodingKeys: String, CodingKey {
        case thingGroupName
    }

    public func validate() throws {
        try thingGroupName.validateAsThingGroupName()
    }
}

public extension ListThingsInThingGroupRequest {
    public func asIotModelListThingsInThingGroupOperationInputPath() -> ListThingsInThingGroupOperationInputPath {
        return ListThingsInThingGroupOperationInputPath(
            thingGroupName: thingGroupName)
    }
}

/**
 Structure to encode the query input for the ListThingsInThingGroup
 operation.
 */
public struct ListThingsInThingGroupOperationInputQuery: Codable, Equatable {
    public var maxResults: RegistryMaxResults?
    public var nextToken: NextToken?
    public var recursive: Recursive?

    public init(maxResults: RegistryMaxResults? = nil,
                nextToken: NextToken? = nil,
                recursive: Recursive? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.recursive = recursive
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case recursive
    }

    public func validate() throws {
        try maxResults?.validateAsRegistryMaxResults()
    }
}

public extension ListThingsInThingGroupRequest {
    public func asIotModelListThingsInThingGroupOperationInputQuery() -> ListThingsInThingGroupOperationInputQuery {
        return ListThingsInThingGroupOperationInputQuery(
            maxResults: maxResults,
            nextToken: nextToken,
            recursive: recursive)
    }
}

/**
 Structure to encode the query input for the ListTopicRules
 operation.
 */
public struct ListTopicRulesOperationInputQuery: Codable, Equatable {
    public var maxResults: GEMaxResults?
    public var nextToken: NextToken?
    public var ruleDisabled: IsDisabled?
    public var topic: Topic?

    public init(maxResults: GEMaxResults? = nil,
                nextToken: NextToken? = nil,
                ruleDisabled: IsDisabled? = nil,
                topic: Topic? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.ruleDisabled = ruleDisabled
        self.topic = topic
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case ruleDisabled
        case topic
    }

    public func validate() throws {
        try maxResults?.validateAsGEMaxResults()
    }
}

public extension ListTopicRulesRequest {
    public func asIotModelListTopicRulesOperationInputQuery() -> ListTopicRulesOperationInputQuery {
        return ListTopicRulesOperationInputQuery(
            maxResults: maxResults,
            nextToken: nextToken,
            ruleDisabled: ruleDisabled,
            topic: topic)
    }
}

/**
 Structure to encode the query input for the ListV2LoggingLevels
 operation.
 */
public struct ListV2LoggingLevelsOperationInputQuery: Codable, Equatable {
    public var maxResults: SkyfallMaxResults?
    public var nextToken: NextToken?
    public var targetType: LogTargetType?

    public init(maxResults: SkyfallMaxResults? = nil,
                nextToken: NextToken? = nil,
                targetType: LogTargetType? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.targetType = targetType
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case targetType
    }

    public func validate() throws {
        try maxResults?.validateAsSkyfallMaxResults()
    }
}

public extension ListV2LoggingLevelsRequest {
    public func asIotModelListV2LoggingLevelsOperationInputQuery() -> ListV2LoggingLevelsOperationInputQuery {
        return ListV2LoggingLevelsOperationInputQuery(
            maxResults: maxResults,
            nextToken: nextToken,
            targetType: targetType)
    }
}

/**
 Structure to encode the query input for the ListViolationEvents
 operation.
 */
public struct ListViolationEventsOperationInputQuery: Codable, Equatable {
    public var endTime: Timestamp
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var securityProfileName: SecurityProfileName?
    public var startTime: Timestamp
    public var thingName: DeviceDefenderThingName?

    public init(endTime: Timestamp,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                securityProfileName: SecurityProfileName? = nil,
                startTime: Timestamp,
                thingName: DeviceDefenderThingName? = nil) {
        self.endTime = endTime
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.securityProfileName = securityProfileName
        self.startTime = startTime
        self.thingName = thingName
    }

    enum CodingKeys: String, CodingKey {
        case endTime
        case maxResults
        case nextToken
        case securityProfileName
        case startTime
        case thingName
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try securityProfileName?.validateAsSecurityProfileName()
        try thingName?.validateAsDeviceDefenderThingName()
    }
}

public extension ListViolationEventsRequest {
    public func asIotModelListViolationEventsOperationInputQuery() -> ListViolationEventsOperationInputQuery {
        return ListViolationEventsOperationInputQuery(
            endTime: endTime,
            maxResults: maxResults,
            nextToken: nextToken,
            securityProfileName: securityProfileName,
            startTime: startTime,
            thingName: thingName)
    }
}

/**
 Structure to encode the query input for the RegisterCACertificate
 operation.
 */
public struct RegisterCACertificateOperationInputQuery: Codable, Equatable {
    public var allowAutoRegistration: AllowAutoRegistration?
    public var setAsActive: SetAsActive?

    public init(allowAutoRegistration: AllowAutoRegistration? = nil,
                setAsActive: SetAsActive? = nil) {
        self.allowAutoRegistration = allowAutoRegistration
        self.setAsActive = setAsActive
    }

    enum CodingKeys: String, CodingKey {
        case allowAutoRegistration
        case setAsActive
    }

    public func validate() throws {
    }
}

public extension RegisterCACertificateRequest {
    public func asIotModelRegisterCACertificateOperationInputQuery() -> RegisterCACertificateOperationInputQuery {
        return RegisterCACertificateOperationInputQuery(
            allowAutoRegistration: allowAutoRegistration,
            setAsActive: setAsActive)
    }
}

/**
 Structure to encode the body input for the RegisterCACertificate
 operation.
 */
public struct RegisterCACertificateOperationInputBody: Codable, Equatable {
    public var caCertificate: CertificatePem
    public var registrationConfig: RegistrationConfig?
    public var verificationCertificate: CertificatePem

    public init(caCertificate: CertificatePem,
                registrationConfig: RegistrationConfig? = nil,
                verificationCertificate: CertificatePem) {
        self.caCertificate = caCertificate
        self.registrationConfig = registrationConfig
        self.verificationCertificate = verificationCertificate
    }

    enum CodingKeys: String, CodingKey {
        case caCertificate
        case registrationConfig
        case verificationCertificate
    }

    public func validate() throws {
        try caCertificate.validateAsCertificatePem()
        try registrationConfig?.validate()
        try verificationCertificate.validateAsCertificatePem()
    }
}

public extension RegisterCACertificateRequest {
    public func asIotModelRegisterCACertificateOperationInputBody() -> RegisterCACertificateOperationInputBody {
        return RegisterCACertificateOperationInputBody(
            caCertificate: caCertificate,
            registrationConfig: registrationConfig,
            verificationCertificate: verificationCertificate)
    }
}

/**
 Structure to encode the path input for the RejectCertificateTransfer
 operation.
 */
public struct RejectCertificateTransferOperationInputPath: Codable, Equatable {
    public var certificateId: CertificateId

    public init(certificateId: CertificateId) {
        self.certificateId = certificateId
    }

    enum CodingKeys: String, CodingKey {
        case certificateId
    }

    public func validate() throws {
        try certificateId.validateAsCertificateId()
    }
}

public extension RejectCertificateTransferRequest {
    public func asIotModelRejectCertificateTransferOperationInputPath() -> RejectCertificateTransferOperationInputPath {
        return RejectCertificateTransferOperationInputPath(
            certificateId: certificateId)
    }
}

/**
 Structure to encode the body input for the RejectCertificateTransfer
 operation.
 */
public struct RejectCertificateTransferOperationInputBody: Codable, Equatable {
    public var rejectReason: Message?

    public init(rejectReason: Message? = nil) {
        self.rejectReason = rejectReason
    }

    enum CodingKeys: String, CodingKey {
        case rejectReason
    }

    public func validate() throws {
        try rejectReason?.validateAsMessage()
    }
}

public extension RejectCertificateTransferRequest {
    public func asIotModelRejectCertificateTransferOperationInputBody() -> RejectCertificateTransferOperationInputBody {
        return RejectCertificateTransferOperationInputBody(
            rejectReason: rejectReason)
    }
}

/**
 Structure to encode the path input for the ReplaceTopicRule
 operation.
 */
public struct ReplaceTopicRuleOperationInputPath: Codable, Equatable {
    public var ruleName: RuleName

    public init(ruleName: RuleName) {
        self.ruleName = ruleName
    }

    enum CodingKeys: String, CodingKey {
        case ruleName
    }

    public func validate() throws {
        try ruleName.validateAsRuleName()
    }
}

public extension ReplaceTopicRuleRequest {
    public func asIotModelReplaceTopicRuleOperationInputPath() -> ReplaceTopicRuleOperationInputPath {
        return ReplaceTopicRuleOperationInputPath(
            ruleName: ruleName)
    }
}

/**
 Structure to encode the path input for the SetDefaultPolicyVersion
 operation.
 */
public struct SetDefaultPolicyVersionOperationInputPath: Codable, Equatable {
    public var policyName: PolicyName
    public var policyVersionId: PolicyVersionId

    public init(policyName: PolicyName,
                policyVersionId: PolicyVersionId) {
        self.policyName = policyName
        self.policyVersionId = policyVersionId
    }

    enum CodingKeys: String, CodingKey {
        case policyName
        case policyVersionId
    }

    public func validate() throws {
        try policyName.validateAsPolicyName()
        try policyVersionId.validateAsPolicyVersionId()
    }
}

public extension SetDefaultPolicyVersionRequest {
    public func asIotModelSetDefaultPolicyVersionOperationInputPath() -> SetDefaultPolicyVersionOperationInputPath {
        return SetDefaultPolicyVersionOperationInputPath(
            policyName: policyName,
            policyVersionId: policyVersionId)
    }
}

/**
 Structure to encode the path input for the StartAuditMitigationActionsTask
 operation.
 */
public struct StartAuditMitigationActionsTaskOperationInputPath: Codable, Equatable {
    public var taskId: AuditMitigationActionsTaskId

    public init(taskId: AuditMitigationActionsTaskId) {
        self.taskId = taskId
    }

    enum CodingKeys: String, CodingKey {
        case taskId
    }

    public func validate() throws {
        try taskId.validateAsAuditMitigationActionsTaskId()
    }
}

public extension StartAuditMitigationActionsTaskRequest {
    public func asIotModelStartAuditMitigationActionsTaskOperationInputPath() -> StartAuditMitigationActionsTaskOperationInputPath {
        return StartAuditMitigationActionsTaskOperationInputPath(
            taskId: taskId)
    }
}

/**
 Structure to encode the body input for the StartAuditMitigationActionsTask
 operation.
 */
public struct StartAuditMitigationActionsTaskOperationInputBody: Codable, Equatable {
    public var auditCheckToActionsMapping: AuditCheckToActionsMapping
    public var clientRequestToken: ClientRequestToken
    public var target: AuditMitigationActionsTaskTarget

    public init(auditCheckToActionsMapping: AuditCheckToActionsMapping,
                clientRequestToken: ClientRequestToken,
                target: AuditMitigationActionsTaskTarget) {
        self.auditCheckToActionsMapping = auditCheckToActionsMapping
        self.clientRequestToken = clientRequestToken
        self.target = target
    }

    enum CodingKeys: String, CodingKey {
        case auditCheckToActionsMapping
        case clientRequestToken
        case target
    }

    public func validate() throws {
        try clientRequestToken.validateAsClientRequestToken()
        try target.validate()
    }
}

public extension StartAuditMitigationActionsTaskRequest {
    public func asIotModelStartAuditMitigationActionsTaskOperationInputBody() -> StartAuditMitigationActionsTaskOperationInputBody {
        return StartAuditMitigationActionsTaskOperationInputBody(
            auditCheckToActionsMapping: auditCheckToActionsMapping,
            clientRequestToken: clientRequestToken,
            target: target)
    }
}

/**
 Structure to encode the path input for the StopThingRegistrationTask
 operation.
 */
public struct StopThingRegistrationTaskOperationInputPath: Codable, Equatable {
    public var taskId: TaskId

    public init(taskId: TaskId) {
        self.taskId = taskId
    }

    enum CodingKeys: String, CodingKey {
        case taskId
    }

    public func validate() throws {
        try taskId.validateAsTaskId()
    }
}

public extension StopThingRegistrationTaskRequest {
    public func asIotModelStopThingRegistrationTaskOperationInputPath() -> StopThingRegistrationTaskOperationInputPath {
        return StopThingRegistrationTaskOperationInputPath(
            taskId: taskId)
    }
}

/**
 Structure to encode the query input for the TestAuthorization
 operation.
 */
public struct TestAuthorizationOperationInputQuery: Codable, Equatable {
    public var clientId: ClientId?

    public init(clientId: ClientId? = nil) {
        self.clientId = clientId
    }

    enum CodingKeys: String, CodingKey {
        case clientId
    }

    public func validate() throws {
    }
}

public extension TestAuthorizationRequest {
    public func asIotModelTestAuthorizationOperationInputQuery() -> TestAuthorizationOperationInputQuery {
        return TestAuthorizationOperationInputQuery(
            clientId: clientId)
    }
}

/**
 Structure to encode the body input for the TestAuthorization
 operation.
 */
public struct TestAuthorizationOperationInputBody: Codable, Equatable {
    public var authInfos: AuthInfos
    public var cognitoIdentityPoolId: CognitoIdentityPoolId?
    public var policyNamesToAdd: PolicyNames?
    public var policyNamesToSkip: PolicyNames?
    public var principal: Principal?

    public init(authInfos: AuthInfos,
                cognitoIdentityPoolId: CognitoIdentityPoolId? = nil,
                policyNamesToAdd: PolicyNames? = nil,
                policyNamesToSkip: PolicyNames? = nil,
                principal: Principal? = nil) {
        self.authInfos = authInfos
        self.cognitoIdentityPoolId = cognitoIdentityPoolId
        self.policyNamesToAdd = policyNamesToAdd
        self.policyNamesToSkip = policyNamesToSkip
        self.principal = principal
    }

    enum CodingKeys: String, CodingKey {
        case authInfos
        case cognitoIdentityPoolId
        case policyNamesToAdd
        case policyNamesToSkip
        case principal
    }

    public func validate() throws {
        try authInfos.validateAsAuthInfos()
    }
}

public extension TestAuthorizationRequest {
    public func asIotModelTestAuthorizationOperationInputBody() -> TestAuthorizationOperationInputBody {
        return TestAuthorizationOperationInputBody(
            authInfos: authInfos,
            cognitoIdentityPoolId: cognitoIdentityPoolId,
            policyNamesToAdd: policyNamesToAdd,
            policyNamesToSkip: policyNamesToSkip,
            principal: principal)
    }
}

/**
 Structure to encode the path input for the TestInvokeAuthorizer
 operation.
 */
public struct TestInvokeAuthorizerOperationInputPath: Codable, Equatable {
    public var authorizerName: AuthorizerName

    public init(authorizerName: AuthorizerName) {
        self.authorizerName = authorizerName
    }

    enum CodingKeys: String, CodingKey {
        case authorizerName
    }

    public func validate() throws {
        try authorizerName.validateAsAuthorizerName()
    }
}

public extension TestInvokeAuthorizerRequest {
    public func asIotModelTestInvokeAuthorizerOperationInputPath() -> TestInvokeAuthorizerOperationInputPath {
        return TestInvokeAuthorizerOperationInputPath(
            authorizerName: authorizerName)
    }
}

/**
 Structure to encode the body input for the TestInvokeAuthorizer
 operation.
 */
public struct TestInvokeAuthorizerOperationInputBody: Codable, Equatable {
    public var token: Token
    public var tokenSignature: TokenSignature

    public init(token: Token,
                tokenSignature: TokenSignature) {
        self.token = token
        self.tokenSignature = tokenSignature
    }

    enum CodingKeys: String, CodingKey {
        case token
        case tokenSignature
    }

    public func validate() throws {
        try token.validateAsToken()
        try tokenSignature.validateAsTokenSignature()
    }
}

public extension TestInvokeAuthorizerRequest {
    public func asIotModelTestInvokeAuthorizerOperationInputBody() -> TestInvokeAuthorizerOperationInputBody {
        return TestInvokeAuthorizerOperationInputBody(
            token: token,
            tokenSignature: tokenSignature)
    }
}

/**
 Structure to encode the path input for the TransferCertificate
 operation.
 */
public struct TransferCertificateOperationInputPath: Codable, Equatable {
    public var certificateId: CertificateId

    public init(certificateId: CertificateId) {
        self.certificateId = certificateId
    }

    enum CodingKeys: String, CodingKey {
        case certificateId
    }

    public func validate() throws {
        try certificateId.validateAsCertificateId()
    }
}

public extension TransferCertificateRequest {
    public func asIotModelTransferCertificateOperationInputPath() -> TransferCertificateOperationInputPath {
        return TransferCertificateOperationInputPath(
            certificateId: certificateId)
    }
}

/**
 Structure to encode the query input for the TransferCertificate
 operation.
 */
public struct TransferCertificateOperationInputQuery: Codable, Equatable {
    public var targetAwsAccount: AwsAccountId

    public init(targetAwsAccount: AwsAccountId) {
        self.targetAwsAccount = targetAwsAccount
    }

    enum CodingKeys: String, CodingKey {
        case targetAwsAccount
    }

    public func validate() throws {
        try targetAwsAccount.validateAsAwsAccountId()
    }
}

public extension TransferCertificateRequest {
    public func asIotModelTransferCertificateOperationInputQuery() -> TransferCertificateOperationInputQuery {
        return TransferCertificateOperationInputQuery(
            targetAwsAccount: targetAwsAccount)
    }
}

/**
 Structure to encode the body input for the TransferCertificate
 operation.
 */
public struct TransferCertificateOperationInputBody: Codable, Equatable {
    public var transferMessage: Message?

    public init(transferMessage: Message? = nil) {
        self.transferMessage = transferMessage
    }

    enum CodingKeys: String, CodingKey {
        case transferMessage
    }

    public func validate() throws {
        try transferMessage?.validateAsMessage()
    }
}

public extension TransferCertificateRequest {
    public func asIotModelTransferCertificateOperationInputBody() -> TransferCertificateOperationInputBody {
        return TransferCertificateOperationInputBody(
            transferMessage: transferMessage)
    }
}

/**
 Structure to encode the path input for the UpdateAuthorizer
 operation.
 */
public struct UpdateAuthorizerOperationInputPath: Codable, Equatable {
    public var authorizerName: AuthorizerName

    public init(authorizerName: AuthorizerName) {
        self.authorizerName = authorizerName
    }

    enum CodingKeys: String, CodingKey {
        case authorizerName
    }

    public func validate() throws {
        try authorizerName.validateAsAuthorizerName()
    }
}

public extension UpdateAuthorizerRequest {
    public func asIotModelUpdateAuthorizerOperationInputPath() -> UpdateAuthorizerOperationInputPath {
        return UpdateAuthorizerOperationInputPath(
            authorizerName: authorizerName)
    }
}

/**
 Structure to encode the body input for the UpdateAuthorizer
 operation.
 */
public struct UpdateAuthorizerOperationInputBody: Codable, Equatable {
    public var authorizerFunctionArn: AuthorizerFunctionArn?
    public var status: AuthorizerStatus?
    public var tokenKeyName: TokenKeyName?
    public var tokenSigningPublicKeys: PublicKeyMap?

    public init(authorizerFunctionArn: AuthorizerFunctionArn? = nil,
                status: AuthorizerStatus? = nil,
                tokenKeyName: TokenKeyName? = nil,
                tokenSigningPublicKeys: PublicKeyMap? = nil) {
        self.authorizerFunctionArn = authorizerFunctionArn
        self.status = status
        self.tokenKeyName = tokenKeyName
        self.tokenSigningPublicKeys = tokenSigningPublicKeys
    }

    enum CodingKeys: String, CodingKey {
        case authorizerFunctionArn
        case status
        case tokenKeyName
        case tokenSigningPublicKeys
    }

    public func validate() throws {
        try tokenKeyName?.validateAsTokenKeyName()
    }
}

public extension UpdateAuthorizerRequest {
    public func asIotModelUpdateAuthorizerOperationInputBody() -> UpdateAuthorizerOperationInputBody {
        return UpdateAuthorizerOperationInputBody(
            authorizerFunctionArn: authorizerFunctionArn,
            status: status,
            tokenKeyName: tokenKeyName,
            tokenSigningPublicKeys: tokenSigningPublicKeys)
    }
}

/**
 Structure to encode the path input for the UpdateBillingGroup
 operation.
 */
public struct UpdateBillingGroupOperationInputPath: Codable, Equatable {
    public var billingGroupName: BillingGroupName

    public init(billingGroupName: BillingGroupName) {
        self.billingGroupName = billingGroupName
    }

    enum CodingKeys: String, CodingKey {
        case billingGroupName
    }

    public func validate() throws {
        try billingGroupName.validateAsBillingGroupName()
    }
}

public extension UpdateBillingGroupRequest {
    public func asIotModelUpdateBillingGroupOperationInputPath() -> UpdateBillingGroupOperationInputPath {
        return UpdateBillingGroupOperationInputPath(
            billingGroupName: billingGroupName)
    }
}

/**
 Structure to encode the body input for the UpdateBillingGroup
 operation.
 */
public struct UpdateBillingGroupOperationInputBody: Codable, Equatable {
    public var billingGroupProperties: BillingGroupProperties
    public var expectedVersion: OptionalVersion?

    public init(billingGroupProperties: BillingGroupProperties,
                expectedVersion: OptionalVersion? = nil) {
        self.billingGroupProperties = billingGroupProperties
        self.expectedVersion = expectedVersion
    }

    enum CodingKeys: String, CodingKey {
        case billingGroupProperties
        case expectedVersion
    }

    public func validate() throws {
        try billingGroupProperties.validate()
    }
}

public extension UpdateBillingGroupRequest {
    public func asIotModelUpdateBillingGroupOperationInputBody() -> UpdateBillingGroupOperationInputBody {
        return UpdateBillingGroupOperationInputBody(
            billingGroupProperties: billingGroupProperties,
            expectedVersion: expectedVersion)
    }
}

/**
 Structure to encode the path input for the UpdateCACertificate
 operation.
 */
public struct UpdateCACertificateOperationInputPath: Codable, Equatable {
    public var certificateId: CertificateId

    public init(certificateId: CertificateId) {
        self.certificateId = certificateId
    }

    enum CodingKeys: String, CodingKey {
        case certificateId = "caCertificateId"
    }

    public func validate() throws {
        try certificateId.validateAsCertificateId()
    }
}

public extension UpdateCACertificateRequest {
    public func asIotModelUpdateCACertificateOperationInputPath() -> UpdateCACertificateOperationInputPath {
        return UpdateCACertificateOperationInputPath(
            certificateId: certificateId)
    }
}

/**
 Structure to encode the query input for the UpdateCACertificate
 operation.
 */
public struct UpdateCACertificateOperationInputQuery: Codable, Equatable {
    public var newAutoRegistrationStatus: AutoRegistrationStatus?
    public var newStatus: CACertificateStatus?

    public init(newAutoRegistrationStatus: AutoRegistrationStatus? = nil,
                newStatus: CACertificateStatus? = nil) {
        self.newAutoRegistrationStatus = newAutoRegistrationStatus
        self.newStatus = newStatus
    }

    enum CodingKeys: String, CodingKey {
        case newAutoRegistrationStatus
        case newStatus
    }

    public func validate() throws {
    }
}

public extension UpdateCACertificateRequest {
    public func asIotModelUpdateCACertificateOperationInputQuery() -> UpdateCACertificateOperationInputQuery {
        return UpdateCACertificateOperationInputQuery(
            newAutoRegistrationStatus: newAutoRegistrationStatus,
            newStatus: newStatus)
    }
}

/**
 Structure to encode the body input for the UpdateCACertificate
 operation.
 */
public struct UpdateCACertificateOperationInputBody: Codable, Equatable {
    public var registrationConfig: RegistrationConfig?
    public var removeAutoRegistration: RemoveAutoRegistration?

    public init(registrationConfig: RegistrationConfig? = nil,
                removeAutoRegistration: RemoveAutoRegistration? = nil) {
        self.registrationConfig = registrationConfig
        self.removeAutoRegistration = removeAutoRegistration
    }

    enum CodingKeys: String, CodingKey {
        case registrationConfig
        case removeAutoRegistration
    }

    public func validate() throws {
        try registrationConfig?.validate()
    }
}

public extension UpdateCACertificateRequest {
    public func asIotModelUpdateCACertificateOperationInputBody() -> UpdateCACertificateOperationInputBody {
        return UpdateCACertificateOperationInputBody(
            registrationConfig: registrationConfig,
            removeAutoRegistration: removeAutoRegistration)
    }
}

/**
 Structure to encode the path input for the UpdateCertificate
 operation.
 */
public struct UpdateCertificateOperationInputPath: Codable, Equatable {
    public var certificateId: CertificateId

    public init(certificateId: CertificateId) {
        self.certificateId = certificateId
    }

    enum CodingKeys: String, CodingKey {
        case certificateId
    }

    public func validate() throws {
        try certificateId.validateAsCertificateId()
    }
}

public extension UpdateCertificateRequest {
    public func asIotModelUpdateCertificateOperationInputPath() -> UpdateCertificateOperationInputPath {
        return UpdateCertificateOperationInputPath(
            certificateId: certificateId)
    }
}

/**
 Structure to encode the query input for the UpdateCertificate
 operation.
 */
public struct UpdateCertificateOperationInputQuery: Codable, Equatable {
    public var newStatus: CertificateStatus

    public init(newStatus: CertificateStatus) {
        self.newStatus = newStatus
    }

    enum CodingKeys: String, CodingKey {
        case newStatus
    }

    public func validate() throws {
    }
}

public extension UpdateCertificateRequest {
    public func asIotModelUpdateCertificateOperationInputQuery() -> UpdateCertificateOperationInputQuery {
        return UpdateCertificateOperationInputQuery(
            newStatus: newStatus)
    }
}

/**
 Structure to encode the path input for the UpdateDynamicThingGroup
 operation.
 */
public struct UpdateDynamicThingGroupOperationInputPath: Codable, Equatable {
    public var thingGroupName: ThingGroupName

    public init(thingGroupName: ThingGroupName) {
        self.thingGroupName = thingGroupName
    }

    enum CodingKeys: String, CodingKey {
        case thingGroupName
    }

    public func validate() throws {
        try thingGroupName.validateAsThingGroupName()
    }
}

public extension UpdateDynamicThingGroupRequest {
    public func asIotModelUpdateDynamicThingGroupOperationInputPath() -> UpdateDynamicThingGroupOperationInputPath {
        return UpdateDynamicThingGroupOperationInputPath(
            thingGroupName: thingGroupName)
    }
}

/**
 Structure to encode the body input for the UpdateDynamicThingGroup
 operation.
 */
public struct UpdateDynamicThingGroupOperationInputBody: Codable, Equatable {
    public var expectedVersion: OptionalVersion?
    public var indexName: IndexName?
    public var queryString: QueryString?
    public var queryVersion: QueryVersion?
    public var thingGroupProperties: ThingGroupProperties

    public init(expectedVersion: OptionalVersion? = nil,
                indexName: IndexName? = nil,
                queryString: QueryString? = nil,
                queryVersion: QueryVersion? = nil,
                thingGroupProperties: ThingGroupProperties) {
        self.expectedVersion = expectedVersion
        self.indexName = indexName
        self.queryString = queryString
        self.queryVersion = queryVersion
        self.thingGroupProperties = thingGroupProperties
    }

    enum CodingKeys: String, CodingKey {
        case expectedVersion
        case indexName
        case queryString
        case queryVersion
        case thingGroupProperties
    }

    public func validate() throws {
        try indexName?.validateAsIndexName()
        try queryString?.validateAsQueryString()
        try thingGroupProperties.validate()
    }
}

public extension UpdateDynamicThingGroupRequest {
    public func asIotModelUpdateDynamicThingGroupOperationInputBody() -> UpdateDynamicThingGroupOperationInputBody {
        return UpdateDynamicThingGroupOperationInputBody(
            expectedVersion: expectedVersion,
            indexName: indexName,
            queryString: queryString,
            queryVersion: queryVersion,
            thingGroupProperties: thingGroupProperties)
    }
}

/**
 Structure to encode the path input for the UpdateJob
 operation.
 */
public struct UpdateJobOperationInputPath: Codable, Equatable {
    public var jobId: JobId

    public init(jobId: JobId) {
        self.jobId = jobId
    }

    enum CodingKeys: String, CodingKey {
        case jobId
    }

    public func validate() throws {
        try jobId.validateAsJobId()
    }
}

public extension UpdateJobRequest {
    public func asIotModelUpdateJobOperationInputPath() -> UpdateJobOperationInputPath {
        return UpdateJobOperationInputPath(
            jobId: jobId)
    }
}

/**
 Structure to encode the body input for the UpdateJob
 operation.
 */
public struct UpdateJobOperationInputBody: Codable, Equatable {
    public var abortConfig: AbortConfig?
    public var description: JobDescription?
    public var jobExecutionsRolloutConfig: JobExecutionsRolloutConfig?
    public var presignedUrlConfig: PresignedUrlConfig?
    public var timeoutConfig: TimeoutConfig?

    public init(abortConfig: AbortConfig? = nil,
                description: JobDescription? = nil,
                jobExecutionsRolloutConfig: JobExecutionsRolloutConfig? = nil,
                presignedUrlConfig: PresignedUrlConfig? = nil,
                timeoutConfig: TimeoutConfig? = nil) {
        self.abortConfig = abortConfig
        self.description = description
        self.jobExecutionsRolloutConfig = jobExecutionsRolloutConfig
        self.presignedUrlConfig = presignedUrlConfig
        self.timeoutConfig = timeoutConfig
    }

    enum CodingKeys: String, CodingKey {
        case abortConfig
        case description
        case jobExecutionsRolloutConfig
        case presignedUrlConfig
        case timeoutConfig
    }

    public func validate() throws {
        try abortConfig?.validate()
        try description?.validateAsJobDescription()
        try jobExecutionsRolloutConfig?.validate()
        try presignedUrlConfig?.validate()
        try timeoutConfig?.validate()
    }
}

public extension UpdateJobRequest {
    public func asIotModelUpdateJobOperationInputBody() -> UpdateJobOperationInputBody {
        return UpdateJobOperationInputBody(
            abortConfig: abortConfig,
            description: description,
            jobExecutionsRolloutConfig: jobExecutionsRolloutConfig,
            presignedUrlConfig: presignedUrlConfig,
            timeoutConfig: timeoutConfig)
    }
}

/**
 Structure to encode the path input for the UpdateMitigationAction
 operation.
 */
public struct UpdateMitigationActionOperationInputPath: Codable, Equatable {
    public var actionName: MitigationActionName

    public init(actionName: MitigationActionName) {
        self.actionName = actionName
    }

    enum CodingKeys: String, CodingKey {
        case actionName
    }

    public func validate() throws {
        try actionName.validateAsMitigationActionName()
    }
}

public extension UpdateMitigationActionRequest {
    public func asIotModelUpdateMitigationActionOperationInputPath() -> UpdateMitigationActionOperationInputPath {
        return UpdateMitigationActionOperationInputPath(
            actionName: actionName)
    }
}

/**
 Structure to encode the body input for the UpdateMitigationAction
 operation.
 */
public struct UpdateMitigationActionOperationInputBody: Codable, Equatable {
    public var actionParams: MitigationActionParams?
    public var roleArn: RoleArn?

    public init(actionParams: MitigationActionParams? = nil,
                roleArn: RoleArn? = nil) {
        self.actionParams = actionParams
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case actionParams
        case roleArn
    }

    public func validate() throws {
        try actionParams?.validate()
        try roleArn?.validateAsRoleArn()
    }
}

public extension UpdateMitigationActionRequest {
    public func asIotModelUpdateMitigationActionOperationInputBody() -> UpdateMitigationActionOperationInputBody {
        return UpdateMitigationActionOperationInputBody(
            actionParams: actionParams,
            roleArn: roleArn)
    }
}

/**
 Structure to encode the path input for the UpdateRoleAlias
 operation.
 */
public struct UpdateRoleAliasOperationInputPath: Codable, Equatable {
    public var roleAlias: RoleAlias

    public init(roleAlias: RoleAlias) {
        self.roleAlias = roleAlias
    }

    enum CodingKeys: String, CodingKey {
        case roleAlias
    }

    public func validate() throws {
        try roleAlias.validateAsRoleAlias()
    }
}

public extension UpdateRoleAliasRequest {
    public func asIotModelUpdateRoleAliasOperationInputPath() -> UpdateRoleAliasOperationInputPath {
        return UpdateRoleAliasOperationInputPath(
            roleAlias: roleAlias)
    }
}

/**
 Structure to encode the body input for the UpdateRoleAlias
 operation.
 */
public struct UpdateRoleAliasOperationInputBody: Codable, Equatable {
    public var credentialDurationSeconds: CredentialDurationSeconds?
    public var roleArn: RoleArn?

    public init(credentialDurationSeconds: CredentialDurationSeconds? = nil,
                roleArn: RoleArn? = nil) {
        self.credentialDurationSeconds = credentialDurationSeconds
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case credentialDurationSeconds
        case roleArn
    }

    public func validate() throws {
        try credentialDurationSeconds?.validateAsCredentialDurationSeconds()
        try roleArn?.validateAsRoleArn()
    }
}

public extension UpdateRoleAliasRequest {
    public func asIotModelUpdateRoleAliasOperationInputBody() -> UpdateRoleAliasOperationInputBody {
        return UpdateRoleAliasOperationInputBody(
            credentialDurationSeconds: credentialDurationSeconds,
            roleArn: roleArn)
    }
}

/**
 Structure to encode the path input for the UpdateScheduledAudit
 operation.
 */
public struct UpdateScheduledAuditOperationInputPath: Codable, Equatable {
    public var scheduledAuditName: ScheduledAuditName

    public init(scheduledAuditName: ScheduledAuditName) {
        self.scheduledAuditName = scheduledAuditName
    }

    enum CodingKeys: String, CodingKey {
        case scheduledAuditName
    }

    public func validate() throws {
        try scheduledAuditName.validateAsScheduledAuditName()
    }
}

public extension UpdateScheduledAuditRequest {
    public func asIotModelUpdateScheduledAuditOperationInputPath() -> UpdateScheduledAuditOperationInputPath {
        return UpdateScheduledAuditOperationInputPath(
            scheduledAuditName: scheduledAuditName)
    }
}

/**
 Structure to encode the body input for the UpdateScheduledAudit
 operation.
 */
public struct UpdateScheduledAuditOperationInputBody: Codable, Equatable {
    public var dayOfMonth: DayOfMonth?
    public var dayOfWeek: DayOfWeek?
    public var frequency: AuditFrequency?
    public var targetCheckNames: TargetAuditCheckNames?

    public init(dayOfMonth: DayOfMonth? = nil,
                dayOfWeek: DayOfWeek? = nil,
                frequency: AuditFrequency? = nil,
                targetCheckNames: TargetAuditCheckNames? = nil) {
        self.dayOfMonth = dayOfMonth
        self.dayOfWeek = dayOfWeek
        self.frequency = frequency
        self.targetCheckNames = targetCheckNames
    }

    enum CodingKeys: String, CodingKey {
        case dayOfMonth
        case dayOfWeek
        case frequency
        case targetCheckNames
    }

    public func validate() throws {
        try dayOfMonth?.validateAsDayOfMonth()
    }
}

public extension UpdateScheduledAuditRequest {
    public func asIotModelUpdateScheduledAuditOperationInputBody() -> UpdateScheduledAuditOperationInputBody {
        return UpdateScheduledAuditOperationInputBody(
            dayOfMonth: dayOfMonth,
            dayOfWeek: dayOfWeek,
            frequency: frequency,
            targetCheckNames: targetCheckNames)
    }
}

/**
 Structure to encode the path input for the UpdateSecurityProfile
 operation.
 */
public struct UpdateSecurityProfileOperationInputPath: Codable, Equatable {
    public var securityProfileName: SecurityProfileName

    public init(securityProfileName: SecurityProfileName) {
        self.securityProfileName = securityProfileName
    }

    enum CodingKeys: String, CodingKey {
        case securityProfileName
    }

    public func validate() throws {
        try securityProfileName.validateAsSecurityProfileName()
    }
}

public extension UpdateSecurityProfileRequest {
    public func asIotModelUpdateSecurityProfileOperationInputPath() -> UpdateSecurityProfileOperationInputPath {
        return UpdateSecurityProfileOperationInputPath(
            securityProfileName: securityProfileName)
    }
}

/**
 Structure to encode the query input for the UpdateSecurityProfile
 operation.
 */
public struct UpdateSecurityProfileOperationInputQuery: Codable, Equatable {
    public var expectedVersion: OptionalVersion?

    public init(expectedVersion: OptionalVersion? = nil) {
        self.expectedVersion = expectedVersion
    }

    enum CodingKeys: String, CodingKey {
        case expectedVersion
    }

    public func validate() throws {
    }
}

public extension UpdateSecurityProfileRequest {
    public func asIotModelUpdateSecurityProfileOperationInputQuery() -> UpdateSecurityProfileOperationInputQuery {
        return UpdateSecurityProfileOperationInputQuery(
            expectedVersion: expectedVersion)
    }
}

/**
 Structure to encode the body input for the UpdateSecurityProfile
 operation.
 */
public struct UpdateSecurityProfileOperationInputBody: Codable, Equatable {
    public var additionalMetricsToRetain: AdditionalMetricsToRetainList?
    public var alertTargets: AlertTargets?
    public var behaviors: Behaviors?
    public var deleteAdditionalMetricsToRetain: DeleteAdditionalMetricsToRetain?
    public var deleteAlertTargets: DeleteAlertTargets?
    public var deleteBehaviors: DeleteBehaviors?
    public var securityProfileDescription: SecurityProfileDescription?

    public init(additionalMetricsToRetain: AdditionalMetricsToRetainList? = nil,
                alertTargets: AlertTargets? = nil,
                behaviors: Behaviors? = nil,
                deleteAdditionalMetricsToRetain: DeleteAdditionalMetricsToRetain? = nil,
                deleteAlertTargets: DeleteAlertTargets? = nil,
                deleteBehaviors: DeleteBehaviors? = nil,
                securityProfileDescription: SecurityProfileDescription? = nil) {
        self.additionalMetricsToRetain = additionalMetricsToRetain
        self.alertTargets = alertTargets
        self.behaviors = behaviors
        self.deleteAdditionalMetricsToRetain = deleteAdditionalMetricsToRetain
        self.deleteAlertTargets = deleteAlertTargets
        self.deleteBehaviors = deleteBehaviors
        self.securityProfileDescription = securityProfileDescription
    }

    enum CodingKeys: String, CodingKey {
        case additionalMetricsToRetain
        case alertTargets
        case behaviors
        case deleteAdditionalMetricsToRetain
        case deleteAlertTargets
        case deleteBehaviors
        case securityProfileDescription
    }

    public func validate() throws {
        try behaviors?.validateAsBehaviors()
        try securityProfileDescription?.validateAsSecurityProfileDescription()
    }
}

public extension UpdateSecurityProfileRequest {
    public func asIotModelUpdateSecurityProfileOperationInputBody() -> UpdateSecurityProfileOperationInputBody {
        return UpdateSecurityProfileOperationInputBody(
            additionalMetricsToRetain: additionalMetricsToRetain,
            alertTargets: alertTargets,
            behaviors: behaviors,
            deleteAdditionalMetricsToRetain: deleteAdditionalMetricsToRetain,
            deleteAlertTargets: deleteAlertTargets,
            deleteBehaviors: deleteBehaviors,
            securityProfileDescription: securityProfileDescription)
    }
}

/**
 Structure to encode the path input for the UpdateStream
 operation.
 */
public struct UpdateStreamOperationInputPath: Codable, Equatable {
    public var streamId: StreamId

    public init(streamId: StreamId) {
        self.streamId = streamId
    }

    enum CodingKeys: String, CodingKey {
        case streamId
    }

    public func validate() throws {
        try streamId.validateAsStreamId()
    }
}

public extension UpdateStreamRequest {
    public func asIotModelUpdateStreamOperationInputPath() -> UpdateStreamOperationInputPath {
        return UpdateStreamOperationInputPath(
            streamId: streamId)
    }
}

/**
 Structure to encode the body input for the UpdateStream
 operation.
 */
public struct UpdateStreamOperationInputBody: Codable, Equatable {
    public var description: StreamDescription?
    public var files: StreamFiles?
    public var roleArn: RoleArn?

    public init(description: StreamDescription? = nil,
                files: StreamFiles? = nil,
                roleArn: RoleArn? = nil) {
        self.description = description
        self.files = files
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case description
        case files
        case roleArn
    }

    public func validate() throws {
        try description?.validateAsStreamDescription()
        try files?.validateAsStreamFiles()
        try roleArn?.validateAsRoleArn()
    }
}

public extension UpdateStreamRequest {
    public func asIotModelUpdateStreamOperationInputBody() -> UpdateStreamOperationInputBody {
        return UpdateStreamOperationInputBody(
            description: description,
            files: files,
            roleArn: roleArn)
    }
}

/**
 Structure to encode the path input for the UpdateThing
 operation.
 */
public struct UpdateThingOperationInputPath: Codable, Equatable {
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

public extension UpdateThingRequest {
    public func asIotModelUpdateThingOperationInputPath() -> UpdateThingOperationInputPath {
        return UpdateThingOperationInputPath(
            thingName: thingName)
    }
}

/**
 Structure to encode the body input for the UpdateThing
 operation.
 */
public struct UpdateThingOperationInputBody: Codable, Equatable {
    public var attributePayload: AttributePayload?
    public var expectedVersion: OptionalVersion?
    public var removeThingType: RemoveThingType?
    public var thingTypeName: ThingTypeName?

    public init(attributePayload: AttributePayload? = nil,
                expectedVersion: OptionalVersion? = nil,
                removeThingType: RemoveThingType? = nil,
                thingTypeName: ThingTypeName? = nil) {
        self.attributePayload = attributePayload
        self.expectedVersion = expectedVersion
        self.removeThingType = removeThingType
        self.thingTypeName = thingTypeName
    }

    enum CodingKeys: String, CodingKey {
        case attributePayload
        case expectedVersion
        case removeThingType
        case thingTypeName
    }

    public func validate() throws {
        try attributePayload?.validate()
        try thingTypeName?.validateAsThingTypeName()
    }
}

public extension UpdateThingRequest {
    public func asIotModelUpdateThingOperationInputBody() -> UpdateThingOperationInputBody {
        return UpdateThingOperationInputBody(
            attributePayload: attributePayload,
            expectedVersion: expectedVersion,
            removeThingType: removeThingType,
            thingTypeName: thingTypeName)
    }
}

/**
 Structure to encode the path input for the UpdateThingGroup
 operation.
 */
public struct UpdateThingGroupOperationInputPath: Codable, Equatable {
    public var thingGroupName: ThingGroupName

    public init(thingGroupName: ThingGroupName) {
        self.thingGroupName = thingGroupName
    }

    enum CodingKeys: String, CodingKey {
        case thingGroupName
    }

    public func validate() throws {
        try thingGroupName.validateAsThingGroupName()
    }
}

public extension UpdateThingGroupRequest {
    public func asIotModelUpdateThingGroupOperationInputPath() -> UpdateThingGroupOperationInputPath {
        return UpdateThingGroupOperationInputPath(
            thingGroupName: thingGroupName)
    }
}

/**
 Structure to encode the body input for the UpdateThingGroup
 operation.
 */
public struct UpdateThingGroupOperationInputBody: Codable, Equatable {
    public var expectedVersion: OptionalVersion?
    public var thingGroupProperties: ThingGroupProperties

    public init(expectedVersion: OptionalVersion? = nil,
                thingGroupProperties: ThingGroupProperties) {
        self.expectedVersion = expectedVersion
        self.thingGroupProperties = thingGroupProperties
    }

    enum CodingKeys: String, CodingKey {
        case expectedVersion
        case thingGroupProperties
    }

    public func validate() throws {
        try thingGroupProperties.validate()
    }
}

public extension UpdateThingGroupRequest {
    public func asIotModelUpdateThingGroupOperationInputBody() -> UpdateThingGroupOperationInputBody {
        return UpdateThingGroupOperationInputBody(
            expectedVersion: expectedVersion,
            thingGroupProperties: thingGroupProperties)
    }
}
