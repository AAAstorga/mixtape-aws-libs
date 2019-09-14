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
// IotClientProtocol.swift
// IotClient
//

import Foundation
import IotModel
import SmokeHTTPClient

/**
 Client Protocol for the Iot service.
 */
public protocol IotClientProtocol {
    typealias AcceptCertificateTransferSyncType = (_ input: IotModel.AcceptCertificateTransferRequest) throws -> ()
    typealias AcceptCertificateTransferAsyncType = (_ input: IotModel.AcceptCertificateTransferRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias AddThingToBillingGroupSyncType = (_ input: IotModel.AddThingToBillingGroupRequest) throws -> IotModel.AddThingToBillingGroupResponse
    typealias AddThingToBillingGroupAsyncType = (_ input: IotModel.AddThingToBillingGroupRequest, _ completion: @escaping (HTTPResult<IotModel.AddThingToBillingGroupResponse>) -> ()) throws -> ()
    typealias AddThingToThingGroupSyncType = (_ input: IotModel.AddThingToThingGroupRequest) throws -> IotModel.AddThingToThingGroupResponse
    typealias AddThingToThingGroupAsyncType = (_ input: IotModel.AddThingToThingGroupRequest, _ completion: @escaping (HTTPResult<IotModel.AddThingToThingGroupResponse>) -> ()) throws -> ()
    typealias AssociateTargetsWithJobSyncType = (_ input: IotModel.AssociateTargetsWithJobRequest) throws -> IotModel.AssociateTargetsWithJobResponse
    typealias AssociateTargetsWithJobAsyncType = (_ input: IotModel.AssociateTargetsWithJobRequest, _ completion: @escaping (HTTPResult<IotModel.AssociateTargetsWithJobResponse>) -> ()) throws -> ()
    typealias AttachPolicySyncType = (_ input: IotModel.AttachPolicyRequest) throws -> ()
    typealias AttachPolicyAsyncType = (_ input: IotModel.AttachPolicyRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias AttachPrincipalPolicySyncType = (_ input: IotModel.AttachPrincipalPolicyRequest) throws -> ()
    typealias AttachPrincipalPolicyAsyncType = (_ input: IotModel.AttachPrincipalPolicyRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias AttachSecurityProfileSyncType = (_ input: IotModel.AttachSecurityProfileRequest) throws -> IotModel.AttachSecurityProfileResponse
    typealias AttachSecurityProfileAsyncType = (_ input: IotModel.AttachSecurityProfileRequest, _ completion: @escaping (HTTPResult<IotModel.AttachSecurityProfileResponse>) -> ()) throws -> ()
    typealias AttachThingPrincipalSyncType = (_ input: IotModel.AttachThingPrincipalRequest) throws -> IotModel.AttachThingPrincipalResponse
    typealias AttachThingPrincipalAsyncType = (_ input: IotModel.AttachThingPrincipalRequest, _ completion: @escaping (HTTPResult<IotModel.AttachThingPrincipalResponse>) -> ()) throws -> ()
    typealias CancelAuditMitigationActionsTaskSyncType = (_ input: IotModel.CancelAuditMitigationActionsTaskRequest) throws -> IotModel.CancelAuditMitigationActionsTaskResponse
    typealias CancelAuditMitigationActionsTaskAsyncType = (_ input: IotModel.CancelAuditMitigationActionsTaskRequest, _ completion: @escaping (HTTPResult<IotModel.CancelAuditMitigationActionsTaskResponse>) -> ()) throws -> ()
    typealias CancelAuditTaskSyncType = (_ input: IotModel.CancelAuditTaskRequest) throws -> IotModel.CancelAuditTaskResponse
    typealias CancelAuditTaskAsyncType = (_ input: IotModel.CancelAuditTaskRequest, _ completion: @escaping (HTTPResult<IotModel.CancelAuditTaskResponse>) -> ()) throws -> ()
    typealias CancelCertificateTransferSyncType = (_ input: IotModel.CancelCertificateTransferRequest) throws -> ()
    typealias CancelCertificateTransferAsyncType = (_ input: IotModel.CancelCertificateTransferRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias CancelJobSyncType = (_ input: IotModel.CancelJobRequest) throws -> IotModel.CancelJobResponse
    typealias CancelJobAsyncType = (_ input: IotModel.CancelJobRequest, _ completion: @escaping (HTTPResult<IotModel.CancelJobResponse>) -> ()) throws -> ()
    typealias CancelJobExecutionSyncType = (_ input: IotModel.CancelJobExecutionRequest) throws -> ()
    typealias CancelJobExecutionAsyncType = (_ input: IotModel.CancelJobExecutionRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ClearDefaultAuthorizerSyncType = (_ input: IotModel.ClearDefaultAuthorizerRequest) throws -> IotModel.ClearDefaultAuthorizerResponse
    typealias ClearDefaultAuthorizerAsyncType = (_ input: IotModel.ClearDefaultAuthorizerRequest, _ completion: @escaping (HTTPResult<IotModel.ClearDefaultAuthorizerResponse>) -> ()) throws -> ()
    typealias CreateAuthorizerSyncType = (_ input: IotModel.CreateAuthorizerRequest) throws -> IotModel.CreateAuthorizerResponse
    typealias CreateAuthorizerAsyncType = (_ input: IotModel.CreateAuthorizerRequest, _ completion: @escaping (HTTPResult<IotModel.CreateAuthorizerResponse>) -> ()) throws -> ()
    typealias CreateBillingGroupSyncType = (_ input: IotModel.CreateBillingGroupRequest) throws -> IotModel.CreateBillingGroupResponse
    typealias CreateBillingGroupAsyncType = (_ input: IotModel.CreateBillingGroupRequest, _ completion: @escaping (HTTPResult<IotModel.CreateBillingGroupResponse>) -> ()) throws -> ()
    typealias CreateCertificateFromCsrSyncType = (_ input: IotModel.CreateCertificateFromCsrRequest) throws -> IotModel.CreateCertificateFromCsrResponse
    typealias CreateCertificateFromCsrAsyncType = (_ input: IotModel.CreateCertificateFromCsrRequest, _ completion: @escaping (HTTPResult<IotModel.CreateCertificateFromCsrResponse>) -> ()) throws -> ()
    typealias CreateDynamicThingGroupSyncType = (_ input: IotModel.CreateDynamicThingGroupRequest) throws -> IotModel.CreateDynamicThingGroupResponse
    typealias CreateDynamicThingGroupAsyncType = (_ input: IotModel.CreateDynamicThingGroupRequest, _ completion: @escaping (HTTPResult<IotModel.CreateDynamicThingGroupResponse>) -> ()) throws -> ()
    typealias CreateJobSyncType = (_ input: IotModel.CreateJobRequest) throws -> IotModel.CreateJobResponse
    typealias CreateJobAsyncType = (_ input: IotModel.CreateJobRequest, _ completion: @escaping (HTTPResult<IotModel.CreateJobResponse>) -> ()) throws -> ()
    typealias CreateKeysAndCertificateSyncType = (_ input: IotModel.CreateKeysAndCertificateRequest) throws -> IotModel.CreateKeysAndCertificateResponse
    typealias CreateKeysAndCertificateAsyncType = (_ input: IotModel.CreateKeysAndCertificateRequest, _ completion: @escaping (HTTPResult<IotModel.CreateKeysAndCertificateResponse>) -> ()) throws -> ()
    typealias CreateMitigationActionSyncType = (_ input: IotModel.CreateMitigationActionRequest) throws -> IotModel.CreateMitigationActionResponse
    typealias CreateMitigationActionAsyncType = (_ input: IotModel.CreateMitigationActionRequest, _ completion: @escaping (HTTPResult<IotModel.CreateMitigationActionResponse>) -> ()) throws -> ()
    typealias CreateOTAUpdateSyncType = (_ input: IotModel.CreateOTAUpdateRequest) throws -> IotModel.CreateOTAUpdateResponse
    typealias CreateOTAUpdateAsyncType = (_ input: IotModel.CreateOTAUpdateRequest, _ completion: @escaping (HTTPResult<IotModel.CreateOTAUpdateResponse>) -> ()) throws -> ()
    typealias CreatePolicySyncType = (_ input: IotModel.CreatePolicyRequest) throws -> IotModel.CreatePolicyResponse
    typealias CreatePolicyAsyncType = (_ input: IotModel.CreatePolicyRequest, _ completion: @escaping (HTTPResult<IotModel.CreatePolicyResponse>) -> ()) throws -> ()
    typealias CreatePolicyVersionSyncType = (_ input: IotModel.CreatePolicyVersionRequest) throws -> IotModel.CreatePolicyVersionResponse
    typealias CreatePolicyVersionAsyncType = (_ input: IotModel.CreatePolicyVersionRequest, _ completion: @escaping (HTTPResult<IotModel.CreatePolicyVersionResponse>) -> ()) throws -> ()
    typealias CreateRoleAliasSyncType = (_ input: IotModel.CreateRoleAliasRequest) throws -> IotModel.CreateRoleAliasResponse
    typealias CreateRoleAliasAsyncType = (_ input: IotModel.CreateRoleAliasRequest, _ completion: @escaping (HTTPResult<IotModel.CreateRoleAliasResponse>) -> ()) throws -> ()
    typealias CreateScheduledAuditSyncType = (_ input: IotModel.CreateScheduledAuditRequest) throws -> IotModel.CreateScheduledAuditResponse
    typealias CreateScheduledAuditAsyncType = (_ input: IotModel.CreateScheduledAuditRequest, _ completion: @escaping (HTTPResult<IotModel.CreateScheduledAuditResponse>) -> ()) throws -> ()
    typealias CreateSecurityProfileSyncType = (_ input: IotModel.CreateSecurityProfileRequest) throws -> IotModel.CreateSecurityProfileResponse
    typealias CreateSecurityProfileAsyncType = (_ input: IotModel.CreateSecurityProfileRequest, _ completion: @escaping (HTTPResult<IotModel.CreateSecurityProfileResponse>) -> ()) throws -> ()
    typealias CreateStreamSyncType = (_ input: IotModel.CreateStreamRequest) throws -> IotModel.CreateStreamResponse
    typealias CreateStreamAsyncType = (_ input: IotModel.CreateStreamRequest, _ completion: @escaping (HTTPResult<IotModel.CreateStreamResponse>) -> ()) throws -> ()
    typealias CreateThingSyncType = (_ input: IotModel.CreateThingRequest) throws -> IotModel.CreateThingResponse
    typealias CreateThingAsyncType = (_ input: IotModel.CreateThingRequest, _ completion: @escaping (HTTPResult<IotModel.CreateThingResponse>) -> ()) throws -> ()
    typealias CreateThingGroupSyncType = (_ input: IotModel.CreateThingGroupRequest) throws -> IotModel.CreateThingGroupResponse
    typealias CreateThingGroupAsyncType = (_ input: IotModel.CreateThingGroupRequest, _ completion: @escaping (HTTPResult<IotModel.CreateThingGroupResponse>) -> ()) throws -> ()
    typealias CreateThingTypeSyncType = (_ input: IotModel.CreateThingTypeRequest) throws -> IotModel.CreateThingTypeResponse
    typealias CreateThingTypeAsyncType = (_ input: IotModel.CreateThingTypeRequest, _ completion: @escaping (HTTPResult<IotModel.CreateThingTypeResponse>) -> ()) throws -> ()
    typealias CreateTopicRuleSyncType = (_ input: IotModel.CreateTopicRuleRequest) throws -> ()
    typealias CreateTopicRuleAsyncType = (_ input: IotModel.CreateTopicRuleRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteAccountAuditConfigurationSyncType = (_ input: IotModel.DeleteAccountAuditConfigurationRequest) throws -> IotModel.DeleteAccountAuditConfigurationResponse
    typealias DeleteAccountAuditConfigurationAsyncType = (_ input: IotModel.DeleteAccountAuditConfigurationRequest, _ completion: @escaping (HTTPResult<IotModel.DeleteAccountAuditConfigurationResponse>) -> ()) throws -> ()
    typealias DeleteAuthorizerSyncType = (_ input: IotModel.DeleteAuthorizerRequest) throws -> IotModel.DeleteAuthorizerResponse
    typealias DeleteAuthorizerAsyncType = (_ input: IotModel.DeleteAuthorizerRequest, _ completion: @escaping (HTTPResult<IotModel.DeleteAuthorizerResponse>) -> ()) throws -> ()
    typealias DeleteBillingGroupSyncType = (_ input: IotModel.DeleteBillingGroupRequest) throws -> IotModel.DeleteBillingGroupResponse
    typealias DeleteBillingGroupAsyncType = (_ input: IotModel.DeleteBillingGroupRequest, _ completion: @escaping (HTTPResult<IotModel.DeleteBillingGroupResponse>) -> ()) throws -> ()
    typealias DeleteCACertificateSyncType = (_ input: IotModel.DeleteCACertificateRequest) throws -> IotModel.DeleteCACertificateResponse
    typealias DeleteCACertificateAsyncType = (_ input: IotModel.DeleteCACertificateRequest, _ completion: @escaping (HTTPResult<IotModel.DeleteCACertificateResponse>) -> ()) throws -> ()
    typealias DeleteCertificateSyncType = (_ input: IotModel.DeleteCertificateRequest) throws -> ()
    typealias DeleteCertificateAsyncType = (_ input: IotModel.DeleteCertificateRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteDynamicThingGroupSyncType = (_ input: IotModel.DeleteDynamicThingGroupRequest) throws -> IotModel.DeleteDynamicThingGroupResponse
    typealias DeleteDynamicThingGroupAsyncType = (_ input: IotModel.DeleteDynamicThingGroupRequest, _ completion: @escaping (HTTPResult<IotModel.DeleteDynamicThingGroupResponse>) -> ()) throws -> ()
    typealias DeleteJobSyncType = (_ input: IotModel.DeleteJobRequest) throws -> ()
    typealias DeleteJobAsyncType = (_ input: IotModel.DeleteJobRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteJobExecutionSyncType = (_ input: IotModel.DeleteJobExecutionRequest) throws -> ()
    typealias DeleteJobExecutionAsyncType = (_ input: IotModel.DeleteJobExecutionRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteMitigationActionSyncType = (_ input: IotModel.DeleteMitigationActionRequest) throws -> IotModel.DeleteMitigationActionResponse
    typealias DeleteMitigationActionAsyncType = (_ input: IotModel.DeleteMitigationActionRequest, _ completion: @escaping (HTTPResult<IotModel.DeleteMitigationActionResponse>) -> ()) throws -> ()
    typealias DeleteOTAUpdateSyncType = (_ input: IotModel.DeleteOTAUpdateRequest) throws -> IotModel.DeleteOTAUpdateResponse
    typealias DeleteOTAUpdateAsyncType = (_ input: IotModel.DeleteOTAUpdateRequest, _ completion: @escaping (HTTPResult<IotModel.DeleteOTAUpdateResponse>) -> ()) throws -> ()
    typealias DeletePolicySyncType = (_ input: IotModel.DeletePolicyRequest) throws -> ()
    typealias DeletePolicyAsyncType = (_ input: IotModel.DeletePolicyRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeletePolicyVersionSyncType = (_ input: IotModel.DeletePolicyVersionRequest) throws -> ()
    typealias DeletePolicyVersionAsyncType = (_ input: IotModel.DeletePolicyVersionRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteRegistrationCodeSyncType = (_ input: IotModel.DeleteRegistrationCodeRequest) throws -> IotModel.DeleteRegistrationCodeResponse
    typealias DeleteRegistrationCodeAsyncType = (_ input: IotModel.DeleteRegistrationCodeRequest, _ completion: @escaping (HTTPResult<IotModel.DeleteRegistrationCodeResponse>) -> ()) throws -> ()
    typealias DeleteRoleAliasSyncType = (_ input: IotModel.DeleteRoleAliasRequest) throws -> IotModel.DeleteRoleAliasResponse
    typealias DeleteRoleAliasAsyncType = (_ input: IotModel.DeleteRoleAliasRequest, _ completion: @escaping (HTTPResult<IotModel.DeleteRoleAliasResponse>) -> ()) throws -> ()
    typealias DeleteScheduledAuditSyncType = (_ input: IotModel.DeleteScheduledAuditRequest) throws -> IotModel.DeleteScheduledAuditResponse
    typealias DeleteScheduledAuditAsyncType = (_ input: IotModel.DeleteScheduledAuditRequest, _ completion: @escaping (HTTPResult<IotModel.DeleteScheduledAuditResponse>) -> ()) throws -> ()
    typealias DeleteSecurityProfileSyncType = (_ input: IotModel.DeleteSecurityProfileRequest) throws -> IotModel.DeleteSecurityProfileResponse
    typealias DeleteSecurityProfileAsyncType = (_ input: IotModel.DeleteSecurityProfileRequest, _ completion: @escaping (HTTPResult<IotModel.DeleteSecurityProfileResponse>) -> ()) throws -> ()
    typealias DeleteStreamSyncType = (_ input: IotModel.DeleteStreamRequest) throws -> IotModel.DeleteStreamResponse
    typealias DeleteStreamAsyncType = (_ input: IotModel.DeleteStreamRequest, _ completion: @escaping (HTTPResult<IotModel.DeleteStreamResponse>) -> ()) throws -> ()
    typealias DeleteThingSyncType = (_ input: IotModel.DeleteThingRequest) throws -> IotModel.DeleteThingResponse
    typealias DeleteThingAsyncType = (_ input: IotModel.DeleteThingRequest, _ completion: @escaping (HTTPResult<IotModel.DeleteThingResponse>) -> ()) throws -> ()
    typealias DeleteThingGroupSyncType = (_ input: IotModel.DeleteThingGroupRequest) throws -> IotModel.DeleteThingGroupResponse
    typealias DeleteThingGroupAsyncType = (_ input: IotModel.DeleteThingGroupRequest, _ completion: @escaping (HTTPResult<IotModel.DeleteThingGroupResponse>) -> ()) throws -> ()
    typealias DeleteThingTypeSyncType = (_ input: IotModel.DeleteThingTypeRequest) throws -> IotModel.DeleteThingTypeResponse
    typealias DeleteThingTypeAsyncType = (_ input: IotModel.DeleteThingTypeRequest, _ completion: @escaping (HTTPResult<IotModel.DeleteThingTypeResponse>) -> ()) throws -> ()
    typealias DeleteTopicRuleSyncType = (_ input: IotModel.DeleteTopicRuleRequest) throws -> ()
    typealias DeleteTopicRuleAsyncType = (_ input: IotModel.DeleteTopicRuleRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteV2LoggingLevelSyncType = (_ input: IotModel.DeleteV2LoggingLevelRequest) throws -> ()
    typealias DeleteV2LoggingLevelAsyncType = (_ input: IotModel.DeleteV2LoggingLevelRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeprecateThingTypeSyncType = (_ input: IotModel.DeprecateThingTypeRequest) throws -> IotModel.DeprecateThingTypeResponse
    typealias DeprecateThingTypeAsyncType = (_ input: IotModel.DeprecateThingTypeRequest, _ completion: @escaping (HTTPResult<IotModel.DeprecateThingTypeResponse>) -> ()) throws -> ()
    typealias DescribeAccountAuditConfigurationSyncType = (_ input: IotModel.DescribeAccountAuditConfigurationRequest) throws -> IotModel.DescribeAccountAuditConfigurationResponse
    typealias DescribeAccountAuditConfigurationAsyncType = (_ input: IotModel.DescribeAccountAuditConfigurationRequest, _ completion: @escaping (HTTPResult<IotModel.DescribeAccountAuditConfigurationResponse>) -> ()) throws -> ()
    typealias DescribeAuditFindingSyncType = (_ input: IotModel.DescribeAuditFindingRequest) throws -> IotModel.DescribeAuditFindingResponse
    typealias DescribeAuditFindingAsyncType = (_ input: IotModel.DescribeAuditFindingRequest, _ completion: @escaping (HTTPResult<IotModel.DescribeAuditFindingResponse>) -> ()) throws -> ()
    typealias DescribeAuditMitigationActionsTaskSyncType = (_ input: IotModel.DescribeAuditMitigationActionsTaskRequest) throws -> IotModel.DescribeAuditMitigationActionsTaskResponse
    typealias DescribeAuditMitigationActionsTaskAsyncType = (_ input: IotModel.DescribeAuditMitigationActionsTaskRequest, _ completion: @escaping (HTTPResult<IotModel.DescribeAuditMitigationActionsTaskResponse>) -> ()) throws -> ()
    typealias DescribeAuditTaskSyncType = (_ input: IotModel.DescribeAuditTaskRequest) throws -> IotModel.DescribeAuditTaskResponse
    typealias DescribeAuditTaskAsyncType = (_ input: IotModel.DescribeAuditTaskRequest, _ completion: @escaping (HTTPResult<IotModel.DescribeAuditTaskResponse>) -> ()) throws -> ()
    typealias DescribeAuthorizerSyncType = (_ input: IotModel.DescribeAuthorizerRequest) throws -> IotModel.DescribeAuthorizerResponse
    typealias DescribeAuthorizerAsyncType = (_ input: IotModel.DescribeAuthorizerRequest, _ completion: @escaping (HTTPResult<IotModel.DescribeAuthorizerResponse>) -> ()) throws -> ()
    typealias DescribeBillingGroupSyncType = (_ input: IotModel.DescribeBillingGroupRequest) throws -> IotModel.DescribeBillingGroupResponse
    typealias DescribeBillingGroupAsyncType = (_ input: IotModel.DescribeBillingGroupRequest, _ completion: @escaping (HTTPResult<IotModel.DescribeBillingGroupResponse>) -> ()) throws -> ()
    typealias DescribeCACertificateSyncType = (_ input: IotModel.DescribeCACertificateRequest) throws -> IotModel.DescribeCACertificateResponse
    typealias DescribeCACertificateAsyncType = (_ input: IotModel.DescribeCACertificateRequest, _ completion: @escaping (HTTPResult<IotModel.DescribeCACertificateResponse>) -> ()) throws -> ()
    typealias DescribeCertificateSyncType = (_ input: IotModel.DescribeCertificateRequest) throws -> IotModel.DescribeCertificateResponse
    typealias DescribeCertificateAsyncType = (_ input: IotModel.DescribeCertificateRequest, _ completion: @escaping (HTTPResult<IotModel.DescribeCertificateResponse>) -> ()) throws -> ()
    typealias DescribeDefaultAuthorizerSyncType = (_ input: IotModel.DescribeDefaultAuthorizerRequest) throws -> IotModel.DescribeDefaultAuthorizerResponse
    typealias DescribeDefaultAuthorizerAsyncType = (_ input: IotModel.DescribeDefaultAuthorizerRequest, _ completion: @escaping (HTTPResult<IotModel.DescribeDefaultAuthorizerResponse>) -> ()) throws -> ()
    typealias DescribeEndpointSyncType = (_ input: IotModel.DescribeEndpointRequest) throws -> IotModel.DescribeEndpointResponse
    typealias DescribeEndpointAsyncType = (_ input: IotModel.DescribeEndpointRequest, _ completion: @escaping (HTTPResult<IotModel.DescribeEndpointResponse>) -> ()) throws -> ()
    typealias DescribeEventConfigurationsSyncType = (_ input: IotModel.DescribeEventConfigurationsRequest) throws -> IotModel.DescribeEventConfigurationsResponse
    typealias DescribeEventConfigurationsAsyncType = (_ input: IotModel.DescribeEventConfigurationsRequest, _ completion: @escaping (HTTPResult<IotModel.DescribeEventConfigurationsResponse>) -> ()) throws -> ()
    typealias DescribeIndexSyncType = (_ input: IotModel.DescribeIndexRequest) throws -> IotModel.DescribeIndexResponse
    typealias DescribeIndexAsyncType = (_ input: IotModel.DescribeIndexRequest, _ completion: @escaping (HTTPResult<IotModel.DescribeIndexResponse>) -> ()) throws -> ()
    typealias DescribeJobSyncType = (_ input: IotModel.DescribeJobRequest) throws -> IotModel.DescribeJobResponse
    typealias DescribeJobAsyncType = (_ input: IotModel.DescribeJobRequest, _ completion: @escaping (HTTPResult<IotModel.DescribeJobResponse>) -> ()) throws -> ()
    typealias DescribeJobExecutionSyncType = (_ input: IotModel.DescribeJobExecutionRequest) throws -> IotModel.DescribeJobExecutionResponse
    typealias DescribeJobExecutionAsyncType = (_ input: IotModel.DescribeJobExecutionRequest, _ completion: @escaping (HTTPResult<IotModel.DescribeJobExecutionResponse>) -> ()) throws -> ()
    typealias DescribeMitigationActionSyncType = (_ input: IotModel.DescribeMitigationActionRequest) throws -> IotModel.DescribeMitigationActionResponse
    typealias DescribeMitigationActionAsyncType = (_ input: IotModel.DescribeMitigationActionRequest, _ completion: @escaping (HTTPResult<IotModel.DescribeMitigationActionResponse>) -> ()) throws -> ()
    typealias DescribeRoleAliasSyncType = (_ input: IotModel.DescribeRoleAliasRequest) throws -> IotModel.DescribeRoleAliasResponse
    typealias DescribeRoleAliasAsyncType = (_ input: IotModel.DescribeRoleAliasRequest, _ completion: @escaping (HTTPResult<IotModel.DescribeRoleAliasResponse>) -> ()) throws -> ()
    typealias DescribeScheduledAuditSyncType = (_ input: IotModel.DescribeScheduledAuditRequest) throws -> IotModel.DescribeScheduledAuditResponse
    typealias DescribeScheduledAuditAsyncType = (_ input: IotModel.DescribeScheduledAuditRequest, _ completion: @escaping (HTTPResult<IotModel.DescribeScheduledAuditResponse>) -> ()) throws -> ()
    typealias DescribeSecurityProfileSyncType = (_ input: IotModel.DescribeSecurityProfileRequest) throws -> IotModel.DescribeSecurityProfileResponse
    typealias DescribeSecurityProfileAsyncType = (_ input: IotModel.DescribeSecurityProfileRequest, _ completion: @escaping (HTTPResult<IotModel.DescribeSecurityProfileResponse>) -> ()) throws -> ()
    typealias DescribeStreamSyncType = (_ input: IotModel.DescribeStreamRequest) throws -> IotModel.DescribeStreamResponse
    typealias DescribeStreamAsyncType = (_ input: IotModel.DescribeStreamRequest, _ completion: @escaping (HTTPResult<IotModel.DescribeStreamResponse>) -> ()) throws -> ()
    typealias DescribeThingSyncType = (_ input: IotModel.DescribeThingRequest) throws -> IotModel.DescribeThingResponse
    typealias DescribeThingAsyncType = (_ input: IotModel.DescribeThingRequest, _ completion: @escaping (HTTPResult<IotModel.DescribeThingResponse>) -> ()) throws -> ()
    typealias DescribeThingGroupSyncType = (_ input: IotModel.DescribeThingGroupRequest) throws -> IotModel.DescribeThingGroupResponse
    typealias DescribeThingGroupAsyncType = (_ input: IotModel.DescribeThingGroupRequest, _ completion: @escaping (HTTPResult<IotModel.DescribeThingGroupResponse>) -> ()) throws -> ()
    typealias DescribeThingRegistrationTaskSyncType = (_ input: IotModel.DescribeThingRegistrationTaskRequest) throws -> IotModel.DescribeThingRegistrationTaskResponse
    typealias DescribeThingRegistrationTaskAsyncType = (_ input: IotModel.DescribeThingRegistrationTaskRequest, _ completion: @escaping (HTTPResult<IotModel.DescribeThingRegistrationTaskResponse>) -> ()) throws -> ()
    typealias DescribeThingTypeSyncType = (_ input: IotModel.DescribeThingTypeRequest) throws -> IotModel.DescribeThingTypeResponse
    typealias DescribeThingTypeAsyncType = (_ input: IotModel.DescribeThingTypeRequest, _ completion: @escaping (HTTPResult<IotModel.DescribeThingTypeResponse>) -> ()) throws -> ()
    typealias DetachPolicySyncType = (_ input: IotModel.DetachPolicyRequest) throws -> ()
    typealias DetachPolicyAsyncType = (_ input: IotModel.DetachPolicyRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DetachPrincipalPolicySyncType = (_ input: IotModel.DetachPrincipalPolicyRequest) throws -> ()
    typealias DetachPrincipalPolicyAsyncType = (_ input: IotModel.DetachPrincipalPolicyRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DetachSecurityProfileSyncType = (_ input: IotModel.DetachSecurityProfileRequest) throws -> IotModel.DetachSecurityProfileResponse
    typealias DetachSecurityProfileAsyncType = (_ input: IotModel.DetachSecurityProfileRequest, _ completion: @escaping (HTTPResult<IotModel.DetachSecurityProfileResponse>) -> ()) throws -> ()
    typealias DetachThingPrincipalSyncType = (_ input: IotModel.DetachThingPrincipalRequest) throws -> IotModel.DetachThingPrincipalResponse
    typealias DetachThingPrincipalAsyncType = (_ input: IotModel.DetachThingPrincipalRequest, _ completion: @escaping (HTTPResult<IotModel.DetachThingPrincipalResponse>) -> ()) throws -> ()
    typealias DisableTopicRuleSyncType = (_ input: IotModel.DisableTopicRuleRequest) throws -> ()
    typealias DisableTopicRuleAsyncType = (_ input: IotModel.DisableTopicRuleRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias EnableTopicRuleSyncType = (_ input: IotModel.EnableTopicRuleRequest) throws -> ()
    typealias EnableTopicRuleAsyncType = (_ input: IotModel.EnableTopicRuleRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias GetEffectivePoliciesSyncType = (_ input: IotModel.GetEffectivePoliciesRequest) throws -> IotModel.GetEffectivePoliciesResponse
    typealias GetEffectivePoliciesAsyncType = (_ input: IotModel.GetEffectivePoliciesRequest, _ completion: @escaping (HTTPResult<IotModel.GetEffectivePoliciesResponse>) -> ()) throws -> ()
    typealias GetIndexingConfigurationSyncType = (_ input: IotModel.GetIndexingConfigurationRequest) throws -> IotModel.GetIndexingConfigurationResponse
    typealias GetIndexingConfigurationAsyncType = (_ input: IotModel.GetIndexingConfigurationRequest, _ completion: @escaping (HTTPResult<IotModel.GetIndexingConfigurationResponse>) -> ()) throws -> ()
    typealias GetJobDocumentSyncType = (_ input: IotModel.GetJobDocumentRequest) throws -> IotModel.GetJobDocumentResponse
    typealias GetJobDocumentAsyncType = (_ input: IotModel.GetJobDocumentRequest, _ completion: @escaping (HTTPResult<IotModel.GetJobDocumentResponse>) -> ()) throws -> ()
    typealias GetLoggingOptionsSyncType = (_ input: IotModel.GetLoggingOptionsRequest) throws -> IotModel.GetLoggingOptionsResponse
    typealias GetLoggingOptionsAsyncType = (_ input: IotModel.GetLoggingOptionsRequest, _ completion: @escaping (HTTPResult<IotModel.GetLoggingOptionsResponse>) -> ()) throws -> ()
    typealias GetOTAUpdateSyncType = (_ input: IotModel.GetOTAUpdateRequest) throws -> IotModel.GetOTAUpdateResponse
    typealias GetOTAUpdateAsyncType = (_ input: IotModel.GetOTAUpdateRequest, _ completion: @escaping (HTTPResult<IotModel.GetOTAUpdateResponse>) -> ()) throws -> ()
    typealias GetPolicySyncType = (_ input: IotModel.GetPolicyRequest) throws -> IotModel.GetPolicyResponse
    typealias GetPolicyAsyncType = (_ input: IotModel.GetPolicyRequest, _ completion: @escaping (HTTPResult<IotModel.GetPolicyResponse>) -> ()) throws -> ()
    typealias GetPolicyVersionSyncType = (_ input: IotModel.GetPolicyVersionRequest) throws -> IotModel.GetPolicyVersionResponse
    typealias GetPolicyVersionAsyncType = (_ input: IotModel.GetPolicyVersionRequest, _ completion: @escaping (HTTPResult<IotModel.GetPolicyVersionResponse>) -> ()) throws -> ()
    typealias GetRegistrationCodeSyncType = (_ input: IotModel.GetRegistrationCodeRequest) throws -> IotModel.GetRegistrationCodeResponse
    typealias GetRegistrationCodeAsyncType = (_ input: IotModel.GetRegistrationCodeRequest, _ completion: @escaping (HTTPResult<IotModel.GetRegistrationCodeResponse>) -> ()) throws -> ()
    typealias GetStatisticsSyncType = (_ input: IotModel.GetStatisticsRequest) throws -> IotModel.GetStatisticsResponse
    typealias GetStatisticsAsyncType = (_ input: IotModel.GetStatisticsRequest, _ completion: @escaping (HTTPResult<IotModel.GetStatisticsResponse>) -> ()) throws -> ()
    typealias GetTopicRuleSyncType = (_ input: IotModel.GetTopicRuleRequest) throws -> IotModel.GetTopicRuleResponse
    typealias GetTopicRuleAsyncType = (_ input: IotModel.GetTopicRuleRequest, _ completion: @escaping (HTTPResult<IotModel.GetTopicRuleResponse>) -> ()) throws -> ()
    typealias GetV2LoggingOptionsSyncType = (_ input: IotModel.GetV2LoggingOptionsRequest) throws -> IotModel.GetV2LoggingOptionsResponse
    typealias GetV2LoggingOptionsAsyncType = (_ input: IotModel.GetV2LoggingOptionsRequest, _ completion: @escaping (HTTPResult<IotModel.GetV2LoggingOptionsResponse>) -> ()) throws -> ()
    typealias ListActiveViolationsSyncType = (_ input: IotModel.ListActiveViolationsRequest) throws -> IotModel.ListActiveViolationsResponse
    typealias ListActiveViolationsAsyncType = (_ input: IotModel.ListActiveViolationsRequest, _ completion: @escaping (HTTPResult<IotModel.ListActiveViolationsResponse>) -> ()) throws -> ()
    typealias ListAttachedPoliciesSyncType = (_ input: IotModel.ListAttachedPoliciesRequest) throws -> IotModel.ListAttachedPoliciesResponse
    typealias ListAttachedPoliciesAsyncType = (_ input: IotModel.ListAttachedPoliciesRequest, _ completion: @escaping (HTTPResult<IotModel.ListAttachedPoliciesResponse>) -> ()) throws -> ()
    typealias ListAuditFindingsSyncType = (_ input: IotModel.ListAuditFindingsRequest) throws -> IotModel.ListAuditFindingsResponse
    typealias ListAuditFindingsAsyncType = (_ input: IotModel.ListAuditFindingsRequest, _ completion: @escaping (HTTPResult<IotModel.ListAuditFindingsResponse>) -> ()) throws -> ()
    typealias ListAuditMitigationActionsExecutionsSyncType = (_ input: IotModel.ListAuditMitigationActionsExecutionsRequest) throws -> IotModel.ListAuditMitigationActionsExecutionsResponse
    typealias ListAuditMitigationActionsExecutionsAsyncType = (_ input: IotModel.ListAuditMitigationActionsExecutionsRequest, _ completion: @escaping (HTTPResult<IotModel.ListAuditMitigationActionsExecutionsResponse>) -> ()) throws -> ()
    typealias ListAuditMitigationActionsTasksSyncType = (_ input: IotModel.ListAuditMitigationActionsTasksRequest) throws -> IotModel.ListAuditMitigationActionsTasksResponse
    typealias ListAuditMitigationActionsTasksAsyncType = (_ input: IotModel.ListAuditMitigationActionsTasksRequest, _ completion: @escaping (HTTPResult<IotModel.ListAuditMitigationActionsTasksResponse>) -> ()) throws -> ()
    typealias ListAuditTasksSyncType = (_ input: IotModel.ListAuditTasksRequest) throws -> IotModel.ListAuditTasksResponse
    typealias ListAuditTasksAsyncType = (_ input: IotModel.ListAuditTasksRequest, _ completion: @escaping (HTTPResult<IotModel.ListAuditTasksResponse>) -> ()) throws -> ()
    typealias ListAuthorizersSyncType = (_ input: IotModel.ListAuthorizersRequest) throws -> IotModel.ListAuthorizersResponse
    typealias ListAuthorizersAsyncType = (_ input: IotModel.ListAuthorizersRequest, _ completion: @escaping (HTTPResult<IotModel.ListAuthorizersResponse>) -> ()) throws -> ()
    typealias ListBillingGroupsSyncType = (_ input: IotModel.ListBillingGroupsRequest) throws -> IotModel.ListBillingGroupsResponse
    typealias ListBillingGroupsAsyncType = (_ input: IotModel.ListBillingGroupsRequest, _ completion: @escaping (HTTPResult<IotModel.ListBillingGroupsResponse>) -> ()) throws -> ()
    typealias ListCACertificatesSyncType = (_ input: IotModel.ListCACertificatesRequest) throws -> IotModel.ListCACertificatesResponse
    typealias ListCACertificatesAsyncType = (_ input: IotModel.ListCACertificatesRequest, _ completion: @escaping (HTTPResult<IotModel.ListCACertificatesResponse>) -> ()) throws -> ()
    typealias ListCertificatesSyncType = (_ input: IotModel.ListCertificatesRequest) throws -> IotModel.ListCertificatesResponse
    typealias ListCertificatesAsyncType = (_ input: IotModel.ListCertificatesRequest, _ completion: @escaping (HTTPResult<IotModel.ListCertificatesResponse>) -> ()) throws -> ()
    typealias ListCertificatesByCASyncType = (_ input: IotModel.ListCertificatesByCARequest) throws -> IotModel.ListCertificatesByCAResponse
    typealias ListCertificatesByCAAsyncType = (_ input: IotModel.ListCertificatesByCARequest, _ completion: @escaping (HTTPResult<IotModel.ListCertificatesByCAResponse>) -> ()) throws -> ()
    typealias ListIndicesSyncType = (_ input: IotModel.ListIndicesRequest) throws -> IotModel.ListIndicesResponse
    typealias ListIndicesAsyncType = (_ input: IotModel.ListIndicesRequest, _ completion: @escaping (HTTPResult<IotModel.ListIndicesResponse>) -> ()) throws -> ()
    typealias ListJobExecutionsForJobSyncType = (_ input: IotModel.ListJobExecutionsForJobRequest) throws -> IotModel.ListJobExecutionsForJobResponse
    typealias ListJobExecutionsForJobAsyncType = (_ input: IotModel.ListJobExecutionsForJobRequest, _ completion: @escaping (HTTPResult<IotModel.ListJobExecutionsForJobResponse>) -> ()) throws -> ()
    typealias ListJobExecutionsForThingSyncType = (_ input: IotModel.ListJobExecutionsForThingRequest) throws -> IotModel.ListJobExecutionsForThingResponse
    typealias ListJobExecutionsForThingAsyncType = (_ input: IotModel.ListJobExecutionsForThingRequest, _ completion: @escaping (HTTPResult<IotModel.ListJobExecutionsForThingResponse>) -> ()) throws -> ()
    typealias ListJobsSyncType = (_ input: IotModel.ListJobsRequest) throws -> IotModel.ListJobsResponse
    typealias ListJobsAsyncType = (_ input: IotModel.ListJobsRequest, _ completion: @escaping (HTTPResult<IotModel.ListJobsResponse>) -> ()) throws -> ()
    typealias ListMitigationActionsSyncType = (_ input: IotModel.ListMitigationActionsRequest) throws -> IotModel.ListMitigationActionsResponse
    typealias ListMitigationActionsAsyncType = (_ input: IotModel.ListMitigationActionsRequest, _ completion: @escaping (HTTPResult<IotModel.ListMitigationActionsResponse>) -> ()) throws -> ()
    typealias ListOTAUpdatesSyncType = (_ input: IotModel.ListOTAUpdatesRequest) throws -> IotModel.ListOTAUpdatesResponse
    typealias ListOTAUpdatesAsyncType = (_ input: IotModel.ListOTAUpdatesRequest, _ completion: @escaping (HTTPResult<IotModel.ListOTAUpdatesResponse>) -> ()) throws -> ()
    typealias ListOutgoingCertificatesSyncType = (_ input: IotModel.ListOutgoingCertificatesRequest) throws -> IotModel.ListOutgoingCertificatesResponse
    typealias ListOutgoingCertificatesAsyncType = (_ input: IotModel.ListOutgoingCertificatesRequest, _ completion: @escaping (HTTPResult<IotModel.ListOutgoingCertificatesResponse>) -> ()) throws -> ()
    typealias ListPoliciesSyncType = (_ input: IotModel.ListPoliciesRequest) throws -> IotModel.ListPoliciesResponse
    typealias ListPoliciesAsyncType = (_ input: IotModel.ListPoliciesRequest, _ completion: @escaping (HTTPResult<IotModel.ListPoliciesResponse>) -> ()) throws -> ()
    typealias ListPolicyPrincipalsSyncType = (_ input: IotModel.ListPolicyPrincipalsRequest) throws -> IotModel.ListPolicyPrincipalsResponse
    typealias ListPolicyPrincipalsAsyncType = (_ input: IotModel.ListPolicyPrincipalsRequest, _ completion: @escaping (HTTPResult<IotModel.ListPolicyPrincipalsResponse>) -> ()) throws -> ()
    typealias ListPolicyVersionsSyncType = (_ input: IotModel.ListPolicyVersionsRequest) throws -> IotModel.ListPolicyVersionsResponse
    typealias ListPolicyVersionsAsyncType = (_ input: IotModel.ListPolicyVersionsRequest, _ completion: @escaping (HTTPResult<IotModel.ListPolicyVersionsResponse>) -> ()) throws -> ()
    typealias ListPrincipalPoliciesSyncType = (_ input: IotModel.ListPrincipalPoliciesRequest) throws -> IotModel.ListPrincipalPoliciesResponse
    typealias ListPrincipalPoliciesAsyncType = (_ input: IotModel.ListPrincipalPoliciesRequest, _ completion: @escaping (HTTPResult<IotModel.ListPrincipalPoliciesResponse>) -> ()) throws -> ()
    typealias ListPrincipalThingsSyncType = (_ input: IotModel.ListPrincipalThingsRequest) throws -> IotModel.ListPrincipalThingsResponse
    typealias ListPrincipalThingsAsyncType = (_ input: IotModel.ListPrincipalThingsRequest, _ completion: @escaping (HTTPResult<IotModel.ListPrincipalThingsResponse>) -> ()) throws -> ()
    typealias ListRoleAliasesSyncType = (_ input: IotModel.ListRoleAliasesRequest) throws -> IotModel.ListRoleAliasesResponse
    typealias ListRoleAliasesAsyncType = (_ input: IotModel.ListRoleAliasesRequest, _ completion: @escaping (HTTPResult<IotModel.ListRoleAliasesResponse>) -> ()) throws -> ()
    typealias ListScheduledAuditsSyncType = (_ input: IotModel.ListScheduledAuditsRequest) throws -> IotModel.ListScheduledAuditsResponse
    typealias ListScheduledAuditsAsyncType = (_ input: IotModel.ListScheduledAuditsRequest, _ completion: @escaping (HTTPResult<IotModel.ListScheduledAuditsResponse>) -> ()) throws -> ()
    typealias ListSecurityProfilesSyncType = (_ input: IotModel.ListSecurityProfilesRequest) throws -> IotModel.ListSecurityProfilesResponse
    typealias ListSecurityProfilesAsyncType = (_ input: IotModel.ListSecurityProfilesRequest, _ completion: @escaping (HTTPResult<IotModel.ListSecurityProfilesResponse>) -> ()) throws -> ()
    typealias ListSecurityProfilesForTargetSyncType = (_ input: IotModel.ListSecurityProfilesForTargetRequest) throws -> IotModel.ListSecurityProfilesForTargetResponse
    typealias ListSecurityProfilesForTargetAsyncType = (_ input: IotModel.ListSecurityProfilesForTargetRequest, _ completion: @escaping (HTTPResult<IotModel.ListSecurityProfilesForTargetResponse>) -> ()) throws -> ()
    typealias ListStreamsSyncType = (_ input: IotModel.ListStreamsRequest) throws -> IotModel.ListStreamsResponse
    typealias ListStreamsAsyncType = (_ input: IotModel.ListStreamsRequest, _ completion: @escaping (HTTPResult<IotModel.ListStreamsResponse>) -> ()) throws -> ()
    typealias ListTagsForResourceSyncType = (_ input: IotModel.ListTagsForResourceRequest) throws -> IotModel.ListTagsForResourceResponse
    typealias ListTagsForResourceAsyncType = (_ input: IotModel.ListTagsForResourceRequest, _ completion: @escaping (HTTPResult<IotModel.ListTagsForResourceResponse>) -> ()) throws -> ()
    typealias ListTargetsForPolicySyncType = (_ input: IotModel.ListTargetsForPolicyRequest) throws -> IotModel.ListTargetsForPolicyResponse
    typealias ListTargetsForPolicyAsyncType = (_ input: IotModel.ListTargetsForPolicyRequest, _ completion: @escaping (HTTPResult<IotModel.ListTargetsForPolicyResponse>) -> ()) throws -> ()
    typealias ListTargetsForSecurityProfileSyncType = (_ input: IotModel.ListTargetsForSecurityProfileRequest) throws -> IotModel.ListTargetsForSecurityProfileResponse
    typealias ListTargetsForSecurityProfileAsyncType = (_ input: IotModel.ListTargetsForSecurityProfileRequest, _ completion: @escaping (HTTPResult<IotModel.ListTargetsForSecurityProfileResponse>) -> ()) throws -> ()
    typealias ListThingGroupsSyncType = (_ input: IotModel.ListThingGroupsRequest) throws -> IotModel.ListThingGroupsResponse
    typealias ListThingGroupsAsyncType = (_ input: IotModel.ListThingGroupsRequest, _ completion: @escaping (HTTPResult<IotModel.ListThingGroupsResponse>) -> ()) throws -> ()
    typealias ListThingGroupsForThingSyncType = (_ input: IotModel.ListThingGroupsForThingRequest) throws -> IotModel.ListThingGroupsForThingResponse
    typealias ListThingGroupsForThingAsyncType = (_ input: IotModel.ListThingGroupsForThingRequest, _ completion: @escaping (HTTPResult<IotModel.ListThingGroupsForThingResponse>) -> ()) throws -> ()
    typealias ListThingPrincipalsSyncType = (_ input: IotModel.ListThingPrincipalsRequest) throws -> IotModel.ListThingPrincipalsResponse
    typealias ListThingPrincipalsAsyncType = (_ input: IotModel.ListThingPrincipalsRequest, _ completion: @escaping (HTTPResult<IotModel.ListThingPrincipalsResponse>) -> ()) throws -> ()
    typealias ListThingRegistrationTaskReportsSyncType = (_ input: IotModel.ListThingRegistrationTaskReportsRequest) throws -> IotModel.ListThingRegistrationTaskReportsResponse
    typealias ListThingRegistrationTaskReportsAsyncType = (_ input: IotModel.ListThingRegistrationTaskReportsRequest, _ completion: @escaping (HTTPResult<IotModel.ListThingRegistrationTaskReportsResponse>) -> ()) throws -> ()
    typealias ListThingRegistrationTasksSyncType = (_ input: IotModel.ListThingRegistrationTasksRequest) throws -> IotModel.ListThingRegistrationTasksResponse
    typealias ListThingRegistrationTasksAsyncType = (_ input: IotModel.ListThingRegistrationTasksRequest, _ completion: @escaping (HTTPResult<IotModel.ListThingRegistrationTasksResponse>) -> ()) throws -> ()
    typealias ListThingTypesSyncType = (_ input: IotModel.ListThingTypesRequest) throws -> IotModel.ListThingTypesResponse
    typealias ListThingTypesAsyncType = (_ input: IotModel.ListThingTypesRequest, _ completion: @escaping (HTTPResult<IotModel.ListThingTypesResponse>) -> ()) throws -> ()
    typealias ListThingsSyncType = (_ input: IotModel.ListThingsRequest) throws -> IotModel.ListThingsResponse
    typealias ListThingsAsyncType = (_ input: IotModel.ListThingsRequest, _ completion: @escaping (HTTPResult<IotModel.ListThingsResponse>) -> ()) throws -> ()
    typealias ListThingsInBillingGroupSyncType = (_ input: IotModel.ListThingsInBillingGroupRequest) throws -> IotModel.ListThingsInBillingGroupResponse
    typealias ListThingsInBillingGroupAsyncType = (_ input: IotModel.ListThingsInBillingGroupRequest, _ completion: @escaping (HTTPResult<IotModel.ListThingsInBillingGroupResponse>) -> ()) throws -> ()
    typealias ListThingsInThingGroupSyncType = (_ input: IotModel.ListThingsInThingGroupRequest) throws -> IotModel.ListThingsInThingGroupResponse
    typealias ListThingsInThingGroupAsyncType = (_ input: IotModel.ListThingsInThingGroupRequest, _ completion: @escaping (HTTPResult<IotModel.ListThingsInThingGroupResponse>) -> ()) throws -> ()
    typealias ListTopicRulesSyncType = (_ input: IotModel.ListTopicRulesRequest) throws -> IotModel.ListTopicRulesResponse
    typealias ListTopicRulesAsyncType = (_ input: IotModel.ListTopicRulesRequest, _ completion: @escaping (HTTPResult<IotModel.ListTopicRulesResponse>) -> ()) throws -> ()
    typealias ListV2LoggingLevelsSyncType = (_ input: IotModel.ListV2LoggingLevelsRequest) throws -> IotModel.ListV2LoggingLevelsResponse
    typealias ListV2LoggingLevelsAsyncType = (_ input: IotModel.ListV2LoggingLevelsRequest, _ completion: @escaping (HTTPResult<IotModel.ListV2LoggingLevelsResponse>) -> ()) throws -> ()
    typealias ListViolationEventsSyncType = (_ input: IotModel.ListViolationEventsRequest) throws -> IotModel.ListViolationEventsResponse
    typealias ListViolationEventsAsyncType = (_ input: IotModel.ListViolationEventsRequest, _ completion: @escaping (HTTPResult<IotModel.ListViolationEventsResponse>) -> ()) throws -> ()
    typealias RegisterCACertificateSyncType = (_ input: IotModel.RegisterCACertificateRequest) throws -> IotModel.RegisterCACertificateResponse
    typealias RegisterCACertificateAsyncType = (_ input: IotModel.RegisterCACertificateRequest, _ completion: @escaping (HTTPResult<IotModel.RegisterCACertificateResponse>) -> ()) throws -> ()
    typealias RegisterCertificateSyncType = (_ input: IotModel.RegisterCertificateRequest) throws -> IotModel.RegisterCertificateResponse
    typealias RegisterCertificateAsyncType = (_ input: IotModel.RegisterCertificateRequest, _ completion: @escaping (HTTPResult<IotModel.RegisterCertificateResponse>) -> ()) throws -> ()
    typealias RegisterThingSyncType = (_ input: IotModel.RegisterThingRequest) throws -> IotModel.RegisterThingResponse
    typealias RegisterThingAsyncType = (_ input: IotModel.RegisterThingRequest, _ completion: @escaping (HTTPResult<IotModel.RegisterThingResponse>) -> ()) throws -> ()
    typealias RejectCertificateTransferSyncType = (_ input: IotModel.RejectCertificateTransferRequest) throws -> ()
    typealias RejectCertificateTransferAsyncType = (_ input: IotModel.RejectCertificateTransferRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RemoveThingFromBillingGroupSyncType = (_ input: IotModel.RemoveThingFromBillingGroupRequest) throws -> IotModel.RemoveThingFromBillingGroupResponse
    typealias RemoveThingFromBillingGroupAsyncType = (_ input: IotModel.RemoveThingFromBillingGroupRequest, _ completion: @escaping (HTTPResult<IotModel.RemoveThingFromBillingGroupResponse>) -> ()) throws -> ()
    typealias RemoveThingFromThingGroupSyncType = (_ input: IotModel.RemoveThingFromThingGroupRequest) throws -> IotModel.RemoveThingFromThingGroupResponse
    typealias RemoveThingFromThingGroupAsyncType = (_ input: IotModel.RemoveThingFromThingGroupRequest, _ completion: @escaping (HTTPResult<IotModel.RemoveThingFromThingGroupResponse>) -> ()) throws -> ()
    typealias ReplaceTopicRuleSyncType = (_ input: IotModel.ReplaceTopicRuleRequest) throws -> ()
    typealias ReplaceTopicRuleAsyncType = (_ input: IotModel.ReplaceTopicRuleRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias SearchIndexSyncType = (_ input: IotModel.SearchIndexRequest) throws -> IotModel.SearchIndexResponse
    typealias SearchIndexAsyncType = (_ input: IotModel.SearchIndexRequest, _ completion: @escaping (HTTPResult<IotModel.SearchIndexResponse>) -> ()) throws -> ()
    typealias SetDefaultAuthorizerSyncType = (_ input: IotModel.SetDefaultAuthorizerRequest) throws -> IotModel.SetDefaultAuthorizerResponse
    typealias SetDefaultAuthorizerAsyncType = (_ input: IotModel.SetDefaultAuthorizerRequest, _ completion: @escaping (HTTPResult<IotModel.SetDefaultAuthorizerResponse>) -> ()) throws -> ()
    typealias SetDefaultPolicyVersionSyncType = (_ input: IotModel.SetDefaultPolicyVersionRequest) throws -> ()
    typealias SetDefaultPolicyVersionAsyncType = (_ input: IotModel.SetDefaultPolicyVersionRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias SetLoggingOptionsSyncType = (_ input: IotModel.SetLoggingOptionsRequest) throws -> ()
    typealias SetLoggingOptionsAsyncType = (_ input: IotModel.SetLoggingOptionsRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias SetV2LoggingLevelSyncType = (_ input: IotModel.SetV2LoggingLevelRequest) throws -> ()
    typealias SetV2LoggingLevelAsyncType = (_ input: IotModel.SetV2LoggingLevelRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias SetV2LoggingOptionsSyncType = (_ input: IotModel.SetV2LoggingOptionsRequest) throws -> ()
    typealias SetV2LoggingOptionsAsyncType = (_ input: IotModel.SetV2LoggingOptionsRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias StartAuditMitigationActionsTaskSyncType = (_ input: IotModel.StartAuditMitigationActionsTaskRequest) throws -> IotModel.StartAuditMitigationActionsTaskResponse
    typealias StartAuditMitigationActionsTaskAsyncType = (_ input: IotModel.StartAuditMitigationActionsTaskRequest, _ completion: @escaping (HTTPResult<IotModel.StartAuditMitigationActionsTaskResponse>) -> ()) throws -> ()
    typealias StartOnDemandAuditTaskSyncType = (_ input: IotModel.StartOnDemandAuditTaskRequest) throws -> IotModel.StartOnDemandAuditTaskResponse
    typealias StartOnDemandAuditTaskAsyncType = (_ input: IotModel.StartOnDemandAuditTaskRequest, _ completion: @escaping (HTTPResult<IotModel.StartOnDemandAuditTaskResponse>) -> ()) throws -> ()
    typealias StartThingRegistrationTaskSyncType = (_ input: IotModel.StartThingRegistrationTaskRequest) throws -> IotModel.StartThingRegistrationTaskResponse
    typealias StartThingRegistrationTaskAsyncType = (_ input: IotModel.StartThingRegistrationTaskRequest, _ completion: @escaping (HTTPResult<IotModel.StartThingRegistrationTaskResponse>) -> ()) throws -> ()
    typealias StopThingRegistrationTaskSyncType = (_ input: IotModel.StopThingRegistrationTaskRequest) throws -> IotModel.StopThingRegistrationTaskResponse
    typealias StopThingRegistrationTaskAsyncType = (_ input: IotModel.StopThingRegistrationTaskRequest, _ completion: @escaping (HTTPResult<IotModel.StopThingRegistrationTaskResponse>) -> ()) throws -> ()
    typealias TagResourceSyncType = (_ input: IotModel.TagResourceRequest) throws -> IotModel.TagResourceResponse
    typealias TagResourceAsyncType = (_ input: IotModel.TagResourceRequest, _ completion: @escaping (HTTPResult<IotModel.TagResourceResponse>) -> ()) throws -> ()
    typealias TestAuthorizationSyncType = (_ input: IotModel.TestAuthorizationRequest) throws -> IotModel.TestAuthorizationResponse
    typealias TestAuthorizationAsyncType = (_ input: IotModel.TestAuthorizationRequest, _ completion: @escaping (HTTPResult<IotModel.TestAuthorizationResponse>) -> ()) throws -> ()
    typealias TestInvokeAuthorizerSyncType = (_ input: IotModel.TestInvokeAuthorizerRequest) throws -> IotModel.TestInvokeAuthorizerResponse
    typealias TestInvokeAuthorizerAsyncType = (_ input: IotModel.TestInvokeAuthorizerRequest, _ completion: @escaping (HTTPResult<IotModel.TestInvokeAuthorizerResponse>) -> ()) throws -> ()
    typealias TransferCertificateSyncType = (_ input: IotModel.TransferCertificateRequest) throws -> IotModel.TransferCertificateResponse
    typealias TransferCertificateAsyncType = (_ input: IotModel.TransferCertificateRequest, _ completion: @escaping (HTTPResult<IotModel.TransferCertificateResponse>) -> ()) throws -> ()
    typealias UntagResourceSyncType = (_ input: IotModel.UntagResourceRequest) throws -> IotModel.UntagResourceResponse
    typealias UntagResourceAsyncType = (_ input: IotModel.UntagResourceRequest, _ completion: @escaping (HTTPResult<IotModel.UntagResourceResponse>) -> ()) throws -> ()
    typealias UpdateAccountAuditConfigurationSyncType = (_ input: IotModel.UpdateAccountAuditConfigurationRequest) throws -> IotModel.UpdateAccountAuditConfigurationResponse
    typealias UpdateAccountAuditConfigurationAsyncType = (_ input: IotModel.UpdateAccountAuditConfigurationRequest, _ completion: @escaping (HTTPResult<IotModel.UpdateAccountAuditConfigurationResponse>) -> ()) throws -> ()
    typealias UpdateAuthorizerSyncType = (_ input: IotModel.UpdateAuthorizerRequest) throws -> IotModel.UpdateAuthorizerResponse
    typealias UpdateAuthorizerAsyncType = (_ input: IotModel.UpdateAuthorizerRequest, _ completion: @escaping (HTTPResult<IotModel.UpdateAuthorizerResponse>) -> ()) throws -> ()
    typealias UpdateBillingGroupSyncType = (_ input: IotModel.UpdateBillingGroupRequest) throws -> IotModel.UpdateBillingGroupResponse
    typealias UpdateBillingGroupAsyncType = (_ input: IotModel.UpdateBillingGroupRequest, _ completion: @escaping (HTTPResult<IotModel.UpdateBillingGroupResponse>) -> ()) throws -> ()
    typealias UpdateCACertificateSyncType = (_ input: IotModel.UpdateCACertificateRequest) throws -> ()
    typealias UpdateCACertificateAsyncType = (_ input: IotModel.UpdateCACertificateRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias UpdateCertificateSyncType = (_ input: IotModel.UpdateCertificateRequest) throws -> ()
    typealias UpdateCertificateAsyncType = (_ input: IotModel.UpdateCertificateRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias UpdateDynamicThingGroupSyncType = (_ input: IotModel.UpdateDynamicThingGroupRequest) throws -> IotModel.UpdateDynamicThingGroupResponse
    typealias UpdateDynamicThingGroupAsyncType = (_ input: IotModel.UpdateDynamicThingGroupRequest, _ completion: @escaping (HTTPResult<IotModel.UpdateDynamicThingGroupResponse>) -> ()) throws -> ()
    typealias UpdateEventConfigurationsSyncType = (_ input: IotModel.UpdateEventConfigurationsRequest) throws -> IotModel.UpdateEventConfigurationsResponse
    typealias UpdateEventConfigurationsAsyncType = (_ input: IotModel.UpdateEventConfigurationsRequest, _ completion: @escaping (HTTPResult<IotModel.UpdateEventConfigurationsResponse>) -> ()) throws -> ()
    typealias UpdateIndexingConfigurationSyncType = (_ input: IotModel.UpdateIndexingConfigurationRequest) throws -> IotModel.UpdateIndexingConfigurationResponse
    typealias UpdateIndexingConfigurationAsyncType = (_ input: IotModel.UpdateIndexingConfigurationRequest, _ completion: @escaping (HTTPResult<IotModel.UpdateIndexingConfigurationResponse>) -> ()) throws -> ()
    typealias UpdateJobSyncType = (_ input: IotModel.UpdateJobRequest) throws -> ()
    typealias UpdateJobAsyncType = (_ input: IotModel.UpdateJobRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias UpdateMitigationActionSyncType = (_ input: IotModel.UpdateMitigationActionRequest) throws -> IotModel.UpdateMitigationActionResponse
    typealias UpdateMitigationActionAsyncType = (_ input: IotModel.UpdateMitigationActionRequest, _ completion: @escaping (HTTPResult<IotModel.UpdateMitigationActionResponse>) -> ()) throws -> ()
    typealias UpdateRoleAliasSyncType = (_ input: IotModel.UpdateRoleAliasRequest) throws -> IotModel.UpdateRoleAliasResponse
    typealias UpdateRoleAliasAsyncType = (_ input: IotModel.UpdateRoleAliasRequest, _ completion: @escaping (HTTPResult<IotModel.UpdateRoleAliasResponse>) -> ()) throws -> ()
    typealias UpdateScheduledAuditSyncType = (_ input: IotModel.UpdateScheduledAuditRequest) throws -> IotModel.UpdateScheduledAuditResponse
    typealias UpdateScheduledAuditAsyncType = (_ input: IotModel.UpdateScheduledAuditRequest, _ completion: @escaping (HTTPResult<IotModel.UpdateScheduledAuditResponse>) -> ()) throws -> ()
    typealias UpdateSecurityProfileSyncType = (_ input: IotModel.UpdateSecurityProfileRequest) throws -> IotModel.UpdateSecurityProfileResponse
    typealias UpdateSecurityProfileAsyncType = (_ input: IotModel.UpdateSecurityProfileRequest, _ completion: @escaping (HTTPResult<IotModel.UpdateSecurityProfileResponse>) -> ()) throws -> ()
    typealias UpdateStreamSyncType = (_ input: IotModel.UpdateStreamRequest) throws -> IotModel.UpdateStreamResponse
    typealias UpdateStreamAsyncType = (_ input: IotModel.UpdateStreamRequest, _ completion: @escaping (HTTPResult<IotModel.UpdateStreamResponse>) -> ()) throws -> ()
    typealias UpdateThingSyncType = (_ input: IotModel.UpdateThingRequest) throws -> IotModel.UpdateThingResponse
    typealias UpdateThingAsyncType = (_ input: IotModel.UpdateThingRequest, _ completion: @escaping (HTTPResult<IotModel.UpdateThingResponse>) -> ()) throws -> ()
    typealias UpdateThingGroupSyncType = (_ input: IotModel.UpdateThingGroupRequest) throws -> IotModel.UpdateThingGroupResponse
    typealias UpdateThingGroupAsyncType = (_ input: IotModel.UpdateThingGroupRequest, _ completion: @escaping (HTTPResult<IotModel.UpdateThingGroupResponse>) -> ()) throws -> ()
    typealias UpdateThingGroupsForThingSyncType = (_ input: IotModel.UpdateThingGroupsForThingRequest) throws -> IotModel.UpdateThingGroupsForThingResponse
    typealias UpdateThingGroupsForThingAsyncType = (_ input: IotModel.UpdateThingGroupsForThingRequest, _ completion: @escaping (HTTPResult<IotModel.UpdateThingGroupsForThingResponse>) -> ()) throws -> ()
    typealias ValidateSecurityProfileBehaviorsSyncType = (_ input: IotModel.ValidateSecurityProfileBehaviorsRequest) throws -> IotModel.ValidateSecurityProfileBehaviorsResponse
    typealias ValidateSecurityProfileBehaviorsAsyncType = (_ input: IotModel.ValidateSecurityProfileBehaviorsRequest, _ completion: @escaping (HTTPResult<IotModel.ValidateSecurityProfileBehaviorsResponse>) -> ()) throws -> ()

    /**
     Invokes the AcceptCertificateTransfer operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcceptCertificateTransferRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, transferAlreadyCompleted, unauthorized.
     */
    func acceptCertificateTransferAsync(input: IotModel.AcceptCertificateTransferRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the AcceptCertificateTransfer operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcceptCertificateTransferRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, transferAlreadyCompleted, unauthorized.
     */
    func acceptCertificateTransferSync(input: IotModel.AcceptCertificateTransferRequest) throws

    /**
     Invokes the AddThingToBillingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddThingToBillingGroupRequest object being passed to this operation.
         - completion: The AddThingToBillingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The AddThingToBillingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func addThingToBillingGroupAsync(input: IotModel.AddThingToBillingGroupRequest, completion: @escaping (HTTPResult<IotModel.AddThingToBillingGroupResponse>) -> ()) throws

    /**
     Invokes the AddThingToBillingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddThingToBillingGroupRequest object being passed to this operation.
     - Returns: The AddThingToBillingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func addThingToBillingGroupSync(input: IotModel.AddThingToBillingGroupRequest) throws -> IotModel.AddThingToBillingGroupResponse

    /**
     Invokes the AddThingToThingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddThingToThingGroupRequest object being passed to this operation.
         - completion: The AddThingToThingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The AddThingToThingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func addThingToThingGroupAsync(input: IotModel.AddThingToThingGroupRequest, completion: @escaping (HTTPResult<IotModel.AddThingToThingGroupResponse>) -> ()) throws

    /**
     Invokes the AddThingToThingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddThingToThingGroupRequest object being passed to this operation.
     - Returns: The AddThingToThingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func addThingToThingGroupSync(input: IotModel.AddThingToThingGroupRequest) throws -> IotModel.AddThingToThingGroupResponse

    /**
     Invokes the AssociateTargetsWithJob operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateTargetsWithJobRequest object being passed to this operation.
         - completion: The AssociateTargetsWithJobResponse object or an error will be passed to this 
           callback when the operation is complete. The AssociateTargetsWithJobResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling.
     */
    func associateTargetsWithJobAsync(input: IotModel.AssociateTargetsWithJobRequest, completion: @escaping (HTTPResult<IotModel.AssociateTargetsWithJobResponse>) -> ()) throws

    /**
     Invokes the AssociateTargetsWithJob operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateTargetsWithJobRequest object being passed to this operation.
     - Returns: The AssociateTargetsWithJobResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling.
     */
    func associateTargetsWithJobSync(input: IotModel.AssociateTargetsWithJobRequest) throws -> IotModel.AssociateTargetsWithJobResponse

    /**
     Invokes the AttachPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachPolicyRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func attachPolicyAsync(input: IotModel.AttachPolicyRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the AttachPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachPolicyRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func attachPolicySync(input: IotModel.AttachPolicyRequest) throws

    /**
     Invokes the AttachPrincipalPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachPrincipalPolicyRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func attachPrincipalPolicyAsync(input: IotModel.AttachPrincipalPolicyRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the AttachPrincipalPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachPrincipalPolicyRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func attachPrincipalPolicySync(input: IotModel.AttachPrincipalPolicyRequest) throws

    /**
     Invokes the AttachSecurityProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachSecurityProfileRequest object being passed to this operation.
         - completion: The AttachSecurityProfileResponse object or an error will be passed to this 
           callback when the operation is complete. The AttachSecurityProfileResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceNotFound, throttling, versionConflict.
     */
    func attachSecurityProfileAsync(input: IotModel.AttachSecurityProfileRequest, completion: @escaping (HTTPResult<IotModel.AttachSecurityProfileResponse>) -> ()) throws

    /**
     Invokes the AttachSecurityProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachSecurityProfileRequest object being passed to this operation.
     - Returns: The AttachSecurityProfileResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceNotFound, throttling, versionConflict.
     */
    func attachSecurityProfileSync(input: IotModel.AttachSecurityProfileRequest) throws -> IotModel.AttachSecurityProfileResponse

    /**
     Invokes the AttachThingPrincipal operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachThingPrincipalRequest object being passed to this operation.
         - completion: The AttachThingPrincipalResponse object or an error will be passed to this 
           callback when the operation is complete. The AttachThingPrincipalResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func attachThingPrincipalAsync(input: IotModel.AttachThingPrincipalRequest, completion: @escaping (HTTPResult<IotModel.AttachThingPrincipalResponse>) -> ()) throws

    /**
     Invokes the AttachThingPrincipal operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachThingPrincipalRequest object being passed to this operation.
     - Returns: The AttachThingPrincipalResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func attachThingPrincipalSync(input: IotModel.AttachThingPrincipalRequest) throws -> IotModel.AttachThingPrincipalResponse

    /**
     Invokes the CancelAuditMitigationActionsTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelAuditMitigationActionsTaskRequest object being passed to this operation.
         - completion: The CancelAuditMitigationActionsTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The CancelAuditMitigationActionsTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func cancelAuditMitigationActionsTaskAsync(input: IotModel.CancelAuditMitigationActionsTaskRequest, completion: @escaping (HTTPResult<IotModel.CancelAuditMitigationActionsTaskResponse>) -> ()) throws

    /**
     Invokes the CancelAuditMitigationActionsTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelAuditMitigationActionsTaskRequest object being passed to this operation.
     - Returns: The CancelAuditMitigationActionsTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func cancelAuditMitigationActionsTaskSync(input: IotModel.CancelAuditMitigationActionsTaskRequest) throws -> IotModel.CancelAuditMitigationActionsTaskResponse

    /**
     Invokes the CancelAuditTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelAuditTaskRequest object being passed to this operation.
         - completion: The CancelAuditTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The CancelAuditTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func cancelAuditTaskAsync(input: IotModel.CancelAuditTaskRequest, completion: @escaping (HTTPResult<IotModel.CancelAuditTaskResponse>) -> ()) throws

    /**
     Invokes the CancelAuditTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelAuditTaskRequest object being passed to this operation.
     - Returns: The CancelAuditTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func cancelAuditTaskSync(input: IotModel.CancelAuditTaskRequest) throws -> IotModel.CancelAuditTaskResponse

    /**
     Invokes the CancelCertificateTransfer operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelCertificateTransferRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, transferAlreadyCompleted, unauthorized.
     */
    func cancelCertificateTransferAsync(input: IotModel.CancelCertificateTransferRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the CancelCertificateTransfer operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelCertificateTransferRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, transferAlreadyCompleted, unauthorized.
     */
    func cancelCertificateTransferSync(input: IotModel.CancelCertificateTransferRequest) throws

    /**
     Invokes the CancelJob operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelJobRequest object being passed to this operation.
         - completion: The CancelJobResponse object or an error will be passed to this 
           callback when the operation is complete. The CancelJobResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    func cancelJobAsync(input: IotModel.CancelJobRequest, completion: @escaping (HTTPResult<IotModel.CancelJobResponse>) -> ()) throws

    /**
     Invokes the CancelJob operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelJobRequest object being passed to this operation.
     - Returns: The CancelJobResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    func cancelJobSync(input: IotModel.CancelJobRequest) throws -> IotModel.CancelJobResponse

    /**
     Invokes the CancelJobExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelJobExecutionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidRequest, invalidStateTransition, resourceNotFound, serviceUnavailable, throttling, versionConflict.
     */
    func cancelJobExecutionAsync(input: IotModel.CancelJobExecutionRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the CancelJobExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelJobExecutionRequest object being passed to this operation.
     - Throws: invalidRequest, invalidStateTransition, resourceNotFound, serviceUnavailable, throttling, versionConflict.
     */
    func cancelJobExecutionSync(input: IotModel.CancelJobExecutionRequest) throws

    /**
     Invokes the ClearDefaultAuthorizer operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ClearDefaultAuthorizerRequest object being passed to this operation.
         - completion: The ClearDefaultAuthorizerResponse object or an error will be passed to this 
           callback when the operation is complete. The ClearDefaultAuthorizerResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func clearDefaultAuthorizerAsync(input: IotModel.ClearDefaultAuthorizerRequest, completion: @escaping (HTTPResult<IotModel.ClearDefaultAuthorizerResponse>) -> ()) throws

    /**
     Invokes the ClearDefaultAuthorizer operation waiting for the response before returning.

     - Parameters:
         - input: The validated ClearDefaultAuthorizerRequest object being passed to this operation.
     - Returns: The ClearDefaultAuthorizerResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func clearDefaultAuthorizerSync(input: IotModel.ClearDefaultAuthorizerRequest) throws -> IotModel.ClearDefaultAuthorizerResponse

    /**
     Invokes the CreateAuthorizer operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateAuthorizerRequest object being passed to this operation.
         - completion: The CreateAuthorizerResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateAuthorizerResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceAlreadyExists, serviceUnavailable, throttling, unauthorized.
     */
    func createAuthorizerAsync(input: IotModel.CreateAuthorizerRequest, completion: @escaping (HTTPResult<IotModel.CreateAuthorizerResponse>) -> ()) throws

    /**
     Invokes the CreateAuthorizer operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateAuthorizerRequest object being passed to this operation.
     - Returns: The CreateAuthorizerResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceAlreadyExists, serviceUnavailable, throttling, unauthorized.
     */
    func createAuthorizerSync(input: IotModel.CreateAuthorizerRequest) throws -> IotModel.CreateAuthorizerResponse

    /**
     Invokes the CreateBillingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateBillingGroupRequest object being passed to this operation.
         - completion: The CreateBillingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateBillingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceAlreadyExists, throttling.
     */
    func createBillingGroupAsync(input: IotModel.CreateBillingGroupRequest, completion: @escaping (HTTPResult<IotModel.CreateBillingGroupResponse>) -> ()) throws

    /**
     Invokes the CreateBillingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateBillingGroupRequest object being passed to this operation.
     - Returns: The CreateBillingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceAlreadyExists, throttling.
     */
    func createBillingGroupSync(input: IotModel.CreateBillingGroupRequest) throws -> IotModel.CreateBillingGroupResponse

    /**
     Invokes the CreateCertificateFromCsr operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateCertificateFromCsrRequest object being passed to this operation.
         - completion: The CreateCertificateFromCsrResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateCertificateFromCsrResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func createCertificateFromCsrAsync(input: IotModel.CreateCertificateFromCsrRequest, completion: @escaping (HTTPResult<IotModel.CreateCertificateFromCsrResponse>) -> ()) throws

    /**
     Invokes the CreateCertificateFromCsr operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateCertificateFromCsrRequest object being passed to this operation.
     - Returns: The CreateCertificateFromCsrResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func createCertificateFromCsrSync(input: IotModel.CreateCertificateFromCsrRequest) throws -> IotModel.CreateCertificateFromCsrResponse

    /**
     Invokes the CreateDynamicThingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDynamicThingGroupRequest object being passed to this operation.
         - completion: The CreateDynamicThingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateDynamicThingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidQuery, invalidRequest, limitExceeded, resourceAlreadyExists, resourceNotFound, throttling.
     */
    func createDynamicThingGroupAsync(input: IotModel.CreateDynamicThingGroupRequest, completion: @escaping (HTTPResult<IotModel.CreateDynamicThingGroupResponse>) -> ()) throws

    /**
     Invokes the CreateDynamicThingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDynamicThingGroupRequest object being passed to this operation.
     - Returns: The CreateDynamicThingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidQuery, invalidRequest, limitExceeded, resourceAlreadyExists, resourceNotFound, throttling.
     */
    func createDynamicThingGroupSync(input: IotModel.CreateDynamicThingGroupRequest) throws -> IotModel.CreateDynamicThingGroupResponse

    /**
     Invokes the CreateJob operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateJobRequest object being passed to this operation.
         - completion: The CreateJobResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateJobResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidRequest, limitExceeded, resourceAlreadyExists, resourceNotFound, serviceUnavailable, throttling.
     */
    func createJobAsync(input: IotModel.CreateJobRequest, completion: @escaping (HTTPResult<IotModel.CreateJobResponse>) -> ()) throws

    /**
     Invokes the CreateJob operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateJobRequest object being passed to this operation.
     - Returns: The CreateJobResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidRequest, limitExceeded, resourceAlreadyExists, resourceNotFound, serviceUnavailable, throttling.
     */
    func createJobSync(input: IotModel.CreateJobRequest) throws -> IotModel.CreateJobResponse

    /**
     Invokes the CreateKeysAndCertificate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateKeysAndCertificateRequest object being passed to this operation.
         - completion: The CreateKeysAndCertificateResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateKeysAndCertificateResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func createKeysAndCertificateAsync(input: IotModel.CreateKeysAndCertificateRequest, completion: @escaping (HTTPResult<IotModel.CreateKeysAndCertificateResponse>) -> ()) throws

    /**
     Invokes the CreateKeysAndCertificate operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateKeysAndCertificateRequest object being passed to this operation.
     - Returns: The CreateKeysAndCertificateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func createKeysAndCertificateSync(input: IotModel.CreateKeysAndCertificateRequest) throws -> IotModel.CreateKeysAndCertificateResponse

    /**
     Invokes the CreateMitigationAction operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateMitigationActionRequest object being passed to this operation.
         - completion: The CreateMitigationActionResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateMitigationActionResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceAlreadyExists, throttling.
     */
    func createMitigationActionAsync(input: IotModel.CreateMitigationActionRequest, completion: @escaping (HTTPResult<IotModel.CreateMitigationActionResponse>) -> ()) throws

    /**
     Invokes the CreateMitigationAction operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateMitigationActionRequest object being passed to this operation.
     - Returns: The CreateMitigationActionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceAlreadyExists, throttling.
     */
    func createMitigationActionSync(input: IotModel.CreateMitigationActionRequest) throws -> IotModel.CreateMitigationActionResponse

    /**
     Invokes the CreateOTAUpdate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateOTAUpdateRequest object being passed to this operation.
         - completion: The CreateOTAUpdateResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateOTAUpdateResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceAlreadyExists, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func createOTAUpdateAsync(input: IotModel.CreateOTAUpdateRequest, completion: @escaping (HTTPResult<IotModel.CreateOTAUpdateResponse>) -> ()) throws

    /**
     Invokes the CreateOTAUpdate operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateOTAUpdateRequest object being passed to this operation.
     - Returns: The CreateOTAUpdateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceAlreadyExists, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func createOTAUpdateSync(input: IotModel.CreateOTAUpdateRequest) throws -> IotModel.CreateOTAUpdateResponse

    /**
     Invokes the CreatePolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreatePolicyRequest object being passed to this operation.
         - completion: The CreatePolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The CreatePolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, malformedPolicy, resourceAlreadyExists, serviceUnavailable, throttling, unauthorized.
     */
    func createPolicyAsync(input: IotModel.CreatePolicyRequest, completion: @escaping (HTTPResult<IotModel.CreatePolicyResponse>) -> ()) throws

    /**
     Invokes the CreatePolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreatePolicyRequest object being passed to this operation.
     - Returns: The CreatePolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, malformedPolicy, resourceAlreadyExists, serviceUnavailable, throttling, unauthorized.
     */
    func createPolicySync(input: IotModel.CreatePolicyRequest) throws -> IotModel.CreatePolicyResponse

    /**
     Invokes the CreatePolicyVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreatePolicyVersionRequest object being passed to this operation.
         - completion: The CreatePolicyVersionResponse object or an error will be passed to this 
           callback when the operation is complete. The CreatePolicyVersionResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, malformedPolicy, resourceNotFound, serviceUnavailable, throttling, unauthorized, versionsLimitExceeded.
     */
    func createPolicyVersionAsync(input: IotModel.CreatePolicyVersionRequest, completion: @escaping (HTTPResult<IotModel.CreatePolicyVersionResponse>) -> ()) throws

    /**
     Invokes the CreatePolicyVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreatePolicyVersionRequest object being passed to this operation.
     - Returns: The CreatePolicyVersionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, malformedPolicy, resourceNotFound, serviceUnavailable, throttling, unauthorized, versionsLimitExceeded.
     */
    func createPolicyVersionSync(input: IotModel.CreatePolicyVersionRequest) throws -> IotModel.CreatePolicyVersionResponse

    /**
     Invokes the CreateRoleAlias operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateRoleAliasRequest object being passed to this operation.
         - completion: The CreateRoleAliasResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateRoleAliasResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceAlreadyExists, serviceUnavailable, throttling, unauthorized.
     */
    func createRoleAliasAsync(input: IotModel.CreateRoleAliasRequest, completion: @escaping (HTTPResult<IotModel.CreateRoleAliasResponse>) -> ()) throws

    /**
     Invokes the CreateRoleAlias operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateRoleAliasRequest object being passed to this operation.
     - Returns: The CreateRoleAliasResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceAlreadyExists, serviceUnavailable, throttling, unauthorized.
     */
    func createRoleAliasSync(input: IotModel.CreateRoleAliasRequest) throws -> IotModel.CreateRoleAliasResponse

    /**
     Invokes the CreateScheduledAudit operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateScheduledAuditRequest object being passed to this operation.
         - completion: The CreateScheduledAuditResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateScheduledAuditResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceAlreadyExists, throttling.
     */
    func createScheduledAuditAsync(input: IotModel.CreateScheduledAuditRequest, completion: @escaping (HTTPResult<IotModel.CreateScheduledAuditResponse>) -> ()) throws

    /**
     Invokes the CreateScheduledAudit operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateScheduledAuditRequest object being passed to this operation.
     - Returns: The CreateScheduledAuditResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceAlreadyExists, throttling.
     */
    func createScheduledAuditSync(input: IotModel.CreateScheduledAuditRequest) throws -> IotModel.CreateScheduledAuditResponse

    /**
     Invokes the CreateSecurityProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateSecurityProfileRequest object being passed to this operation.
         - completion: The CreateSecurityProfileResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateSecurityProfileResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceAlreadyExists, throttling.
     */
    func createSecurityProfileAsync(input: IotModel.CreateSecurityProfileRequest, completion: @escaping (HTTPResult<IotModel.CreateSecurityProfileResponse>) -> ()) throws

    /**
     Invokes the CreateSecurityProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateSecurityProfileRequest object being passed to this operation.
     - Returns: The CreateSecurityProfileResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceAlreadyExists, throttling.
     */
    func createSecurityProfileSync(input: IotModel.CreateSecurityProfileRequest) throws -> IotModel.CreateSecurityProfileResponse

    /**
     Invokes the CreateStream operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateStreamRequest object being passed to this operation.
         - completion: The CreateStreamResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateStreamResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceAlreadyExists, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func createStreamAsync(input: IotModel.CreateStreamRequest, completion: @escaping (HTTPResult<IotModel.CreateStreamResponse>) -> ()) throws

    /**
     Invokes the CreateStream operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateStreamRequest object being passed to this operation.
     - Returns: The CreateStreamResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceAlreadyExists, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func createStreamSync(input: IotModel.CreateStreamRequest) throws -> IotModel.CreateStreamResponse

    /**
     Invokes the CreateThing operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateThingRequest object being passed to this operation.
         - completion: The CreateThingResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateThingResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceAlreadyExists, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func createThingAsync(input: IotModel.CreateThingRequest, completion: @escaping (HTTPResult<IotModel.CreateThingResponse>) -> ()) throws

    /**
     Invokes the CreateThing operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateThingRequest object being passed to this operation.
     - Returns: The CreateThingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceAlreadyExists, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func createThingSync(input: IotModel.CreateThingRequest) throws -> IotModel.CreateThingResponse

    /**
     Invokes the CreateThingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateThingGroupRequest object being passed to this operation.
         - completion: The CreateThingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateThingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceAlreadyExists, throttling.
     */
    func createThingGroupAsync(input: IotModel.CreateThingGroupRequest, completion: @escaping (HTTPResult<IotModel.CreateThingGroupResponse>) -> ()) throws

    /**
     Invokes the CreateThingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateThingGroupRequest object being passed to this operation.
     - Returns: The CreateThingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceAlreadyExists, throttling.
     */
    func createThingGroupSync(input: IotModel.CreateThingGroupRequest) throws -> IotModel.CreateThingGroupResponse

    /**
     Invokes the CreateThingType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateThingTypeRequest object being passed to this operation.
         - completion: The CreateThingTypeResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateThingTypeResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceAlreadyExists, serviceUnavailable, throttling, unauthorized.
     */
    func createThingTypeAsync(input: IotModel.CreateThingTypeRequest, completion: @escaping (HTTPResult<IotModel.CreateThingTypeResponse>) -> ()) throws

    /**
     Invokes the CreateThingType operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateThingTypeRequest object being passed to this operation.
     - Returns: The CreateThingTypeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceAlreadyExists, serviceUnavailable, throttling, unauthorized.
     */
    func createThingTypeSync(input: IotModel.CreateThingTypeRequest) throws -> IotModel.CreateThingTypeResponse

    /**
     Invokes the CreateTopicRule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTopicRuleRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: conflictingResourceUpdate, internal, invalidRequest, resourceAlreadyExists, serviceUnavailable, sqlParse.
     */
    func createTopicRuleAsync(input: IotModel.CreateTopicRuleRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the CreateTopicRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTopicRuleRequest object being passed to this operation.
     - Throws: conflictingResourceUpdate, internal, invalidRequest, resourceAlreadyExists, serviceUnavailable, sqlParse.
     */
    func createTopicRuleSync(input: IotModel.CreateTopicRuleRequest) throws

    /**
     Invokes the DeleteAccountAuditConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteAccountAuditConfigurationRequest object being passed to this operation.
         - completion: The DeleteAccountAuditConfigurationResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteAccountAuditConfigurationResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func deleteAccountAuditConfigurationAsync(input: IotModel.DeleteAccountAuditConfigurationRequest, completion: @escaping (HTTPResult<IotModel.DeleteAccountAuditConfigurationResponse>) -> ()) throws

    /**
     Invokes the DeleteAccountAuditConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteAccountAuditConfigurationRequest object being passed to this operation.
     - Returns: The DeleteAccountAuditConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func deleteAccountAuditConfigurationSync(input: IotModel.DeleteAccountAuditConfigurationRequest) throws -> IotModel.DeleteAccountAuditConfigurationResponse

    /**
     Invokes the DeleteAuthorizer operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteAuthorizerRequest object being passed to this operation.
         - completion: The DeleteAuthorizerResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteAuthorizerResponse
           object will be validated before being returned to caller.
           The possible errors are: deleteConflict, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func deleteAuthorizerAsync(input: IotModel.DeleteAuthorizerRequest, completion: @escaping (HTTPResult<IotModel.DeleteAuthorizerResponse>) -> ()) throws

    /**
     Invokes the DeleteAuthorizer operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteAuthorizerRequest object being passed to this operation.
     - Returns: The DeleteAuthorizerResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: deleteConflict, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func deleteAuthorizerSync(input: IotModel.DeleteAuthorizerRequest) throws -> IotModel.DeleteAuthorizerResponse

    /**
     Invokes the DeleteBillingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBillingGroupRequest object being passed to this operation.
         - completion: The DeleteBillingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteBillingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling, versionConflict.
     */
    func deleteBillingGroupAsync(input: IotModel.DeleteBillingGroupRequest, completion: @escaping (HTTPResult<IotModel.DeleteBillingGroupResponse>) -> ()) throws

    /**
     Invokes the DeleteBillingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBillingGroupRequest object being passed to this operation.
     - Returns: The DeleteBillingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling, versionConflict.
     */
    func deleteBillingGroupSync(input: IotModel.DeleteBillingGroupRequest) throws -> IotModel.DeleteBillingGroupResponse

    /**
     Invokes the DeleteCACertificate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteCACertificateRequest object being passed to this operation.
         - completion: The DeleteCACertificateResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteCACertificateResponse
           object will be validated before being returned to caller.
           The possible errors are: certificateState, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func deleteCACertificateAsync(input: IotModel.DeleteCACertificateRequest, completion: @escaping (HTTPResult<IotModel.DeleteCACertificateResponse>) -> ()) throws

    /**
     Invokes the DeleteCACertificate operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteCACertificateRequest object being passed to this operation.
     - Returns: The DeleteCACertificateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: certificateState, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func deleteCACertificateSync(input: IotModel.DeleteCACertificateRequest) throws -> IotModel.DeleteCACertificateResponse

    /**
     Invokes the DeleteCertificate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteCertificateRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: certificateState, deleteConflict, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func deleteCertificateAsync(input: IotModel.DeleteCertificateRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteCertificate operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteCertificateRequest object being passed to this operation.
     - Throws: certificateState, deleteConflict, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func deleteCertificateSync(input: IotModel.DeleteCertificateRequest) throws

    /**
     Invokes the DeleteDynamicThingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDynamicThingGroupRequest object being passed to this operation.
         - completion: The DeleteDynamicThingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteDynamicThingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling, versionConflict.
     */
    func deleteDynamicThingGroupAsync(input: IotModel.DeleteDynamicThingGroupRequest, completion: @escaping (HTTPResult<IotModel.DeleteDynamicThingGroupResponse>) -> ()) throws

    /**
     Invokes the DeleteDynamicThingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDynamicThingGroupRequest object being passed to this operation.
     - Returns: The DeleteDynamicThingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling, versionConflict.
     */
    func deleteDynamicThingGroupSync(input: IotModel.DeleteDynamicThingGroupRequest) throws -> IotModel.DeleteDynamicThingGroupResponse

    /**
     Invokes the DeleteJob operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteJobRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidRequest, invalidStateTransition, limitExceeded, resourceNotFound, serviceUnavailable, throttling.
     */
    func deleteJobAsync(input: IotModel.DeleteJobRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteJob operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteJobRequest object being passed to this operation.
     - Throws: invalidRequest, invalidStateTransition, limitExceeded, resourceNotFound, serviceUnavailable, throttling.
     */
    func deleteJobSync(input: IotModel.DeleteJobRequest) throws

    /**
     Invokes the DeleteJobExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteJobExecutionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidRequest, invalidStateTransition, resourceNotFound, serviceUnavailable, throttling.
     */
    func deleteJobExecutionAsync(input: IotModel.DeleteJobExecutionRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteJobExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteJobExecutionRequest object being passed to this operation.
     - Throws: invalidRequest, invalidStateTransition, resourceNotFound, serviceUnavailable, throttling.
     */
    func deleteJobExecutionSync(input: IotModel.DeleteJobExecutionRequest) throws

    /**
     Invokes the DeleteMitigationAction operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteMitigationActionRequest object being passed to this operation.
         - completion: The DeleteMitigationActionResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteMitigationActionResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling.
     */
    func deleteMitigationActionAsync(input: IotModel.DeleteMitigationActionRequest, completion: @escaping (HTTPResult<IotModel.DeleteMitigationActionResponse>) -> ()) throws

    /**
     Invokes the DeleteMitigationAction operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteMitigationActionRequest object being passed to this operation.
     - Returns: The DeleteMitigationActionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling.
     */
    func deleteMitigationActionSync(input: IotModel.DeleteMitigationActionRequest) throws -> IotModel.DeleteMitigationActionResponse

    /**
     Invokes the DeleteOTAUpdate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteOTAUpdateRequest object being passed to this operation.
         - completion: The DeleteOTAUpdateResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteOTAUpdateResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized, versionConflict.
     */
    func deleteOTAUpdateAsync(input: IotModel.DeleteOTAUpdateRequest, completion: @escaping (HTTPResult<IotModel.DeleteOTAUpdateResponse>) -> ()) throws

    /**
     Invokes the DeleteOTAUpdate operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteOTAUpdateRequest object being passed to this operation.
     - Returns: The DeleteOTAUpdateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized, versionConflict.
     */
    func deleteOTAUpdateSync(input: IotModel.DeleteOTAUpdateRequest) throws -> IotModel.DeleteOTAUpdateResponse

    /**
     Invokes the DeletePolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeletePolicyRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: deleteConflict, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func deletePolicyAsync(input: IotModel.DeletePolicyRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeletePolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeletePolicyRequest object being passed to this operation.
     - Throws: deleteConflict, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func deletePolicySync(input: IotModel.DeletePolicyRequest) throws

    /**
     Invokes the DeletePolicyVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeletePolicyVersionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: deleteConflict, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func deletePolicyVersionAsync(input: IotModel.DeletePolicyVersionRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeletePolicyVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeletePolicyVersionRequest object being passed to this operation.
     - Throws: deleteConflict, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func deletePolicyVersionSync(input: IotModel.DeletePolicyVersionRequest) throws

    /**
     Invokes the DeleteRegistrationCode operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteRegistrationCodeRequest object being passed to this operation.
         - completion: The DeleteRegistrationCodeResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteRegistrationCodeResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func deleteRegistrationCodeAsync(input: IotModel.DeleteRegistrationCodeRequest, completion: @escaping (HTTPResult<IotModel.DeleteRegistrationCodeResponse>) -> ()) throws

    /**
     Invokes the DeleteRegistrationCode operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteRegistrationCodeRequest object being passed to this operation.
     - Returns: The DeleteRegistrationCodeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func deleteRegistrationCodeSync(input: IotModel.DeleteRegistrationCodeRequest) throws -> IotModel.DeleteRegistrationCodeResponse

    /**
     Invokes the DeleteRoleAlias operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteRoleAliasRequest object being passed to this operation.
         - completion: The DeleteRoleAliasResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteRoleAliasResponse
           object will be validated before being returned to caller.
           The possible errors are: deleteConflict, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func deleteRoleAliasAsync(input: IotModel.DeleteRoleAliasRequest, completion: @escaping (HTTPResult<IotModel.DeleteRoleAliasResponse>) -> ()) throws

    /**
     Invokes the DeleteRoleAlias operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteRoleAliasRequest object being passed to this operation.
     - Returns: The DeleteRoleAliasResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: deleteConflict, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func deleteRoleAliasSync(input: IotModel.DeleteRoleAliasRequest) throws -> IotModel.DeleteRoleAliasResponse

    /**
     Invokes the DeleteScheduledAudit operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteScheduledAuditRequest object being passed to this operation.
         - completion: The DeleteScheduledAuditResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteScheduledAuditResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func deleteScheduledAuditAsync(input: IotModel.DeleteScheduledAuditRequest, completion: @escaping (HTTPResult<IotModel.DeleteScheduledAuditResponse>) -> ()) throws

    /**
     Invokes the DeleteScheduledAudit operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteScheduledAuditRequest object being passed to this operation.
     - Returns: The DeleteScheduledAuditResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func deleteScheduledAuditSync(input: IotModel.DeleteScheduledAuditRequest) throws -> IotModel.DeleteScheduledAuditResponse

    /**
     Invokes the DeleteSecurityProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteSecurityProfileRequest object being passed to this operation.
         - completion: The DeleteSecurityProfileResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteSecurityProfileResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling, versionConflict.
     */
    func deleteSecurityProfileAsync(input: IotModel.DeleteSecurityProfileRequest, completion: @escaping (HTTPResult<IotModel.DeleteSecurityProfileResponse>) -> ()) throws

    /**
     Invokes the DeleteSecurityProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteSecurityProfileRequest object being passed to this operation.
     - Returns: The DeleteSecurityProfileResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling, versionConflict.
     */
    func deleteSecurityProfileSync(input: IotModel.DeleteSecurityProfileRequest) throws -> IotModel.DeleteSecurityProfileResponse

    /**
     Invokes the DeleteStream operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteStreamRequest object being passed to this operation.
         - completion: The DeleteStreamResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteStreamResponse
           object will be validated before being returned to caller.
           The possible errors are: deleteConflict, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func deleteStreamAsync(input: IotModel.DeleteStreamRequest, completion: @escaping (HTTPResult<IotModel.DeleteStreamResponse>) -> ()) throws

    /**
     Invokes the DeleteStream operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteStreamRequest object being passed to this operation.
     - Returns: The DeleteStreamResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: deleteConflict, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func deleteStreamSync(input: IotModel.DeleteStreamRequest) throws -> IotModel.DeleteStreamResponse

    /**
     Invokes the DeleteThing operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteThingRequest object being passed to this operation.
         - completion: The DeleteThingResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteThingResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized, versionConflict.
     */
    func deleteThingAsync(input: IotModel.DeleteThingRequest, completion: @escaping (HTTPResult<IotModel.DeleteThingResponse>) -> ()) throws

    /**
     Invokes the DeleteThing operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteThingRequest object being passed to this operation.
     - Returns: The DeleteThingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized, versionConflict.
     */
    func deleteThingSync(input: IotModel.DeleteThingRequest) throws -> IotModel.DeleteThingResponse

    /**
     Invokes the DeleteThingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteThingGroupRequest object being passed to this operation.
         - completion: The DeleteThingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteThingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling, versionConflict.
     */
    func deleteThingGroupAsync(input: IotModel.DeleteThingGroupRequest, completion: @escaping (HTTPResult<IotModel.DeleteThingGroupResponse>) -> ()) throws

    /**
     Invokes the DeleteThingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteThingGroupRequest object being passed to this operation.
     - Returns: The DeleteThingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling, versionConflict.
     */
    func deleteThingGroupSync(input: IotModel.DeleteThingGroupRequest) throws -> IotModel.DeleteThingGroupResponse

    /**
     Invokes the DeleteThingType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteThingTypeRequest object being passed to this operation.
         - completion: The DeleteThingTypeResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteThingTypeResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func deleteThingTypeAsync(input: IotModel.DeleteThingTypeRequest, completion: @escaping (HTTPResult<IotModel.DeleteThingTypeResponse>) -> ()) throws

    /**
     Invokes the DeleteThingType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteThingTypeRequest object being passed to this operation.
     - Returns: The DeleteThingTypeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func deleteThingTypeSync(input: IotModel.DeleteThingTypeRequest) throws -> IotModel.DeleteThingTypeResponse

    /**
     Invokes the DeleteTopicRule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTopicRuleRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: conflictingResourceUpdate, internal, invalidRequest, serviceUnavailable, unauthorized.
     */
    func deleteTopicRuleAsync(input: IotModel.DeleteTopicRuleRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteTopicRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTopicRuleRequest object being passed to this operation.
     - Throws: conflictingResourceUpdate, internal, invalidRequest, serviceUnavailable, unauthorized.
     */
    func deleteTopicRuleSync(input: IotModel.DeleteTopicRuleRequest) throws

    /**
     Invokes the DeleteV2LoggingLevel operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteV2LoggingLevelRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internal, invalidRequest, serviceUnavailable.
     */
    func deleteV2LoggingLevelAsync(input: IotModel.DeleteV2LoggingLevelRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteV2LoggingLevel operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteV2LoggingLevelRequest object being passed to this operation.
     - Throws: internal, invalidRequest, serviceUnavailable.
     */
    func deleteV2LoggingLevelSync(input: IotModel.DeleteV2LoggingLevelRequest) throws

    /**
     Invokes the DeprecateThingType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeprecateThingTypeRequest object being passed to this operation.
         - completion: The DeprecateThingTypeResponse object or an error will be passed to this 
           callback when the operation is complete. The DeprecateThingTypeResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func deprecateThingTypeAsync(input: IotModel.DeprecateThingTypeRequest, completion: @escaping (HTTPResult<IotModel.DeprecateThingTypeResponse>) -> ()) throws

    /**
     Invokes the DeprecateThingType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeprecateThingTypeRequest object being passed to this operation.
     - Returns: The DeprecateThingTypeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func deprecateThingTypeSync(input: IotModel.DeprecateThingTypeRequest) throws -> IotModel.DeprecateThingTypeResponse

    /**
     Invokes the DescribeAccountAuditConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAccountAuditConfigurationRequest object being passed to this operation.
         - completion: The DescribeAccountAuditConfigurationResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeAccountAuditConfigurationResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, throttling.
     */
    func describeAccountAuditConfigurationAsync(input: IotModel.DescribeAccountAuditConfigurationRequest, completion: @escaping (HTTPResult<IotModel.DescribeAccountAuditConfigurationResponse>) -> ()) throws

    /**
     Invokes the DescribeAccountAuditConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAccountAuditConfigurationRequest object being passed to this operation.
     - Returns: The DescribeAccountAuditConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, throttling.
     */
    func describeAccountAuditConfigurationSync(input: IotModel.DescribeAccountAuditConfigurationRequest) throws -> IotModel.DescribeAccountAuditConfigurationResponse

    /**
     Invokes the DescribeAuditFinding operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAuditFindingRequest object being passed to this operation.
         - completion: The DescribeAuditFindingResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeAuditFindingResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func describeAuditFindingAsync(input: IotModel.DescribeAuditFindingRequest, completion: @escaping (HTTPResult<IotModel.DescribeAuditFindingResponse>) -> ()) throws

    /**
     Invokes the DescribeAuditFinding operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAuditFindingRequest object being passed to this operation.
     - Returns: The DescribeAuditFindingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func describeAuditFindingSync(input: IotModel.DescribeAuditFindingRequest) throws -> IotModel.DescribeAuditFindingResponse

    /**
     Invokes the DescribeAuditMitigationActionsTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAuditMitigationActionsTaskRequest object being passed to this operation.
         - completion: The DescribeAuditMitigationActionsTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeAuditMitigationActionsTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func describeAuditMitigationActionsTaskAsync(input: IotModel.DescribeAuditMitigationActionsTaskRequest, completion: @escaping (HTTPResult<IotModel.DescribeAuditMitigationActionsTaskResponse>) -> ()) throws

    /**
     Invokes the DescribeAuditMitigationActionsTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAuditMitigationActionsTaskRequest object being passed to this operation.
     - Returns: The DescribeAuditMitigationActionsTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func describeAuditMitigationActionsTaskSync(input: IotModel.DescribeAuditMitigationActionsTaskRequest) throws -> IotModel.DescribeAuditMitigationActionsTaskResponse

    /**
     Invokes the DescribeAuditTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAuditTaskRequest object being passed to this operation.
         - completion: The DescribeAuditTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeAuditTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func describeAuditTaskAsync(input: IotModel.DescribeAuditTaskRequest, completion: @escaping (HTTPResult<IotModel.DescribeAuditTaskResponse>) -> ()) throws

    /**
     Invokes the DescribeAuditTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAuditTaskRequest object being passed to this operation.
     - Returns: The DescribeAuditTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func describeAuditTaskSync(input: IotModel.DescribeAuditTaskRequest) throws -> IotModel.DescribeAuditTaskResponse

    /**
     Invokes the DescribeAuthorizer operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAuthorizerRequest object being passed to this operation.
         - completion: The DescribeAuthorizerResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeAuthorizerResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func describeAuthorizerAsync(input: IotModel.DescribeAuthorizerRequest, completion: @escaping (HTTPResult<IotModel.DescribeAuthorizerResponse>) -> ()) throws

    /**
     Invokes the DescribeAuthorizer operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAuthorizerRequest object being passed to this operation.
     - Returns: The DescribeAuthorizerResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func describeAuthorizerSync(input: IotModel.DescribeAuthorizerRequest) throws -> IotModel.DescribeAuthorizerResponse

    /**
     Invokes the DescribeBillingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeBillingGroupRequest object being passed to this operation.
         - completion: The DescribeBillingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeBillingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func describeBillingGroupAsync(input: IotModel.DescribeBillingGroupRequest, completion: @escaping (HTTPResult<IotModel.DescribeBillingGroupResponse>) -> ()) throws

    /**
     Invokes the DescribeBillingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeBillingGroupRequest object being passed to this operation.
     - Returns: The DescribeBillingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func describeBillingGroupSync(input: IotModel.DescribeBillingGroupRequest) throws -> IotModel.DescribeBillingGroupResponse

    /**
     Invokes the DescribeCACertificate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCACertificateRequest object being passed to this operation.
         - completion: The DescribeCACertificateResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeCACertificateResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func describeCACertificateAsync(input: IotModel.DescribeCACertificateRequest, completion: @escaping (HTTPResult<IotModel.DescribeCACertificateResponse>) -> ()) throws

    /**
     Invokes the DescribeCACertificate operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCACertificateRequest object being passed to this operation.
     - Returns: The DescribeCACertificateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func describeCACertificateSync(input: IotModel.DescribeCACertificateRequest) throws -> IotModel.DescribeCACertificateResponse

    /**
     Invokes the DescribeCertificate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCertificateRequest object being passed to this operation.
         - completion: The DescribeCertificateResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeCertificateResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func describeCertificateAsync(input: IotModel.DescribeCertificateRequest, completion: @escaping (HTTPResult<IotModel.DescribeCertificateResponse>) -> ()) throws

    /**
     Invokes the DescribeCertificate operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCertificateRequest object being passed to this operation.
     - Returns: The DescribeCertificateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func describeCertificateSync(input: IotModel.DescribeCertificateRequest) throws -> IotModel.DescribeCertificateResponse

    /**
     Invokes the DescribeDefaultAuthorizer operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDefaultAuthorizerRequest object being passed to this operation.
         - completion: The DescribeDefaultAuthorizerResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeDefaultAuthorizerResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func describeDefaultAuthorizerAsync(input: IotModel.DescribeDefaultAuthorizerRequest, completion: @escaping (HTTPResult<IotModel.DescribeDefaultAuthorizerResponse>) -> ()) throws

    /**
     Invokes the DescribeDefaultAuthorizer operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDefaultAuthorizerRequest object being passed to this operation.
     - Returns: The DescribeDefaultAuthorizerResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func describeDefaultAuthorizerSync(input: IotModel.DescribeDefaultAuthorizerRequest) throws -> IotModel.DescribeDefaultAuthorizerResponse

    /**
     Invokes the DescribeEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEndpointRequest object being passed to this operation.
         - completion: The DescribeEndpointResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeEndpointResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling, unauthorized.
     */
    func describeEndpointAsync(input: IotModel.DescribeEndpointRequest, completion: @escaping (HTTPResult<IotModel.DescribeEndpointResponse>) -> ()) throws

    /**
     Invokes the DescribeEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEndpointRequest object being passed to this operation.
     - Returns: The DescribeEndpointResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling, unauthorized.
     */
    func describeEndpointSync(input: IotModel.DescribeEndpointRequest) throws -> IotModel.DescribeEndpointResponse

    /**
     Invokes the DescribeEventConfigurations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEventConfigurationsRequest object being passed to this operation.
         - completion: The DescribeEventConfigurationsResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeEventConfigurationsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, throttling.
     */
    func describeEventConfigurationsAsync(input: IotModel.DescribeEventConfigurationsRequest, completion: @escaping (HTTPResult<IotModel.DescribeEventConfigurationsResponse>) -> ()) throws

    /**
     Invokes the DescribeEventConfigurations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEventConfigurationsRequest object being passed to this operation.
     - Returns: The DescribeEventConfigurationsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, throttling.
     */
    func describeEventConfigurationsSync(input: IotModel.DescribeEventConfigurationsRequest) throws -> IotModel.DescribeEventConfigurationsResponse

    /**
     Invokes the DescribeIndex operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeIndexRequest object being passed to this operation.
         - completion: The DescribeIndexResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeIndexResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func describeIndexAsync(input: IotModel.DescribeIndexRequest, completion: @escaping (HTTPResult<IotModel.DescribeIndexResponse>) -> ()) throws

    /**
     Invokes the DescribeIndex operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeIndexRequest object being passed to this operation.
     - Returns: The DescribeIndexResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func describeIndexSync(input: IotModel.DescribeIndexRequest) throws -> IotModel.DescribeIndexResponse

    /**
     Invokes the DescribeJob operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeJobRequest object being passed to this operation.
         - completion: The DescribeJobResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeJobResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    func describeJobAsync(input: IotModel.DescribeJobRequest, completion: @escaping (HTTPResult<IotModel.DescribeJobResponse>) -> ()) throws

    /**
     Invokes the DescribeJob operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeJobRequest object being passed to this operation.
     - Returns: The DescribeJobResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    func describeJobSync(input: IotModel.DescribeJobRequest) throws -> IotModel.DescribeJobResponse

    /**
     Invokes the DescribeJobExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeJobExecutionRequest object being passed to this operation.
         - completion: The DescribeJobExecutionResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeJobExecutionResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    func describeJobExecutionAsync(input: IotModel.DescribeJobExecutionRequest, completion: @escaping (HTTPResult<IotModel.DescribeJobExecutionResponse>) -> ()) throws

    /**
     Invokes the DescribeJobExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeJobExecutionRequest object being passed to this operation.
     - Returns: The DescribeJobExecutionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    func describeJobExecutionSync(input: IotModel.DescribeJobExecutionRequest) throws -> IotModel.DescribeJobExecutionResponse

    /**
     Invokes the DescribeMitigationAction operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeMitigationActionRequest object being passed to this operation.
         - completion: The DescribeMitigationActionResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeMitigationActionResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func describeMitigationActionAsync(input: IotModel.DescribeMitigationActionRequest, completion: @escaping (HTTPResult<IotModel.DescribeMitigationActionResponse>) -> ()) throws

    /**
     Invokes the DescribeMitigationAction operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeMitigationActionRequest object being passed to this operation.
     - Returns: The DescribeMitigationActionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func describeMitigationActionSync(input: IotModel.DescribeMitigationActionRequest) throws -> IotModel.DescribeMitigationActionResponse

    /**
     Invokes the DescribeRoleAlias operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeRoleAliasRequest object being passed to this operation.
         - completion: The DescribeRoleAliasResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeRoleAliasResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func describeRoleAliasAsync(input: IotModel.DescribeRoleAliasRequest, completion: @escaping (HTTPResult<IotModel.DescribeRoleAliasResponse>) -> ()) throws

    /**
     Invokes the DescribeRoleAlias operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeRoleAliasRequest object being passed to this operation.
     - Returns: The DescribeRoleAliasResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func describeRoleAliasSync(input: IotModel.DescribeRoleAliasRequest) throws -> IotModel.DescribeRoleAliasResponse

    /**
     Invokes the DescribeScheduledAudit operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeScheduledAuditRequest object being passed to this operation.
         - completion: The DescribeScheduledAuditResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeScheduledAuditResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func describeScheduledAuditAsync(input: IotModel.DescribeScheduledAuditRequest, completion: @escaping (HTTPResult<IotModel.DescribeScheduledAuditResponse>) -> ()) throws

    /**
     Invokes the DescribeScheduledAudit operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeScheduledAuditRequest object being passed to this operation.
     - Returns: The DescribeScheduledAuditResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func describeScheduledAuditSync(input: IotModel.DescribeScheduledAuditRequest) throws -> IotModel.DescribeScheduledAuditResponse

    /**
     Invokes the DescribeSecurityProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSecurityProfileRequest object being passed to this operation.
         - completion: The DescribeSecurityProfileResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeSecurityProfileResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func describeSecurityProfileAsync(input: IotModel.DescribeSecurityProfileRequest, completion: @escaping (HTTPResult<IotModel.DescribeSecurityProfileResponse>) -> ()) throws

    /**
     Invokes the DescribeSecurityProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSecurityProfileRequest object being passed to this operation.
     - Returns: The DescribeSecurityProfileResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func describeSecurityProfileSync(input: IotModel.DescribeSecurityProfileRequest) throws -> IotModel.DescribeSecurityProfileResponse

    /**
     Invokes the DescribeStream operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStreamRequest object being passed to this operation.
         - completion: The DescribeStreamResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeStreamResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func describeStreamAsync(input: IotModel.DescribeStreamRequest, completion: @escaping (HTTPResult<IotModel.DescribeStreamResponse>) -> ()) throws

    /**
     Invokes the DescribeStream operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStreamRequest object being passed to this operation.
     - Returns: The DescribeStreamResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func describeStreamSync(input: IotModel.DescribeStreamRequest) throws -> IotModel.DescribeStreamResponse

    /**
     Invokes the DescribeThing operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeThingRequest object being passed to this operation.
         - completion: The DescribeThingResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeThingResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func describeThingAsync(input: IotModel.DescribeThingRequest, completion: @escaping (HTTPResult<IotModel.DescribeThingResponse>) -> ()) throws

    /**
     Invokes the DescribeThing operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeThingRequest object being passed to this operation.
     - Returns: The DescribeThingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func describeThingSync(input: IotModel.DescribeThingRequest) throws -> IotModel.DescribeThingResponse

    /**
     Invokes the DescribeThingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeThingGroupRequest object being passed to this operation.
         - completion: The DescribeThingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeThingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func describeThingGroupAsync(input: IotModel.DescribeThingGroupRequest, completion: @escaping (HTTPResult<IotModel.DescribeThingGroupResponse>) -> ()) throws

    /**
     Invokes the DescribeThingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeThingGroupRequest object being passed to this operation.
     - Returns: The DescribeThingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func describeThingGroupSync(input: IotModel.DescribeThingGroupRequest) throws -> IotModel.DescribeThingGroupResponse

    /**
     Invokes the DescribeThingRegistrationTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeThingRegistrationTaskRequest object being passed to this operation.
         - completion: The DescribeThingRegistrationTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeThingRegistrationTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling, unauthorized.
     */
    func describeThingRegistrationTaskAsync(input: IotModel.DescribeThingRegistrationTaskRequest, completion: @escaping (HTTPResult<IotModel.DescribeThingRegistrationTaskResponse>) -> ()) throws

    /**
     Invokes the DescribeThingRegistrationTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeThingRegistrationTaskRequest object being passed to this operation.
     - Returns: The DescribeThingRegistrationTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling, unauthorized.
     */
    func describeThingRegistrationTaskSync(input: IotModel.DescribeThingRegistrationTaskRequest) throws -> IotModel.DescribeThingRegistrationTaskResponse

    /**
     Invokes the DescribeThingType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeThingTypeRequest object being passed to this operation.
         - completion: The DescribeThingTypeResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeThingTypeResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func describeThingTypeAsync(input: IotModel.DescribeThingTypeRequest, completion: @escaping (HTTPResult<IotModel.DescribeThingTypeResponse>) -> ()) throws

    /**
     Invokes the DescribeThingType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeThingTypeRequest object being passed to this operation.
     - Returns: The DescribeThingTypeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func describeThingTypeSync(input: IotModel.DescribeThingTypeRequest) throws -> IotModel.DescribeThingTypeResponse

    /**
     Invokes the DetachPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachPolicyRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, serviceUnavailable, throttling, unauthorized.
     */
    func detachPolicyAsync(input: IotModel.DetachPolicyRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DetachPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachPolicyRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, limitExceeded, serviceUnavailable, throttling, unauthorized.
     */
    func detachPolicySync(input: IotModel.DetachPolicyRequest) throws

    /**
     Invokes the DetachPrincipalPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachPrincipalPolicyRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func detachPrincipalPolicyAsync(input: IotModel.DetachPrincipalPolicyRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DetachPrincipalPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachPrincipalPolicyRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func detachPrincipalPolicySync(input: IotModel.DetachPrincipalPolicyRequest) throws

    /**
     Invokes the DetachSecurityProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachSecurityProfileRequest object being passed to this operation.
         - completion: The DetachSecurityProfileResponse object or an error will be passed to this 
           callback when the operation is complete. The DetachSecurityProfileResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func detachSecurityProfileAsync(input: IotModel.DetachSecurityProfileRequest, completion: @escaping (HTTPResult<IotModel.DetachSecurityProfileResponse>) -> ()) throws

    /**
     Invokes the DetachSecurityProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachSecurityProfileRequest object being passed to this operation.
     - Returns: The DetachSecurityProfileResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func detachSecurityProfileSync(input: IotModel.DetachSecurityProfileRequest) throws -> IotModel.DetachSecurityProfileResponse

    /**
     Invokes the DetachThingPrincipal operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachThingPrincipalRequest object being passed to this operation.
         - completion: The DetachThingPrincipalResponse object or an error will be passed to this 
           callback when the operation is complete. The DetachThingPrincipalResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func detachThingPrincipalAsync(input: IotModel.DetachThingPrincipalRequest, completion: @escaping (HTTPResult<IotModel.DetachThingPrincipalResponse>) -> ()) throws

    /**
     Invokes the DetachThingPrincipal operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachThingPrincipalRequest object being passed to this operation.
     - Returns: The DetachThingPrincipalResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func detachThingPrincipalSync(input: IotModel.DetachThingPrincipalRequest) throws -> IotModel.DetachThingPrincipalResponse

    /**
     Invokes the DisableTopicRule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableTopicRuleRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: conflictingResourceUpdate, internal, invalidRequest, serviceUnavailable, unauthorized.
     */
    func disableTopicRuleAsync(input: IotModel.DisableTopicRuleRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DisableTopicRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableTopicRuleRequest object being passed to this operation.
     - Throws: conflictingResourceUpdate, internal, invalidRequest, serviceUnavailable, unauthorized.
     */
    func disableTopicRuleSync(input: IotModel.DisableTopicRuleRequest) throws

    /**
     Invokes the EnableTopicRule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableTopicRuleRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: conflictingResourceUpdate, internal, invalidRequest, serviceUnavailable, unauthorized.
     */
    func enableTopicRuleAsync(input: IotModel.EnableTopicRuleRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the EnableTopicRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableTopicRuleRequest object being passed to this operation.
     - Throws: conflictingResourceUpdate, internal, invalidRequest, serviceUnavailable, unauthorized.
     */
    func enableTopicRuleSync(input: IotModel.EnableTopicRuleRequest) throws

    /**
     Invokes the GetEffectivePolicies operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetEffectivePoliciesRequest object being passed to this operation.
         - completion: The GetEffectivePoliciesResponse object or an error will be passed to this 
           callback when the operation is complete. The GetEffectivePoliciesResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func getEffectivePoliciesAsync(input: IotModel.GetEffectivePoliciesRequest, completion: @escaping (HTTPResult<IotModel.GetEffectivePoliciesResponse>) -> ()) throws

    /**
     Invokes the GetEffectivePolicies operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetEffectivePoliciesRequest object being passed to this operation.
     - Returns: The GetEffectivePoliciesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func getEffectivePoliciesSync(input: IotModel.GetEffectivePoliciesRequest) throws -> IotModel.GetEffectivePoliciesResponse

    /**
     Invokes the GetIndexingConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetIndexingConfigurationRequest object being passed to this operation.
         - completion: The GetIndexingConfigurationResponse object or an error will be passed to this 
           callback when the operation is complete. The GetIndexingConfigurationResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func getIndexingConfigurationAsync(input: IotModel.GetIndexingConfigurationRequest, completion: @escaping (HTTPResult<IotModel.GetIndexingConfigurationResponse>) -> ()) throws

    /**
     Invokes the GetIndexingConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetIndexingConfigurationRequest object being passed to this operation.
     - Returns: The GetIndexingConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func getIndexingConfigurationSync(input: IotModel.GetIndexingConfigurationRequest) throws -> IotModel.GetIndexingConfigurationResponse

    /**
     Invokes the GetJobDocument operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetJobDocumentRequest object being passed to this operation.
         - completion: The GetJobDocumentResponse object or an error will be passed to this 
           callback when the operation is complete. The GetJobDocumentResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    func getJobDocumentAsync(input: IotModel.GetJobDocumentRequest, completion: @escaping (HTTPResult<IotModel.GetJobDocumentResponse>) -> ()) throws

    /**
     Invokes the GetJobDocument operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetJobDocumentRequest object being passed to this operation.
     - Returns: The GetJobDocumentResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    func getJobDocumentSync(input: IotModel.GetJobDocumentRequest) throws -> IotModel.GetJobDocumentResponse

    /**
     Invokes the GetLoggingOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetLoggingOptionsRequest object being passed to this operation.
         - completion: The GetLoggingOptionsResponse object or an error will be passed to this 
           callback when the operation is complete. The GetLoggingOptionsResponse
           object will be validated before being returned to caller.
           The possible errors are: internal, invalidRequest, serviceUnavailable.
     */
    func getLoggingOptionsAsync(input: IotModel.GetLoggingOptionsRequest, completion: @escaping (HTTPResult<IotModel.GetLoggingOptionsResponse>) -> ()) throws

    /**
     Invokes the GetLoggingOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetLoggingOptionsRequest object being passed to this operation.
     - Returns: The GetLoggingOptionsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internal, invalidRequest, serviceUnavailable.
     */
    func getLoggingOptionsSync(input: IotModel.GetLoggingOptionsRequest) throws -> IotModel.GetLoggingOptionsResponse

    /**
     Invokes the GetOTAUpdate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetOTAUpdateRequest object being passed to this operation.
         - completion: The GetOTAUpdateResponse object or an error will be passed to this 
           callback when the operation is complete. The GetOTAUpdateResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func getOTAUpdateAsync(input: IotModel.GetOTAUpdateRequest, completion: @escaping (HTTPResult<IotModel.GetOTAUpdateResponse>) -> ()) throws

    /**
     Invokes the GetOTAUpdate operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetOTAUpdateRequest object being passed to this operation.
     - Returns: The GetOTAUpdateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func getOTAUpdateSync(input: IotModel.GetOTAUpdateRequest) throws -> IotModel.GetOTAUpdateResponse

    /**
     Invokes the GetPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetPolicyRequest object being passed to this operation.
         - completion: The GetPolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The GetPolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func getPolicyAsync(input: IotModel.GetPolicyRequest, completion: @escaping (HTTPResult<IotModel.GetPolicyResponse>) -> ()) throws

    /**
     Invokes the GetPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPolicyRequest object being passed to this operation.
     - Returns: The GetPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func getPolicySync(input: IotModel.GetPolicyRequest) throws -> IotModel.GetPolicyResponse

    /**
     Invokes the GetPolicyVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetPolicyVersionRequest object being passed to this operation.
         - completion: The GetPolicyVersionResponse object or an error will be passed to this 
           callback when the operation is complete. The GetPolicyVersionResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func getPolicyVersionAsync(input: IotModel.GetPolicyVersionRequest, completion: @escaping (HTTPResult<IotModel.GetPolicyVersionResponse>) -> ()) throws

    /**
     Invokes the GetPolicyVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPolicyVersionRequest object being passed to this operation.
     - Returns: The GetPolicyVersionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func getPolicyVersionSync(input: IotModel.GetPolicyVersionRequest) throws -> IotModel.GetPolicyVersionResponse

    /**
     Invokes the GetRegistrationCode operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetRegistrationCodeRequest object being passed to this operation.
         - completion: The GetRegistrationCodeResponse object or an error will be passed to this 
           callback when the operation is complete. The GetRegistrationCodeResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func getRegistrationCodeAsync(input: IotModel.GetRegistrationCodeRequest, completion: @escaping (HTTPResult<IotModel.GetRegistrationCodeResponse>) -> ()) throws

    /**
     Invokes the GetRegistrationCode operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetRegistrationCodeRequest object being passed to this operation.
     - Returns: The GetRegistrationCodeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func getRegistrationCodeSync(input: IotModel.GetRegistrationCodeRequest) throws -> IotModel.GetRegistrationCodeResponse

    /**
     Invokes the GetStatistics operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetStatisticsRequest object being passed to this operation.
         - completion: The GetStatisticsResponse object or an error will be passed to this 
           callback when the operation is complete. The GetStatisticsResponse
           object will be validated before being returned to caller.
           The possible errors are: indexNotReady, internalFailure, invalidAggregation, invalidQuery, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func getStatisticsAsync(input: IotModel.GetStatisticsRequest, completion: @escaping (HTTPResult<IotModel.GetStatisticsResponse>) -> ()) throws

    /**
     Invokes the GetStatistics operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetStatisticsRequest object being passed to this operation.
     - Returns: The GetStatisticsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: indexNotReady, internalFailure, invalidAggregation, invalidQuery, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func getStatisticsSync(input: IotModel.GetStatisticsRequest) throws -> IotModel.GetStatisticsResponse

    /**
     Invokes the GetTopicRule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetTopicRuleRequest object being passed to this operation.
         - completion: The GetTopicRuleResponse object or an error will be passed to this 
           callback when the operation is complete. The GetTopicRuleResponse
           object will be validated before being returned to caller.
           The possible errors are: internal, invalidRequest, serviceUnavailable, unauthorized.
     */
    func getTopicRuleAsync(input: IotModel.GetTopicRuleRequest, completion: @escaping (HTTPResult<IotModel.GetTopicRuleResponse>) -> ()) throws

    /**
     Invokes the GetTopicRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTopicRuleRequest object being passed to this operation.
     - Returns: The GetTopicRuleResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internal, invalidRequest, serviceUnavailable, unauthorized.
     */
    func getTopicRuleSync(input: IotModel.GetTopicRuleRequest) throws -> IotModel.GetTopicRuleResponse

    /**
     Invokes the GetV2LoggingOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetV2LoggingOptionsRequest object being passed to this operation.
         - completion: The GetV2LoggingOptionsResponse object or an error will be passed to this 
           callback when the operation is complete. The GetV2LoggingOptionsResponse
           object will be validated before being returned to caller.
           The possible errors are: internal, notConfigured, serviceUnavailable.
     */
    func getV2LoggingOptionsAsync(input: IotModel.GetV2LoggingOptionsRequest, completion: @escaping (HTTPResult<IotModel.GetV2LoggingOptionsResponse>) -> ()) throws

    /**
     Invokes the GetV2LoggingOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetV2LoggingOptionsRequest object being passed to this operation.
     - Returns: The GetV2LoggingOptionsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internal, notConfigured, serviceUnavailable.
     */
    func getV2LoggingOptionsSync(input: IotModel.GetV2LoggingOptionsRequest) throws -> IotModel.GetV2LoggingOptionsResponse

    /**
     Invokes the ListActiveViolations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListActiveViolationsRequest object being passed to this operation.
         - completion: The ListActiveViolationsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListActiveViolationsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func listActiveViolationsAsync(input: IotModel.ListActiveViolationsRequest, completion: @escaping (HTTPResult<IotModel.ListActiveViolationsResponse>) -> ()) throws

    /**
     Invokes the ListActiveViolations operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListActiveViolationsRequest object being passed to this operation.
     - Returns: The ListActiveViolationsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func listActiveViolationsSync(input: IotModel.ListActiveViolationsRequest) throws -> IotModel.ListActiveViolationsResponse

    /**
     Invokes the ListAttachedPolicies operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListAttachedPoliciesRequest object being passed to this operation.
         - completion: The ListAttachedPoliciesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListAttachedPoliciesResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func listAttachedPoliciesAsync(input: IotModel.ListAttachedPoliciesRequest, completion: @escaping (HTTPResult<IotModel.ListAttachedPoliciesResponse>) -> ()) throws

    /**
     Invokes the ListAttachedPolicies operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListAttachedPoliciesRequest object being passed to this operation.
     - Returns: The ListAttachedPoliciesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func listAttachedPoliciesSync(input: IotModel.ListAttachedPoliciesRequest) throws -> IotModel.ListAttachedPoliciesResponse

    /**
     Invokes the ListAuditFindings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListAuditFindingsRequest object being passed to this operation.
         - completion: The ListAuditFindingsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListAuditFindingsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling.
     */
    func listAuditFindingsAsync(input: IotModel.ListAuditFindingsRequest, completion: @escaping (HTTPResult<IotModel.ListAuditFindingsResponse>) -> ()) throws

    /**
     Invokes the ListAuditFindings operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListAuditFindingsRequest object being passed to this operation.
     - Returns: The ListAuditFindingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling.
     */
    func listAuditFindingsSync(input: IotModel.ListAuditFindingsRequest) throws -> IotModel.ListAuditFindingsResponse

    /**
     Invokes the ListAuditMitigationActionsExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListAuditMitigationActionsExecutionsRequest object being passed to this operation.
         - completion: The ListAuditMitigationActionsExecutionsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListAuditMitigationActionsExecutionsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling.
     */
    func listAuditMitigationActionsExecutionsAsync(input: IotModel.ListAuditMitigationActionsExecutionsRequest, completion: @escaping (HTTPResult<IotModel.ListAuditMitigationActionsExecutionsResponse>) -> ()) throws

    /**
     Invokes the ListAuditMitigationActionsExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListAuditMitigationActionsExecutionsRequest object being passed to this operation.
     - Returns: The ListAuditMitigationActionsExecutionsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling.
     */
    func listAuditMitigationActionsExecutionsSync(input: IotModel.ListAuditMitigationActionsExecutionsRequest) throws -> IotModel.ListAuditMitigationActionsExecutionsResponse

    /**
     Invokes the ListAuditMitigationActionsTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListAuditMitigationActionsTasksRequest object being passed to this operation.
         - completion: The ListAuditMitigationActionsTasksResponse object or an error will be passed to this 
           callback when the operation is complete. The ListAuditMitigationActionsTasksResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling.
     */
    func listAuditMitigationActionsTasksAsync(input: IotModel.ListAuditMitigationActionsTasksRequest, completion: @escaping (HTTPResult<IotModel.ListAuditMitigationActionsTasksResponse>) -> ()) throws

    /**
     Invokes the ListAuditMitigationActionsTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListAuditMitigationActionsTasksRequest object being passed to this operation.
     - Returns: The ListAuditMitigationActionsTasksResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling.
     */
    func listAuditMitigationActionsTasksSync(input: IotModel.ListAuditMitigationActionsTasksRequest) throws -> IotModel.ListAuditMitigationActionsTasksResponse

    /**
     Invokes the ListAuditTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListAuditTasksRequest object being passed to this operation.
         - completion: The ListAuditTasksResponse object or an error will be passed to this 
           callback when the operation is complete. The ListAuditTasksResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling.
     */
    func listAuditTasksAsync(input: IotModel.ListAuditTasksRequest, completion: @escaping (HTTPResult<IotModel.ListAuditTasksResponse>) -> ()) throws

    /**
     Invokes the ListAuditTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListAuditTasksRequest object being passed to this operation.
     - Returns: The ListAuditTasksResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling.
     */
    func listAuditTasksSync(input: IotModel.ListAuditTasksRequest) throws -> IotModel.ListAuditTasksResponse

    /**
     Invokes the ListAuthorizers operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListAuthorizersRequest object being passed to this operation.
         - completion: The ListAuthorizersResponse object or an error will be passed to this 
           callback when the operation is complete. The ListAuthorizersResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func listAuthorizersAsync(input: IotModel.ListAuthorizersRequest, completion: @escaping (HTTPResult<IotModel.ListAuthorizersResponse>) -> ()) throws

    /**
     Invokes the ListAuthorizers operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListAuthorizersRequest object being passed to this operation.
     - Returns: The ListAuthorizersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func listAuthorizersSync(input: IotModel.ListAuthorizersRequest) throws -> IotModel.ListAuthorizersResponse

    /**
     Invokes the ListBillingGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBillingGroupsRequest object being passed to this operation.
         - completion: The ListBillingGroupsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListBillingGroupsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func listBillingGroupsAsync(input: IotModel.ListBillingGroupsRequest, completion: @escaping (HTTPResult<IotModel.ListBillingGroupsResponse>) -> ()) throws

    /**
     Invokes the ListBillingGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBillingGroupsRequest object being passed to this operation.
     - Returns: The ListBillingGroupsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func listBillingGroupsSync(input: IotModel.ListBillingGroupsRequest) throws -> IotModel.ListBillingGroupsResponse

    /**
     Invokes the ListCACertificates operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListCACertificatesRequest object being passed to this operation.
         - completion: The ListCACertificatesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListCACertificatesResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func listCACertificatesAsync(input: IotModel.ListCACertificatesRequest, completion: @escaping (HTTPResult<IotModel.ListCACertificatesResponse>) -> ()) throws

    /**
     Invokes the ListCACertificates operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListCACertificatesRequest object being passed to this operation.
     - Returns: The ListCACertificatesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func listCACertificatesSync(input: IotModel.ListCACertificatesRequest) throws -> IotModel.ListCACertificatesResponse

    /**
     Invokes the ListCertificates operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListCertificatesRequest object being passed to this operation.
         - completion: The ListCertificatesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListCertificatesResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func listCertificatesAsync(input: IotModel.ListCertificatesRequest, completion: @escaping (HTTPResult<IotModel.ListCertificatesResponse>) -> ()) throws

    /**
     Invokes the ListCertificates operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListCertificatesRequest object being passed to this operation.
     - Returns: The ListCertificatesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func listCertificatesSync(input: IotModel.ListCertificatesRequest) throws -> IotModel.ListCertificatesResponse

    /**
     Invokes the ListCertificatesByCA operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListCertificatesByCARequest object being passed to this operation.
         - completion: The ListCertificatesByCAResponse object or an error will be passed to this 
           callback when the operation is complete. The ListCertificatesByCAResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func listCertificatesByCAAsync(input: IotModel.ListCertificatesByCARequest, completion: @escaping (HTTPResult<IotModel.ListCertificatesByCAResponse>) -> ()) throws

    /**
     Invokes the ListCertificatesByCA operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListCertificatesByCARequest object being passed to this operation.
     - Returns: The ListCertificatesByCAResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func listCertificatesByCASync(input: IotModel.ListCertificatesByCARequest) throws -> IotModel.ListCertificatesByCAResponse

    /**
     Invokes the ListIndices operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListIndicesRequest object being passed to this operation.
         - completion: The ListIndicesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListIndicesResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func listIndicesAsync(input: IotModel.ListIndicesRequest, completion: @escaping (HTTPResult<IotModel.ListIndicesResponse>) -> ()) throws

    /**
     Invokes the ListIndices operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListIndicesRequest object being passed to this operation.
     - Returns: The ListIndicesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func listIndicesSync(input: IotModel.ListIndicesRequest) throws -> IotModel.ListIndicesResponse

    /**
     Invokes the ListJobExecutionsForJob operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListJobExecutionsForJobRequest object being passed to this operation.
         - completion: The ListJobExecutionsForJobResponse object or an error will be passed to this 
           callback when the operation is complete. The ListJobExecutionsForJobResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    func listJobExecutionsForJobAsync(input: IotModel.ListJobExecutionsForJobRequest, completion: @escaping (HTTPResult<IotModel.ListJobExecutionsForJobResponse>) -> ()) throws

    /**
     Invokes the ListJobExecutionsForJob operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListJobExecutionsForJobRequest object being passed to this operation.
     - Returns: The ListJobExecutionsForJobResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    func listJobExecutionsForJobSync(input: IotModel.ListJobExecutionsForJobRequest) throws -> IotModel.ListJobExecutionsForJobResponse

    /**
     Invokes the ListJobExecutionsForThing operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListJobExecutionsForThingRequest object being passed to this operation.
         - completion: The ListJobExecutionsForThingResponse object or an error will be passed to this 
           callback when the operation is complete. The ListJobExecutionsForThingResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    func listJobExecutionsForThingAsync(input: IotModel.ListJobExecutionsForThingRequest, completion: @escaping (HTTPResult<IotModel.ListJobExecutionsForThingResponse>) -> ()) throws

    /**
     Invokes the ListJobExecutionsForThing operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListJobExecutionsForThingRequest object being passed to this operation.
     - Returns: The ListJobExecutionsForThingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    func listJobExecutionsForThingSync(input: IotModel.ListJobExecutionsForThingRequest) throws -> IotModel.ListJobExecutionsForThingResponse

    /**
     Invokes the ListJobs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListJobsRequest object being passed to this operation.
         - completion: The ListJobsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListJobsResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    func listJobsAsync(input: IotModel.ListJobsRequest, completion: @escaping (HTTPResult<IotModel.ListJobsResponse>) -> ()) throws

    /**
     Invokes the ListJobs operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListJobsRequest object being passed to this operation.
     - Returns: The ListJobsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    func listJobsSync(input: IotModel.ListJobsRequest) throws -> IotModel.ListJobsResponse

    /**
     Invokes the ListMitigationActions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListMitigationActionsRequest object being passed to this operation.
         - completion: The ListMitigationActionsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListMitigationActionsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling.
     */
    func listMitigationActionsAsync(input: IotModel.ListMitigationActionsRequest, completion: @escaping (HTTPResult<IotModel.ListMitigationActionsResponse>) -> ()) throws

    /**
     Invokes the ListMitigationActions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListMitigationActionsRequest object being passed to this operation.
     - Returns: The ListMitigationActionsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling.
     */
    func listMitigationActionsSync(input: IotModel.ListMitigationActionsRequest) throws -> IotModel.ListMitigationActionsResponse

    /**
     Invokes the ListOTAUpdates operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListOTAUpdatesRequest object being passed to this operation.
         - completion: The ListOTAUpdatesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListOTAUpdatesResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func listOTAUpdatesAsync(input: IotModel.ListOTAUpdatesRequest, completion: @escaping (HTTPResult<IotModel.ListOTAUpdatesResponse>) -> ()) throws

    /**
     Invokes the ListOTAUpdates operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListOTAUpdatesRequest object being passed to this operation.
     - Returns: The ListOTAUpdatesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func listOTAUpdatesSync(input: IotModel.ListOTAUpdatesRequest) throws -> IotModel.ListOTAUpdatesResponse

    /**
     Invokes the ListOutgoingCertificates operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListOutgoingCertificatesRequest object being passed to this operation.
         - completion: The ListOutgoingCertificatesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListOutgoingCertificatesResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func listOutgoingCertificatesAsync(input: IotModel.ListOutgoingCertificatesRequest, completion: @escaping (HTTPResult<IotModel.ListOutgoingCertificatesResponse>) -> ()) throws

    /**
     Invokes the ListOutgoingCertificates operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListOutgoingCertificatesRequest object being passed to this operation.
     - Returns: The ListOutgoingCertificatesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func listOutgoingCertificatesSync(input: IotModel.ListOutgoingCertificatesRequest) throws -> IotModel.ListOutgoingCertificatesResponse

    /**
     Invokes the ListPolicies operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPoliciesRequest object being passed to this operation.
         - completion: The ListPoliciesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListPoliciesResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func listPoliciesAsync(input: IotModel.ListPoliciesRequest, completion: @escaping (HTTPResult<IotModel.ListPoliciesResponse>) -> ()) throws

    /**
     Invokes the ListPolicies operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPoliciesRequest object being passed to this operation.
     - Returns: The ListPoliciesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func listPoliciesSync(input: IotModel.ListPoliciesRequest) throws -> IotModel.ListPoliciesResponse

    /**
     Invokes the ListPolicyPrincipals operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPolicyPrincipalsRequest object being passed to this operation.
         - completion: The ListPolicyPrincipalsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListPolicyPrincipalsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func listPolicyPrincipalsAsync(input: IotModel.ListPolicyPrincipalsRequest, completion: @escaping (HTTPResult<IotModel.ListPolicyPrincipalsResponse>) -> ()) throws

    /**
     Invokes the ListPolicyPrincipals operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPolicyPrincipalsRequest object being passed to this operation.
     - Returns: The ListPolicyPrincipalsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func listPolicyPrincipalsSync(input: IotModel.ListPolicyPrincipalsRequest) throws -> IotModel.ListPolicyPrincipalsResponse

    /**
     Invokes the ListPolicyVersions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPolicyVersionsRequest object being passed to this operation.
         - completion: The ListPolicyVersionsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListPolicyVersionsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func listPolicyVersionsAsync(input: IotModel.ListPolicyVersionsRequest, completion: @escaping (HTTPResult<IotModel.ListPolicyVersionsResponse>) -> ()) throws

    /**
     Invokes the ListPolicyVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPolicyVersionsRequest object being passed to this operation.
     - Returns: The ListPolicyVersionsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func listPolicyVersionsSync(input: IotModel.ListPolicyVersionsRequest) throws -> IotModel.ListPolicyVersionsResponse

    /**
     Invokes the ListPrincipalPolicies operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPrincipalPoliciesRequest object being passed to this operation.
         - completion: The ListPrincipalPoliciesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListPrincipalPoliciesResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func listPrincipalPoliciesAsync(input: IotModel.ListPrincipalPoliciesRequest, completion: @escaping (HTTPResult<IotModel.ListPrincipalPoliciesResponse>) -> ()) throws

    /**
     Invokes the ListPrincipalPolicies operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPrincipalPoliciesRequest object being passed to this operation.
     - Returns: The ListPrincipalPoliciesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func listPrincipalPoliciesSync(input: IotModel.ListPrincipalPoliciesRequest) throws -> IotModel.ListPrincipalPoliciesResponse

    /**
     Invokes the ListPrincipalThings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPrincipalThingsRequest object being passed to this operation.
         - completion: The ListPrincipalThingsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListPrincipalThingsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func listPrincipalThingsAsync(input: IotModel.ListPrincipalThingsRequest, completion: @escaping (HTTPResult<IotModel.ListPrincipalThingsResponse>) -> ()) throws

    /**
     Invokes the ListPrincipalThings operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPrincipalThingsRequest object being passed to this operation.
     - Returns: The ListPrincipalThingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func listPrincipalThingsSync(input: IotModel.ListPrincipalThingsRequest) throws -> IotModel.ListPrincipalThingsResponse

    /**
     Invokes the ListRoleAliases operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListRoleAliasesRequest object being passed to this operation.
         - completion: The ListRoleAliasesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListRoleAliasesResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func listRoleAliasesAsync(input: IotModel.ListRoleAliasesRequest, completion: @escaping (HTTPResult<IotModel.ListRoleAliasesResponse>) -> ()) throws

    /**
     Invokes the ListRoleAliases operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListRoleAliasesRequest object being passed to this operation.
     - Returns: The ListRoleAliasesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func listRoleAliasesSync(input: IotModel.ListRoleAliasesRequest) throws -> IotModel.ListRoleAliasesResponse

    /**
     Invokes the ListScheduledAudits operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListScheduledAuditsRequest object being passed to this operation.
         - completion: The ListScheduledAuditsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListScheduledAuditsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling.
     */
    func listScheduledAuditsAsync(input: IotModel.ListScheduledAuditsRequest, completion: @escaping (HTTPResult<IotModel.ListScheduledAuditsResponse>) -> ()) throws

    /**
     Invokes the ListScheduledAudits operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListScheduledAuditsRequest object being passed to this operation.
     - Returns: The ListScheduledAuditsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling.
     */
    func listScheduledAuditsSync(input: IotModel.ListScheduledAuditsRequest) throws -> IotModel.ListScheduledAuditsResponse

    /**
     Invokes the ListSecurityProfiles operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSecurityProfilesRequest object being passed to this operation.
         - completion: The ListSecurityProfilesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListSecurityProfilesResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling.
     */
    func listSecurityProfilesAsync(input: IotModel.ListSecurityProfilesRequest, completion: @escaping (HTTPResult<IotModel.ListSecurityProfilesResponse>) -> ()) throws

    /**
     Invokes the ListSecurityProfiles operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSecurityProfilesRequest object being passed to this operation.
     - Returns: The ListSecurityProfilesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling.
     */
    func listSecurityProfilesSync(input: IotModel.ListSecurityProfilesRequest) throws -> IotModel.ListSecurityProfilesResponse

    /**
     Invokes the ListSecurityProfilesForTarget operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSecurityProfilesForTargetRequest object being passed to this operation.
         - completion: The ListSecurityProfilesForTargetResponse object or an error will be passed to this 
           callback when the operation is complete. The ListSecurityProfilesForTargetResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func listSecurityProfilesForTargetAsync(input: IotModel.ListSecurityProfilesForTargetRequest, completion: @escaping (HTTPResult<IotModel.ListSecurityProfilesForTargetResponse>) -> ()) throws

    /**
     Invokes the ListSecurityProfilesForTarget operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSecurityProfilesForTargetRequest object being passed to this operation.
     - Returns: The ListSecurityProfilesForTargetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func listSecurityProfilesForTargetSync(input: IotModel.ListSecurityProfilesForTargetRequest) throws -> IotModel.ListSecurityProfilesForTargetResponse

    /**
     Invokes the ListStreams operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListStreamsRequest object being passed to this operation.
         - completion: The ListStreamsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListStreamsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func listStreamsAsync(input: IotModel.ListStreamsRequest, completion: @escaping (HTTPResult<IotModel.ListStreamsResponse>) -> ()) throws

    /**
     Invokes the ListStreams operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListStreamsRequest object being passed to this operation.
     - Returns: The ListStreamsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func listStreamsSync(input: IotModel.ListStreamsRequest) throws -> IotModel.ListStreamsResponse

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
         - completion: The ListTagsForResourceResponse object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func listTagsForResourceAsync(input: IotModel.ListTagsForResourceRequest, completion: @escaping (HTTPResult<IotModel.ListTagsForResourceResponse>) -> ()) throws

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ListTagsForResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func listTagsForResourceSync(input: IotModel.ListTagsForResourceRequest) throws -> IotModel.ListTagsForResourceResponse

    /**
     Invokes the ListTargetsForPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTargetsForPolicyRequest object being passed to this operation.
         - completion: The ListTargetsForPolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The ListTargetsForPolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func listTargetsForPolicyAsync(input: IotModel.ListTargetsForPolicyRequest, completion: @escaping (HTTPResult<IotModel.ListTargetsForPolicyResponse>) -> ()) throws

    /**
     Invokes the ListTargetsForPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTargetsForPolicyRequest object being passed to this operation.
     - Returns: The ListTargetsForPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func listTargetsForPolicySync(input: IotModel.ListTargetsForPolicyRequest) throws -> IotModel.ListTargetsForPolicyResponse

    /**
     Invokes the ListTargetsForSecurityProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTargetsForSecurityProfileRequest object being passed to this operation.
         - completion: The ListTargetsForSecurityProfileResponse object or an error will be passed to this 
           callback when the operation is complete. The ListTargetsForSecurityProfileResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func listTargetsForSecurityProfileAsync(input: IotModel.ListTargetsForSecurityProfileRequest, completion: @escaping (HTTPResult<IotModel.ListTargetsForSecurityProfileResponse>) -> ()) throws

    /**
     Invokes the ListTargetsForSecurityProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTargetsForSecurityProfileRequest object being passed to this operation.
     - Returns: The ListTargetsForSecurityProfileResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func listTargetsForSecurityProfileSync(input: IotModel.ListTargetsForSecurityProfileRequest) throws -> IotModel.ListTargetsForSecurityProfileResponse

    /**
     Invokes the ListThingGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListThingGroupsRequest object being passed to this operation.
         - completion: The ListThingGroupsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListThingGroupsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound.
     */
    func listThingGroupsAsync(input: IotModel.ListThingGroupsRequest, completion: @escaping (HTTPResult<IotModel.ListThingGroupsResponse>) -> ()) throws

    /**
     Invokes the ListThingGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListThingGroupsRequest object being passed to this operation.
     - Returns: The ListThingGroupsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound.
     */
    func listThingGroupsSync(input: IotModel.ListThingGroupsRequest) throws -> IotModel.ListThingGroupsResponse

    /**
     Invokes the ListThingGroupsForThing operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListThingGroupsForThingRequest object being passed to this operation.
         - completion: The ListThingGroupsForThingResponse object or an error will be passed to this 
           callback when the operation is complete. The ListThingGroupsForThingResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound.
     */
    func listThingGroupsForThingAsync(input: IotModel.ListThingGroupsForThingRequest, completion: @escaping (HTTPResult<IotModel.ListThingGroupsForThingResponse>) -> ()) throws

    /**
     Invokes the ListThingGroupsForThing operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListThingGroupsForThingRequest object being passed to this operation.
     - Returns: The ListThingGroupsForThingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound.
     */
    func listThingGroupsForThingSync(input: IotModel.ListThingGroupsForThingRequest) throws -> IotModel.ListThingGroupsForThingResponse

    /**
     Invokes the ListThingPrincipals operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListThingPrincipalsRequest object being passed to this operation.
         - completion: The ListThingPrincipalsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListThingPrincipalsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func listThingPrincipalsAsync(input: IotModel.ListThingPrincipalsRequest, completion: @escaping (HTTPResult<IotModel.ListThingPrincipalsResponse>) -> ()) throws

    /**
     Invokes the ListThingPrincipals operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListThingPrincipalsRequest object being passed to this operation.
     - Returns: The ListThingPrincipalsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func listThingPrincipalsSync(input: IotModel.ListThingPrincipalsRequest) throws -> IotModel.ListThingPrincipalsResponse

    /**
     Invokes the ListThingRegistrationTaskReports operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListThingRegistrationTaskReportsRequest object being passed to this operation.
         - completion: The ListThingRegistrationTaskReportsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListThingRegistrationTaskReportsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling, unauthorized.
     */
    func listThingRegistrationTaskReportsAsync(input: IotModel.ListThingRegistrationTaskReportsRequest, completion: @escaping (HTTPResult<IotModel.ListThingRegistrationTaskReportsResponse>) -> ()) throws

    /**
     Invokes the ListThingRegistrationTaskReports operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListThingRegistrationTaskReportsRequest object being passed to this operation.
     - Returns: The ListThingRegistrationTaskReportsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling, unauthorized.
     */
    func listThingRegistrationTaskReportsSync(input: IotModel.ListThingRegistrationTaskReportsRequest) throws -> IotModel.ListThingRegistrationTaskReportsResponse

    /**
     Invokes the ListThingRegistrationTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListThingRegistrationTasksRequest object being passed to this operation.
         - completion: The ListThingRegistrationTasksResponse object or an error will be passed to this 
           callback when the operation is complete. The ListThingRegistrationTasksResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling, unauthorized.
     */
    func listThingRegistrationTasksAsync(input: IotModel.ListThingRegistrationTasksRequest, completion: @escaping (HTTPResult<IotModel.ListThingRegistrationTasksResponse>) -> ()) throws

    /**
     Invokes the ListThingRegistrationTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListThingRegistrationTasksRequest object being passed to this operation.
     - Returns: The ListThingRegistrationTasksResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling, unauthorized.
     */
    func listThingRegistrationTasksSync(input: IotModel.ListThingRegistrationTasksRequest) throws -> IotModel.ListThingRegistrationTasksResponse

    /**
     Invokes the ListThingTypes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListThingTypesRequest object being passed to this operation.
         - completion: The ListThingTypesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListThingTypesResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func listThingTypesAsync(input: IotModel.ListThingTypesRequest, completion: @escaping (HTTPResult<IotModel.ListThingTypesResponse>) -> ()) throws

    /**
     Invokes the ListThingTypes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListThingTypesRequest object being passed to this operation.
     - Returns: The ListThingTypesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func listThingTypesSync(input: IotModel.ListThingTypesRequest) throws -> IotModel.ListThingTypesResponse

    /**
     Invokes the ListThings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListThingsRequest object being passed to this operation.
         - completion: The ListThingsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListThingsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func listThingsAsync(input: IotModel.ListThingsRequest, completion: @escaping (HTTPResult<IotModel.ListThingsResponse>) -> ()) throws

    /**
     Invokes the ListThings operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListThingsRequest object being passed to this operation.
     - Returns: The ListThingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func listThingsSync(input: IotModel.ListThingsRequest) throws -> IotModel.ListThingsResponse

    /**
     Invokes the ListThingsInBillingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListThingsInBillingGroupRequest object being passed to this operation.
         - completion: The ListThingsInBillingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The ListThingsInBillingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func listThingsInBillingGroupAsync(input: IotModel.ListThingsInBillingGroupRequest, completion: @escaping (HTTPResult<IotModel.ListThingsInBillingGroupResponse>) -> ()) throws

    /**
     Invokes the ListThingsInBillingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListThingsInBillingGroupRequest object being passed to this operation.
     - Returns: The ListThingsInBillingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func listThingsInBillingGroupSync(input: IotModel.ListThingsInBillingGroupRequest) throws -> IotModel.ListThingsInBillingGroupResponse

    /**
     Invokes the ListThingsInThingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListThingsInThingGroupRequest object being passed to this operation.
         - completion: The ListThingsInThingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The ListThingsInThingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound.
     */
    func listThingsInThingGroupAsync(input: IotModel.ListThingsInThingGroupRequest, completion: @escaping (HTTPResult<IotModel.ListThingsInThingGroupResponse>) -> ()) throws

    /**
     Invokes the ListThingsInThingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListThingsInThingGroupRequest object being passed to this operation.
     - Returns: The ListThingsInThingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound.
     */
    func listThingsInThingGroupSync(input: IotModel.ListThingsInThingGroupRequest) throws -> IotModel.ListThingsInThingGroupResponse

    /**
     Invokes the ListTopicRules operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTopicRulesRequest object being passed to this operation.
         - completion: The ListTopicRulesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListTopicRulesResponse
           object will be validated before being returned to caller.
           The possible errors are: internal, invalidRequest, serviceUnavailable.
     */
    func listTopicRulesAsync(input: IotModel.ListTopicRulesRequest, completion: @escaping (HTTPResult<IotModel.ListTopicRulesResponse>) -> ()) throws

    /**
     Invokes the ListTopicRules operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTopicRulesRequest object being passed to this operation.
     - Returns: The ListTopicRulesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internal, invalidRequest, serviceUnavailable.
     */
    func listTopicRulesSync(input: IotModel.ListTopicRulesRequest) throws -> IotModel.ListTopicRulesResponse

    /**
     Invokes the ListV2LoggingLevels operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListV2LoggingLevelsRequest object being passed to this operation.
         - completion: The ListV2LoggingLevelsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListV2LoggingLevelsResponse
           object will be validated before being returned to caller.
           The possible errors are: internal, invalidRequest, notConfigured, serviceUnavailable.
     */
    func listV2LoggingLevelsAsync(input: IotModel.ListV2LoggingLevelsRequest, completion: @escaping (HTTPResult<IotModel.ListV2LoggingLevelsResponse>) -> ()) throws

    /**
     Invokes the ListV2LoggingLevels operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListV2LoggingLevelsRequest object being passed to this operation.
     - Returns: The ListV2LoggingLevelsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internal, invalidRequest, notConfigured, serviceUnavailable.
     */
    func listV2LoggingLevelsSync(input: IotModel.ListV2LoggingLevelsRequest) throws -> IotModel.ListV2LoggingLevelsResponse

    /**
     Invokes the ListViolationEvents operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListViolationEventsRequest object being passed to this operation.
         - completion: The ListViolationEventsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListViolationEventsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling.
     */
    func listViolationEventsAsync(input: IotModel.ListViolationEventsRequest, completion: @escaping (HTTPResult<IotModel.ListViolationEventsResponse>) -> ()) throws

    /**
     Invokes the ListViolationEvents operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListViolationEventsRequest object being passed to this operation.
     - Returns: The ListViolationEventsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling.
     */
    func listViolationEventsSync(input: IotModel.ListViolationEventsRequest) throws -> IotModel.ListViolationEventsResponse

    /**
     Invokes the RegisterCACertificate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterCACertificateRequest object being passed to this operation.
         - completion: The RegisterCACertificateResponse object or an error will be passed to this 
           callback when the operation is complete. The RegisterCACertificateResponse
           object will be validated before being returned to caller.
           The possible errors are: certificateValidation, internalFailure, invalidRequest, limitExceeded, registrationCodeValidation, resourceAlreadyExists, serviceUnavailable, throttling, unauthorized.
     */
    func registerCACertificateAsync(input: IotModel.RegisterCACertificateRequest, completion: @escaping (HTTPResult<IotModel.RegisterCACertificateResponse>) -> ()) throws

    /**
     Invokes the RegisterCACertificate operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterCACertificateRequest object being passed to this operation.
     - Returns: The RegisterCACertificateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: certificateValidation, internalFailure, invalidRequest, limitExceeded, registrationCodeValidation, resourceAlreadyExists, serviceUnavailable, throttling, unauthorized.
     */
    func registerCACertificateSync(input: IotModel.RegisterCACertificateRequest) throws -> IotModel.RegisterCACertificateResponse

    /**
     Invokes the RegisterCertificate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterCertificateRequest object being passed to this operation.
         - completion: The RegisterCertificateResponse object or an error will be passed to this 
           callback when the operation is complete. The RegisterCertificateResponse
           object will be validated before being returned to caller.
           The possible errors are: certificateConflict, certificateState, certificateValidation, internalFailure, invalidRequest, resourceAlreadyExists, serviceUnavailable, throttling, unauthorized.
     */
    func registerCertificateAsync(input: IotModel.RegisterCertificateRequest, completion: @escaping (HTTPResult<IotModel.RegisterCertificateResponse>) -> ()) throws

    /**
     Invokes the RegisterCertificate operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterCertificateRequest object being passed to this operation.
     - Returns: The RegisterCertificateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: certificateConflict, certificateState, certificateValidation, internalFailure, invalidRequest, resourceAlreadyExists, serviceUnavailable, throttling, unauthorized.
     */
    func registerCertificateSync(input: IotModel.RegisterCertificateRequest) throws -> IotModel.RegisterCertificateResponse

    /**
     Invokes the RegisterThing operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterThingRequest object being passed to this operation.
         - completion: The RegisterThingResponse object or an error will be passed to this 
           callback when the operation is complete. The RegisterThingResponse
           object will be validated before being returned to caller.
           The possible errors are: conflictingResourceUpdate, internalFailure, invalidRequest, resourceRegistrationFailure, serviceUnavailable, throttling, unauthorized.
     */
    func registerThingAsync(input: IotModel.RegisterThingRequest, completion: @escaping (HTTPResult<IotModel.RegisterThingResponse>) -> ()) throws

    /**
     Invokes the RegisterThing operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterThingRequest object being passed to this operation.
     - Returns: The RegisterThingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflictingResourceUpdate, internalFailure, invalidRequest, resourceRegistrationFailure, serviceUnavailable, throttling, unauthorized.
     */
    func registerThingSync(input: IotModel.RegisterThingRequest) throws -> IotModel.RegisterThingResponse

    /**
     Invokes the RejectCertificateTransfer operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RejectCertificateTransferRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, transferAlreadyCompleted, unauthorized.
     */
    func rejectCertificateTransferAsync(input: IotModel.RejectCertificateTransferRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RejectCertificateTransfer operation waiting for the response before returning.

     - Parameters:
         - input: The validated RejectCertificateTransferRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, transferAlreadyCompleted, unauthorized.
     */
    func rejectCertificateTransferSync(input: IotModel.RejectCertificateTransferRequest) throws

    /**
     Invokes the RemoveThingFromBillingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveThingFromBillingGroupRequest object being passed to this operation.
         - completion: The RemoveThingFromBillingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The RemoveThingFromBillingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func removeThingFromBillingGroupAsync(input: IotModel.RemoveThingFromBillingGroupRequest, completion: @escaping (HTTPResult<IotModel.RemoveThingFromBillingGroupResponse>) -> ()) throws

    /**
     Invokes the RemoveThingFromBillingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveThingFromBillingGroupRequest object being passed to this operation.
     - Returns: The RemoveThingFromBillingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func removeThingFromBillingGroupSync(input: IotModel.RemoveThingFromBillingGroupRequest) throws -> IotModel.RemoveThingFromBillingGroupResponse

    /**
     Invokes the RemoveThingFromThingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveThingFromThingGroupRequest object being passed to this operation.
         - completion: The RemoveThingFromThingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The RemoveThingFromThingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func removeThingFromThingGroupAsync(input: IotModel.RemoveThingFromThingGroupRequest, completion: @escaping (HTTPResult<IotModel.RemoveThingFromThingGroupResponse>) -> ()) throws

    /**
     Invokes the RemoveThingFromThingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveThingFromThingGroupRequest object being passed to this operation.
     - Returns: The RemoveThingFromThingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func removeThingFromThingGroupSync(input: IotModel.RemoveThingFromThingGroupRequest) throws -> IotModel.RemoveThingFromThingGroupResponse

    /**
     Invokes the ReplaceTopicRule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceTopicRuleRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: conflictingResourceUpdate, internal, invalidRequest, serviceUnavailable, sqlParse, unauthorized.
     */
    func replaceTopicRuleAsync(input: IotModel.ReplaceTopicRuleRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ReplaceTopicRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceTopicRuleRequest object being passed to this operation.
     - Throws: conflictingResourceUpdate, internal, invalidRequest, serviceUnavailable, sqlParse, unauthorized.
     */
    func replaceTopicRuleSync(input: IotModel.ReplaceTopicRuleRequest) throws

    /**
     Invokes the SearchIndex operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SearchIndexRequest object being passed to this operation.
         - completion: The SearchIndexResponse object or an error will be passed to this 
           callback when the operation is complete. The SearchIndexResponse
           object will be validated before being returned to caller.
           The possible errors are: indexNotReady, internalFailure, invalidQuery, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func searchIndexAsync(input: IotModel.SearchIndexRequest, completion: @escaping (HTTPResult<IotModel.SearchIndexResponse>) -> ()) throws

    /**
     Invokes the SearchIndex operation waiting for the response before returning.

     - Parameters:
         - input: The validated SearchIndexRequest object being passed to this operation.
     - Returns: The SearchIndexResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: indexNotReady, internalFailure, invalidQuery, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func searchIndexSync(input: IotModel.SearchIndexRequest) throws -> IotModel.SearchIndexResponse

    /**
     Invokes the SetDefaultAuthorizer operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetDefaultAuthorizerRequest object being passed to this operation.
         - completion: The SetDefaultAuthorizerResponse object or an error will be passed to this 
           callback when the operation is complete. The SetDefaultAuthorizerResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceAlreadyExists, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func setDefaultAuthorizerAsync(input: IotModel.SetDefaultAuthorizerRequest, completion: @escaping (HTTPResult<IotModel.SetDefaultAuthorizerResponse>) -> ()) throws

    /**
     Invokes the SetDefaultAuthorizer operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetDefaultAuthorizerRequest object being passed to this operation.
     - Returns: The SetDefaultAuthorizerResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceAlreadyExists, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func setDefaultAuthorizerSync(input: IotModel.SetDefaultAuthorizerRequest) throws -> IotModel.SetDefaultAuthorizerResponse

    /**
     Invokes the SetDefaultPolicyVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetDefaultPolicyVersionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func setDefaultPolicyVersionAsync(input: IotModel.SetDefaultPolicyVersionRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the SetDefaultPolicyVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetDefaultPolicyVersionRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func setDefaultPolicyVersionSync(input: IotModel.SetDefaultPolicyVersionRequest) throws

    /**
     Invokes the SetLoggingOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetLoggingOptionsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internal, invalidRequest, serviceUnavailable.
     */
    func setLoggingOptionsAsync(input: IotModel.SetLoggingOptionsRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the SetLoggingOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetLoggingOptionsRequest object being passed to this operation.
     - Throws: internal, invalidRequest, serviceUnavailable.
     */
    func setLoggingOptionsSync(input: IotModel.SetLoggingOptionsRequest) throws

    /**
     Invokes the SetV2LoggingLevel operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetV2LoggingLevelRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internal, invalidRequest, notConfigured, serviceUnavailable.
     */
    func setV2LoggingLevelAsync(input: IotModel.SetV2LoggingLevelRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the SetV2LoggingLevel operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetV2LoggingLevelRequest object being passed to this operation.
     - Throws: internal, invalidRequest, notConfigured, serviceUnavailable.
     */
    func setV2LoggingLevelSync(input: IotModel.SetV2LoggingLevelRequest) throws

    /**
     Invokes the SetV2LoggingOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetV2LoggingOptionsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internal, invalidRequest, serviceUnavailable.
     */
    func setV2LoggingOptionsAsync(input: IotModel.SetV2LoggingOptionsRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the SetV2LoggingOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetV2LoggingOptionsRequest object being passed to this operation.
     - Throws: internal, invalidRequest, serviceUnavailable.
     */
    func setV2LoggingOptionsSync(input: IotModel.SetV2LoggingOptionsRequest) throws

    /**
     Invokes the StartAuditMitigationActionsTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartAuditMitigationActionsTaskRequest object being passed to this operation.
         - completion: The StartAuditMitigationActionsTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The StartAuditMitigationActionsTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, taskAlreadyExists, throttling.
     */
    func startAuditMitigationActionsTaskAsync(input: IotModel.StartAuditMitigationActionsTaskRequest, completion: @escaping (HTTPResult<IotModel.StartAuditMitigationActionsTaskResponse>) -> ()) throws

    /**
     Invokes the StartAuditMitigationActionsTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartAuditMitigationActionsTaskRequest object being passed to this operation.
     - Returns: The StartAuditMitigationActionsTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, taskAlreadyExists, throttling.
     */
    func startAuditMitigationActionsTaskSync(input: IotModel.StartAuditMitigationActionsTaskRequest) throws -> IotModel.StartAuditMitigationActionsTaskResponse

    /**
     Invokes the StartOnDemandAuditTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartOnDemandAuditTaskRequest object being passed to this operation.
         - completion: The StartOnDemandAuditTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The StartOnDemandAuditTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, throttling.
     */
    func startOnDemandAuditTaskAsync(input: IotModel.StartOnDemandAuditTaskRequest, completion: @escaping (HTTPResult<IotModel.StartOnDemandAuditTaskResponse>) -> ()) throws

    /**
     Invokes the StartOnDemandAuditTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartOnDemandAuditTaskRequest object being passed to this operation.
     - Returns: The StartOnDemandAuditTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, throttling.
     */
    func startOnDemandAuditTaskSync(input: IotModel.StartOnDemandAuditTaskRequest) throws -> IotModel.StartOnDemandAuditTaskResponse

    /**
     Invokes the StartThingRegistrationTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartThingRegistrationTaskRequest object being passed to this operation.
         - completion: The StartThingRegistrationTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The StartThingRegistrationTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling, unauthorized.
     */
    func startThingRegistrationTaskAsync(input: IotModel.StartThingRegistrationTaskRequest, completion: @escaping (HTTPResult<IotModel.StartThingRegistrationTaskResponse>) -> ()) throws

    /**
     Invokes the StartThingRegistrationTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartThingRegistrationTaskRequest object being passed to this operation.
     - Returns: The StartThingRegistrationTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling, unauthorized.
     */
    func startThingRegistrationTaskSync(input: IotModel.StartThingRegistrationTaskRequest) throws -> IotModel.StartThingRegistrationTaskResponse

    /**
     Invokes the StopThingRegistrationTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopThingRegistrationTaskRequest object being passed to this operation.
         - completion: The StopThingRegistrationTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The StopThingRegistrationTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling, unauthorized.
     */
    func stopThingRegistrationTaskAsync(input: IotModel.StopThingRegistrationTaskRequest, completion: @escaping (HTTPResult<IotModel.StopThingRegistrationTaskResponse>) -> ()) throws

    /**
     Invokes the StopThingRegistrationTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopThingRegistrationTaskRequest object being passed to this operation.
     - Returns: The StopThingRegistrationTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling, unauthorized.
     */
    func stopThingRegistrationTaskSync(input: IotModel.StopThingRegistrationTaskRequest) throws -> IotModel.StopThingRegistrationTaskResponse

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
         - completion: The TagResourceResponse object or an error will be passed to this 
           callback when the operation is complete. The TagResourceResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceNotFound, throttling.
     */
    func tagResourceAsync(input: IotModel.TagResourceRequest, completion: @escaping (HTTPResult<IotModel.TagResourceResponse>) -> ()) throws

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: The TagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceNotFound, throttling.
     */
    func tagResourceSync(input: IotModel.TagResourceRequest) throws -> IotModel.TagResourceResponse

    /**
     Invokes the TestAuthorization operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TestAuthorizationRequest object being passed to this operation.
         - completion: The TestAuthorizationResponse object or an error will be passed to this 
           callback when the operation is complete. The TestAuthorizationResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func testAuthorizationAsync(input: IotModel.TestAuthorizationRequest, completion: @escaping (HTTPResult<IotModel.TestAuthorizationResponse>) -> ()) throws

    /**
     Invokes the TestAuthorization operation waiting for the response before returning.

     - Parameters:
         - input: The validated TestAuthorizationRequest object being passed to this operation.
     - Returns: The TestAuthorizationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func testAuthorizationSync(input: IotModel.TestAuthorizationRequest) throws -> IotModel.TestAuthorizationResponse

    /**
     Invokes the TestInvokeAuthorizer operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TestInvokeAuthorizerRequest object being passed to this operation.
         - completion: The TestInvokeAuthorizerResponse object or an error will be passed to this 
           callback when the operation is complete. The TestInvokeAuthorizerResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, invalidResponse, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func testInvokeAuthorizerAsync(input: IotModel.TestInvokeAuthorizerRequest, completion: @escaping (HTTPResult<IotModel.TestInvokeAuthorizerResponse>) -> ()) throws

    /**
     Invokes the TestInvokeAuthorizer operation waiting for the response before returning.

     - Parameters:
         - input: The validated TestInvokeAuthorizerRequest object being passed to this operation.
     - Returns: The TestInvokeAuthorizerResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, invalidResponse, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func testInvokeAuthorizerSync(input: IotModel.TestInvokeAuthorizerRequest) throws -> IotModel.TestInvokeAuthorizerResponse

    /**
     Invokes the TransferCertificate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TransferCertificateRequest object being passed to this operation.
         - completion: The TransferCertificateResponse object or an error will be passed to this 
           callback when the operation is complete. The TransferCertificateResponse
           object will be validated before being returned to caller.
           The possible errors are: certificateState, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, transferConflict, unauthorized.
     */
    func transferCertificateAsync(input: IotModel.TransferCertificateRequest, completion: @escaping (HTTPResult<IotModel.TransferCertificateResponse>) -> ()) throws

    /**
     Invokes the TransferCertificate operation waiting for the response before returning.

     - Parameters:
         - input: The validated TransferCertificateRequest object being passed to this operation.
     - Returns: The TransferCertificateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: certificateState, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, transferConflict, unauthorized.
     */
    func transferCertificateSync(input: IotModel.TransferCertificateRequest) throws -> IotModel.TransferCertificateResponse

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
         - completion: The UntagResourceResponse object or an error will be passed to this 
           callback when the operation is complete. The UntagResourceResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func untagResourceAsync(input: IotModel.UntagResourceRequest, completion: @escaping (HTTPResult<IotModel.UntagResourceResponse>) -> ()) throws

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: The UntagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func untagResourceSync(input: IotModel.UntagResourceRequest) throws -> IotModel.UntagResourceResponse

    /**
     Invokes the UpdateAccountAuditConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateAccountAuditConfigurationRequest object being passed to this operation.
         - completion: The UpdateAccountAuditConfigurationResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateAccountAuditConfigurationResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling.
     */
    func updateAccountAuditConfigurationAsync(input: IotModel.UpdateAccountAuditConfigurationRequest, completion: @escaping (HTTPResult<IotModel.UpdateAccountAuditConfigurationResponse>) -> ()) throws

    /**
     Invokes the UpdateAccountAuditConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateAccountAuditConfigurationRequest object being passed to this operation.
     - Returns: The UpdateAccountAuditConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling.
     */
    func updateAccountAuditConfigurationSync(input: IotModel.UpdateAccountAuditConfigurationRequest) throws -> IotModel.UpdateAccountAuditConfigurationResponse

    /**
     Invokes the UpdateAuthorizer operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateAuthorizerRequest object being passed to this operation.
         - completion: The UpdateAuthorizerResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateAuthorizerResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func updateAuthorizerAsync(input: IotModel.UpdateAuthorizerRequest, completion: @escaping (HTTPResult<IotModel.UpdateAuthorizerResponse>) -> ()) throws

    /**
     Invokes the UpdateAuthorizer operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateAuthorizerRequest object being passed to this operation.
     - Returns: The UpdateAuthorizerResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func updateAuthorizerSync(input: IotModel.UpdateAuthorizerRequest) throws -> IotModel.UpdateAuthorizerResponse

    /**
     Invokes the UpdateBillingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateBillingGroupRequest object being passed to this operation.
         - completion: The UpdateBillingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateBillingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling, versionConflict.
     */
    func updateBillingGroupAsync(input: IotModel.UpdateBillingGroupRequest, completion: @escaping (HTTPResult<IotModel.UpdateBillingGroupResponse>) -> ()) throws

    /**
     Invokes the UpdateBillingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateBillingGroupRequest object being passed to this operation.
     - Returns: The UpdateBillingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling, versionConflict.
     */
    func updateBillingGroupSync(input: IotModel.UpdateBillingGroupRequest) throws -> IotModel.UpdateBillingGroupResponse

    /**
     Invokes the UpdateCACertificate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateCACertificateRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func updateCACertificateAsync(input: IotModel.UpdateCACertificateRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the UpdateCACertificate operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateCACertificateRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func updateCACertificateSync(input: IotModel.UpdateCACertificateRequest) throws

    /**
     Invokes the UpdateCertificate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateCertificateRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: certificateState, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func updateCertificateAsync(input: IotModel.UpdateCertificateRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the UpdateCertificate operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateCertificateRequest object being passed to this operation.
     - Throws: certificateState, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func updateCertificateSync(input: IotModel.UpdateCertificateRequest) throws

    /**
     Invokes the UpdateDynamicThingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateDynamicThingGroupRequest object being passed to this operation.
         - completion: The UpdateDynamicThingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateDynamicThingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidQuery, invalidRequest, resourceNotFound, throttling, versionConflict.
     */
    func updateDynamicThingGroupAsync(input: IotModel.UpdateDynamicThingGroupRequest, completion: @escaping (HTTPResult<IotModel.UpdateDynamicThingGroupResponse>) -> ()) throws

    /**
     Invokes the UpdateDynamicThingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateDynamicThingGroupRequest object being passed to this operation.
     - Returns: The UpdateDynamicThingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidQuery, invalidRequest, resourceNotFound, throttling, versionConflict.
     */
    func updateDynamicThingGroupSync(input: IotModel.UpdateDynamicThingGroupRequest) throws -> IotModel.UpdateDynamicThingGroupResponse

    /**
     Invokes the UpdateEventConfigurations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateEventConfigurationsRequest object being passed to this operation.
         - completion: The UpdateEventConfigurationsResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateEventConfigurationsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling.
     */
    func updateEventConfigurationsAsync(input: IotModel.UpdateEventConfigurationsRequest, completion: @escaping (HTTPResult<IotModel.UpdateEventConfigurationsResponse>) -> ()) throws

    /**
     Invokes the UpdateEventConfigurations operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateEventConfigurationsRequest object being passed to this operation.
     - Returns: The UpdateEventConfigurationsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling.
     */
    func updateEventConfigurationsSync(input: IotModel.UpdateEventConfigurationsRequest) throws -> IotModel.UpdateEventConfigurationsResponse

    /**
     Invokes the UpdateIndexingConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateIndexingConfigurationRequest object being passed to this operation.
         - completion: The UpdateIndexingConfigurationResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateIndexingConfigurationResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func updateIndexingConfigurationAsync(input: IotModel.UpdateIndexingConfigurationRequest, completion: @escaping (HTTPResult<IotModel.UpdateIndexingConfigurationResponse>) -> ()) throws

    /**
     Invokes the UpdateIndexingConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateIndexingConfigurationRequest object being passed to this operation.
     - Returns: The UpdateIndexingConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, serviceUnavailable, throttling, unauthorized.
     */
    func updateIndexingConfigurationSync(input: IotModel.UpdateIndexingConfigurationRequest) throws -> IotModel.UpdateIndexingConfigurationResponse

    /**
     Invokes the UpdateJob operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateJobRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    func updateJobAsync(input: IotModel.UpdateJobRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the UpdateJob operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateJobRequest object being passed to this operation.
     - Throws: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    func updateJobSync(input: IotModel.UpdateJobRequest) throws

    /**
     Invokes the UpdateMitigationAction operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateMitigationActionRequest object being passed to this operation.
         - completion: The UpdateMitigationActionResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateMitigationActionResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func updateMitigationActionAsync(input: IotModel.UpdateMitigationActionRequest, completion: @escaping (HTTPResult<IotModel.UpdateMitigationActionResponse>) -> ()) throws

    /**
     Invokes the UpdateMitigationAction operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateMitigationActionRequest object being passed to this operation.
     - Returns: The UpdateMitigationActionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func updateMitigationActionSync(input: IotModel.UpdateMitigationActionRequest) throws -> IotModel.UpdateMitigationActionResponse

    /**
     Invokes the UpdateRoleAlias operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateRoleAliasRequest object being passed to this operation.
         - completion: The UpdateRoleAliasResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateRoleAliasResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func updateRoleAliasAsync(input: IotModel.UpdateRoleAliasRequest, completion: @escaping (HTTPResult<IotModel.UpdateRoleAliasResponse>) -> ()) throws

    /**
     Invokes the UpdateRoleAlias operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateRoleAliasRequest object being passed to this operation.
     - Returns: The UpdateRoleAliasResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func updateRoleAliasSync(input: IotModel.UpdateRoleAliasRequest) throws -> IotModel.UpdateRoleAliasResponse

    /**
     Invokes the UpdateScheduledAudit operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateScheduledAuditRequest object being passed to this operation.
         - completion: The UpdateScheduledAuditResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateScheduledAuditResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func updateScheduledAuditAsync(input: IotModel.UpdateScheduledAuditRequest, completion: @escaping (HTTPResult<IotModel.UpdateScheduledAuditResponse>) -> ()) throws

    /**
     Invokes the UpdateScheduledAudit operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateScheduledAuditRequest object being passed to this operation.
     - Returns: The UpdateScheduledAuditResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func updateScheduledAuditSync(input: IotModel.UpdateScheduledAuditRequest) throws -> IotModel.UpdateScheduledAuditResponse

    /**
     Invokes the UpdateSecurityProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateSecurityProfileRequest object being passed to this operation.
         - completion: The UpdateSecurityProfileResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateSecurityProfileResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling, versionConflict.
     */
    func updateSecurityProfileAsync(input: IotModel.UpdateSecurityProfileRequest, completion: @escaping (HTTPResult<IotModel.UpdateSecurityProfileResponse>) -> ()) throws

    /**
     Invokes the UpdateSecurityProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateSecurityProfileRequest object being passed to this operation.
     - Returns: The UpdateSecurityProfileResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling, versionConflict.
     */
    func updateSecurityProfileSync(input: IotModel.UpdateSecurityProfileRequest) throws -> IotModel.UpdateSecurityProfileResponse

    /**
     Invokes the UpdateStream operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateStreamRequest object being passed to this operation.
         - completion: The UpdateStreamResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateStreamResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func updateStreamAsync(input: IotModel.UpdateStreamRequest, completion: @escaping (HTTPResult<IotModel.UpdateStreamResponse>) -> ()) throws

    /**
     Invokes the UpdateStream operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateStreamRequest object being passed to this operation.
     - Returns: The UpdateStreamResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    func updateStreamSync(input: IotModel.UpdateStreamRequest) throws -> IotModel.UpdateStreamResponse

    /**
     Invokes the UpdateThing operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateThingRequest object being passed to this operation.
         - completion: The UpdateThingResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateThingResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized, versionConflict.
     */
    func updateThingAsync(input: IotModel.UpdateThingRequest, completion: @escaping (HTTPResult<IotModel.UpdateThingResponse>) -> ()) throws

    /**
     Invokes the UpdateThing operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateThingRequest object being passed to this operation.
     - Returns: The UpdateThingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized, versionConflict.
     */
    func updateThingSync(input: IotModel.UpdateThingRequest) throws -> IotModel.UpdateThingResponse

    /**
     Invokes the UpdateThingGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateThingGroupRequest object being passed to this operation.
         - completion: The UpdateThingGroupResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateThingGroupResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling, versionConflict.
     */
    func updateThingGroupAsync(input: IotModel.UpdateThingGroupRequest, completion: @escaping (HTTPResult<IotModel.UpdateThingGroupResponse>) -> ()) throws

    /**
     Invokes the UpdateThingGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateThingGroupRequest object being passed to this operation.
     - Returns: The UpdateThingGroupResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling, versionConflict.
     */
    func updateThingGroupSync(input: IotModel.UpdateThingGroupRequest) throws -> IotModel.UpdateThingGroupResponse

    /**
     Invokes the UpdateThingGroupsForThing operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateThingGroupsForThingRequest object being passed to this operation.
         - completion: The UpdateThingGroupsForThingResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateThingGroupsForThingResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func updateThingGroupsForThingAsync(input: IotModel.UpdateThingGroupsForThingRequest, completion: @escaping (HTTPResult<IotModel.UpdateThingGroupsForThingResponse>) -> ()) throws

    /**
     Invokes the UpdateThingGroupsForThing operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateThingGroupsForThingRequest object being passed to this operation.
     - Returns: The UpdateThingGroupsForThingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, resourceNotFound, throttling.
     */
    func updateThingGroupsForThingSync(input: IotModel.UpdateThingGroupsForThingRequest) throws -> IotModel.UpdateThingGroupsForThingResponse

    /**
     Invokes the ValidateSecurityProfileBehaviors operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ValidateSecurityProfileBehaviorsRequest object being passed to this operation.
         - completion: The ValidateSecurityProfileBehaviorsResponse object or an error will be passed to this 
           callback when the operation is complete. The ValidateSecurityProfileBehaviorsResponse
           object will be validated before being returned to caller.
           The possible errors are: internalFailure, invalidRequest, throttling.
     */
    func validateSecurityProfileBehaviorsAsync(input: IotModel.ValidateSecurityProfileBehaviorsRequest, completion: @escaping (HTTPResult<IotModel.ValidateSecurityProfileBehaviorsResponse>) -> ()) throws

    /**
     Invokes the ValidateSecurityProfileBehaviors operation waiting for the response before returning.

     - Parameters:
         - input: The validated ValidateSecurityProfileBehaviorsRequest object being passed to this operation.
     - Returns: The ValidateSecurityProfileBehaviorsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalFailure, invalidRequest, throttling.
     */
    func validateSecurityProfileBehaviorsSync(input: IotModel.ValidateSecurityProfileBehaviorsRequest) throws -> IotModel.ValidateSecurityProfileBehaviorsResponse
}
