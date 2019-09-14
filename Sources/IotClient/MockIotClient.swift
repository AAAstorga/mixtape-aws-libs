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
// MockIotClient.swift
// IotClient
//

import Foundation
import IotModel
import SmokeHTTPClient

/**
 Mock Client for the Iot service by default returns the `__default` property of its return type.
 */
public struct MockIotClient: IotClientProtocol {
    let acceptCertificateTransferAsyncOverride: IotClientProtocol.AcceptCertificateTransferAsyncType?
    let acceptCertificateTransferSyncOverride: IotClientProtocol.AcceptCertificateTransferSyncType?
    let addThingToBillingGroupAsyncOverride: IotClientProtocol.AddThingToBillingGroupAsyncType?
    let addThingToBillingGroupSyncOverride: IotClientProtocol.AddThingToBillingGroupSyncType?
    let addThingToThingGroupAsyncOverride: IotClientProtocol.AddThingToThingGroupAsyncType?
    let addThingToThingGroupSyncOverride: IotClientProtocol.AddThingToThingGroupSyncType?
    let associateTargetsWithJobAsyncOverride: IotClientProtocol.AssociateTargetsWithJobAsyncType?
    let associateTargetsWithJobSyncOverride: IotClientProtocol.AssociateTargetsWithJobSyncType?
    let attachPolicyAsyncOverride: IotClientProtocol.AttachPolicyAsyncType?
    let attachPolicySyncOverride: IotClientProtocol.AttachPolicySyncType?
    let attachPrincipalPolicyAsyncOverride: IotClientProtocol.AttachPrincipalPolicyAsyncType?
    let attachPrincipalPolicySyncOverride: IotClientProtocol.AttachPrincipalPolicySyncType?
    let attachSecurityProfileAsyncOverride: IotClientProtocol.AttachSecurityProfileAsyncType?
    let attachSecurityProfileSyncOverride: IotClientProtocol.AttachSecurityProfileSyncType?
    let attachThingPrincipalAsyncOverride: IotClientProtocol.AttachThingPrincipalAsyncType?
    let attachThingPrincipalSyncOverride: IotClientProtocol.AttachThingPrincipalSyncType?
    let cancelAuditMitigationActionsTaskAsyncOverride: IotClientProtocol.CancelAuditMitigationActionsTaskAsyncType?
    let cancelAuditMitigationActionsTaskSyncOverride: IotClientProtocol.CancelAuditMitigationActionsTaskSyncType?
    let cancelAuditTaskAsyncOverride: IotClientProtocol.CancelAuditTaskAsyncType?
    let cancelAuditTaskSyncOverride: IotClientProtocol.CancelAuditTaskSyncType?
    let cancelCertificateTransferAsyncOverride: IotClientProtocol.CancelCertificateTransferAsyncType?
    let cancelCertificateTransferSyncOverride: IotClientProtocol.CancelCertificateTransferSyncType?
    let cancelJobAsyncOverride: IotClientProtocol.CancelJobAsyncType?
    let cancelJobSyncOverride: IotClientProtocol.CancelJobSyncType?
    let cancelJobExecutionAsyncOverride: IotClientProtocol.CancelJobExecutionAsyncType?
    let cancelJobExecutionSyncOverride: IotClientProtocol.CancelJobExecutionSyncType?
    let clearDefaultAuthorizerAsyncOverride: IotClientProtocol.ClearDefaultAuthorizerAsyncType?
    let clearDefaultAuthorizerSyncOverride: IotClientProtocol.ClearDefaultAuthorizerSyncType?
    let createAuthorizerAsyncOverride: IotClientProtocol.CreateAuthorizerAsyncType?
    let createAuthorizerSyncOverride: IotClientProtocol.CreateAuthorizerSyncType?
    let createBillingGroupAsyncOverride: IotClientProtocol.CreateBillingGroupAsyncType?
    let createBillingGroupSyncOverride: IotClientProtocol.CreateBillingGroupSyncType?
    let createCertificateFromCsrAsyncOverride: IotClientProtocol.CreateCertificateFromCsrAsyncType?
    let createCertificateFromCsrSyncOverride: IotClientProtocol.CreateCertificateFromCsrSyncType?
    let createDynamicThingGroupAsyncOverride: IotClientProtocol.CreateDynamicThingGroupAsyncType?
    let createDynamicThingGroupSyncOverride: IotClientProtocol.CreateDynamicThingGroupSyncType?
    let createJobAsyncOverride: IotClientProtocol.CreateJobAsyncType?
    let createJobSyncOverride: IotClientProtocol.CreateJobSyncType?
    let createKeysAndCertificateAsyncOverride: IotClientProtocol.CreateKeysAndCertificateAsyncType?
    let createKeysAndCertificateSyncOverride: IotClientProtocol.CreateKeysAndCertificateSyncType?
    let createMitigationActionAsyncOverride: IotClientProtocol.CreateMitigationActionAsyncType?
    let createMitigationActionSyncOverride: IotClientProtocol.CreateMitigationActionSyncType?
    let createOTAUpdateAsyncOverride: IotClientProtocol.CreateOTAUpdateAsyncType?
    let createOTAUpdateSyncOverride: IotClientProtocol.CreateOTAUpdateSyncType?
    let createPolicyAsyncOverride: IotClientProtocol.CreatePolicyAsyncType?
    let createPolicySyncOverride: IotClientProtocol.CreatePolicySyncType?
    let createPolicyVersionAsyncOverride: IotClientProtocol.CreatePolicyVersionAsyncType?
    let createPolicyVersionSyncOverride: IotClientProtocol.CreatePolicyVersionSyncType?
    let createRoleAliasAsyncOverride: IotClientProtocol.CreateRoleAliasAsyncType?
    let createRoleAliasSyncOverride: IotClientProtocol.CreateRoleAliasSyncType?
    let createScheduledAuditAsyncOverride: IotClientProtocol.CreateScheduledAuditAsyncType?
    let createScheduledAuditSyncOverride: IotClientProtocol.CreateScheduledAuditSyncType?
    let createSecurityProfileAsyncOverride: IotClientProtocol.CreateSecurityProfileAsyncType?
    let createSecurityProfileSyncOverride: IotClientProtocol.CreateSecurityProfileSyncType?
    let createStreamAsyncOverride: IotClientProtocol.CreateStreamAsyncType?
    let createStreamSyncOverride: IotClientProtocol.CreateStreamSyncType?
    let createThingAsyncOverride: IotClientProtocol.CreateThingAsyncType?
    let createThingSyncOverride: IotClientProtocol.CreateThingSyncType?
    let createThingGroupAsyncOverride: IotClientProtocol.CreateThingGroupAsyncType?
    let createThingGroupSyncOverride: IotClientProtocol.CreateThingGroupSyncType?
    let createThingTypeAsyncOverride: IotClientProtocol.CreateThingTypeAsyncType?
    let createThingTypeSyncOverride: IotClientProtocol.CreateThingTypeSyncType?
    let createTopicRuleAsyncOverride: IotClientProtocol.CreateTopicRuleAsyncType?
    let createTopicRuleSyncOverride: IotClientProtocol.CreateTopicRuleSyncType?
    let deleteAccountAuditConfigurationAsyncOverride: IotClientProtocol.DeleteAccountAuditConfigurationAsyncType?
    let deleteAccountAuditConfigurationSyncOverride: IotClientProtocol.DeleteAccountAuditConfigurationSyncType?
    let deleteAuthorizerAsyncOverride: IotClientProtocol.DeleteAuthorizerAsyncType?
    let deleteAuthorizerSyncOverride: IotClientProtocol.DeleteAuthorizerSyncType?
    let deleteBillingGroupAsyncOverride: IotClientProtocol.DeleteBillingGroupAsyncType?
    let deleteBillingGroupSyncOverride: IotClientProtocol.DeleteBillingGroupSyncType?
    let deleteCACertificateAsyncOverride: IotClientProtocol.DeleteCACertificateAsyncType?
    let deleteCACertificateSyncOverride: IotClientProtocol.DeleteCACertificateSyncType?
    let deleteCertificateAsyncOverride: IotClientProtocol.DeleteCertificateAsyncType?
    let deleteCertificateSyncOverride: IotClientProtocol.DeleteCertificateSyncType?
    let deleteDynamicThingGroupAsyncOverride: IotClientProtocol.DeleteDynamicThingGroupAsyncType?
    let deleteDynamicThingGroupSyncOverride: IotClientProtocol.DeleteDynamicThingGroupSyncType?
    let deleteJobAsyncOverride: IotClientProtocol.DeleteJobAsyncType?
    let deleteJobSyncOverride: IotClientProtocol.DeleteJobSyncType?
    let deleteJobExecutionAsyncOverride: IotClientProtocol.DeleteJobExecutionAsyncType?
    let deleteJobExecutionSyncOverride: IotClientProtocol.DeleteJobExecutionSyncType?
    let deleteMitigationActionAsyncOverride: IotClientProtocol.DeleteMitigationActionAsyncType?
    let deleteMitigationActionSyncOverride: IotClientProtocol.DeleteMitigationActionSyncType?
    let deleteOTAUpdateAsyncOverride: IotClientProtocol.DeleteOTAUpdateAsyncType?
    let deleteOTAUpdateSyncOverride: IotClientProtocol.DeleteOTAUpdateSyncType?
    let deletePolicyAsyncOverride: IotClientProtocol.DeletePolicyAsyncType?
    let deletePolicySyncOverride: IotClientProtocol.DeletePolicySyncType?
    let deletePolicyVersionAsyncOverride: IotClientProtocol.DeletePolicyVersionAsyncType?
    let deletePolicyVersionSyncOverride: IotClientProtocol.DeletePolicyVersionSyncType?
    let deleteRegistrationCodeAsyncOverride: IotClientProtocol.DeleteRegistrationCodeAsyncType?
    let deleteRegistrationCodeSyncOverride: IotClientProtocol.DeleteRegistrationCodeSyncType?
    let deleteRoleAliasAsyncOverride: IotClientProtocol.DeleteRoleAliasAsyncType?
    let deleteRoleAliasSyncOverride: IotClientProtocol.DeleteRoleAliasSyncType?
    let deleteScheduledAuditAsyncOverride: IotClientProtocol.DeleteScheduledAuditAsyncType?
    let deleteScheduledAuditSyncOverride: IotClientProtocol.DeleteScheduledAuditSyncType?
    let deleteSecurityProfileAsyncOverride: IotClientProtocol.DeleteSecurityProfileAsyncType?
    let deleteSecurityProfileSyncOverride: IotClientProtocol.DeleteSecurityProfileSyncType?
    let deleteStreamAsyncOverride: IotClientProtocol.DeleteStreamAsyncType?
    let deleteStreamSyncOverride: IotClientProtocol.DeleteStreamSyncType?
    let deleteThingAsyncOverride: IotClientProtocol.DeleteThingAsyncType?
    let deleteThingSyncOverride: IotClientProtocol.DeleteThingSyncType?
    let deleteThingGroupAsyncOverride: IotClientProtocol.DeleteThingGroupAsyncType?
    let deleteThingGroupSyncOverride: IotClientProtocol.DeleteThingGroupSyncType?
    let deleteThingTypeAsyncOverride: IotClientProtocol.DeleteThingTypeAsyncType?
    let deleteThingTypeSyncOverride: IotClientProtocol.DeleteThingTypeSyncType?
    let deleteTopicRuleAsyncOverride: IotClientProtocol.DeleteTopicRuleAsyncType?
    let deleteTopicRuleSyncOverride: IotClientProtocol.DeleteTopicRuleSyncType?
    let deleteV2LoggingLevelAsyncOverride: IotClientProtocol.DeleteV2LoggingLevelAsyncType?
    let deleteV2LoggingLevelSyncOverride: IotClientProtocol.DeleteV2LoggingLevelSyncType?
    let deprecateThingTypeAsyncOverride: IotClientProtocol.DeprecateThingTypeAsyncType?
    let deprecateThingTypeSyncOverride: IotClientProtocol.DeprecateThingTypeSyncType?
    let describeAccountAuditConfigurationAsyncOverride: IotClientProtocol.DescribeAccountAuditConfigurationAsyncType?
    let describeAccountAuditConfigurationSyncOverride: IotClientProtocol.DescribeAccountAuditConfigurationSyncType?
    let describeAuditFindingAsyncOverride: IotClientProtocol.DescribeAuditFindingAsyncType?
    let describeAuditFindingSyncOverride: IotClientProtocol.DescribeAuditFindingSyncType?
    let describeAuditMitigationActionsTaskAsyncOverride: IotClientProtocol.DescribeAuditMitigationActionsTaskAsyncType?
    let describeAuditMitigationActionsTaskSyncOverride: IotClientProtocol.DescribeAuditMitigationActionsTaskSyncType?
    let describeAuditTaskAsyncOverride: IotClientProtocol.DescribeAuditTaskAsyncType?
    let describeAuditTaskSyncOverride: IotClientProtocol.DescribeAuditTaskSyncType?
    let describeAuthorizerAsyncOverride: IotClientProtocol.DescribeAuthorizerAsyncType?
    let describeAuthorizerSyncOverride: IotClientProtocol.DescribeAuthorizerSyncType?
    let describeBillingGroupAsyncOverride: IotClientProtocol.DescribeBillingGroupAsyncType?
    let describeBillingGroupSyncOverride: IotClientProtocol.DescribeBillingGroupSyncType?
    let describeCACertificateAsyncOverride: IotClientProtocol.DescribeCACertificateAsyncType?
    let describeCACertificateSyncOverride: IotClientProtocol.DescribeCACertificateSyncType?
    let describeCertificateAsyncOverride: IotClientProtocol.DescribeCertificateAsyncType?
    let describeCertificateSyncOverride: IotClientProtocol.DescribeCertificateSyncType?
    let describeDefaultAuthorizerAsyncOverride: IotClientProtocol.DescribeDefaultAuthorizerAsyncType?
    let describeDefaultAuthorizerSyncOverride: IotClientProtocol.DescribeDefaultAuthorizerSyncType?
    let describeEndpointAsyncOverride: IotClientProtocol.DescribeEndpointAsyncType?
    let describeEndpointSyncOverride: IotClientProtocol.DescribeEndpointSyncType?
    let describeEventConfigurationsAsyncOverride: IotClientProtocol.DescribeEventConfigurationsAsyncType?
    let describeEventConfigurationsSyncOverride: IotClientProtocol.DescribeEventConfigurationsSyncType?
    let describeIndexAsyncOverride: IotClientProtocol.DescribeIndexAsyncType?
    let describeIndexSyncOverride: IotClientProtocol.DescribeIndexSyncType?
    let describeJobAsyncOverride: IotClientProtocol.DescribeJobAsyncType?
    let describeJobSyncOverride: IotClientProtocol.DescribeJobSyncType?
    let describeJobExecutionAsyncOverride: IotClientProtocol.DescribeJobExecutionAsyncType?
    let describeJobExecutionSyncOverride: IotClientProtocol.DescribeJobExecutionSyncType?
    let describeMitigationActionAsyncOverride: IotClientProtocol.DescribeMitigationActionAsyncType?
    let describeMitigationActionSyncOverride: IotClientProtocol.DescribeMitigationActionSyncType?
    let describeRoleAliasAsyncOverride: IotClientProtocol.DescribeRoleAliasAsyncType?
    let describeRoleAliasSyncOverride: IotClientProtocol.DescribeRoleAliasSyncType?
    let describeScheduledAuditAsyncOverride: IotClientProtocol.DescribeScheduledAuditAsyncType?
    let describeScheduledAuditSyncOverride: IotClientProtocol.DescribeScheduledAuditSyncType?
    let describeSecurityProfileAsyncOverride: IotClientProtocol.DescribeSecurityProfileAsyncType?
    let describeSecurityProfileSyncOverride: IotClientProtocol.DescribeSecurityProfileSyncType?
    let describeStreamAsyncOverride: IotClientProtocol.DescribeStreamAsyncType?
    let describeStreamSyncOverride: IotClientProtocol.DescribeStreamSyncType?
    let describeThingAsyncOverride: IotClientProtocol.DescribeThingAsyncType?
    let describeThingSyncOverride: IotClientProtocol.DescribeThingSyncType?
    let describeThingGroupAsyncOverride: IotClientProtocol.DescribeThingGroupAsyncType?
    let describeThingGroupSyncOverride: IotClientProtocol.DescribeThingGroupSyncType?
    let describeThingRegistrationTaskAsyncOverride: IotClientProtocol.DescribeThingRegistrationTaskAsyncType?
    let describeThingRegistrationTaskSyncOverride: IotClientProtocol.DescribeThingRegistrationTaskSyncType?
    let describeThingTypeAsyncOverride: IotClientProtocol.DescribeThingTypeAsyncType?
    let describeThingTypeSyncOverride: IotClientProtocol.DescribeThingTypeSyncType?
    let detachPolicyAsyncOverride: IotClientProtocol.DetachPolicyAsyncType?
    let detachPolicySyncOverride: IotClientProtocol.DetachPolicySyncType?
    let detachPrincipalPolicyAsyncOverride: IotClientProtocol.DetachPrincipalPolicyAsyncType?
    let detachPrincipalPolicySyncOverride: IotClientProtocol.DetachPrincipalPolicySyncType?
    let detachSecurityProfileAsyncOverride: IotClientProtocol.DetachSecurityProfileAsyncType?
    let detachSecurityProfileSyncOverride: IotClientProtocol.DetachSecurityProfileSyncType?
    let detachThingPrincipalAsyncOverride: IotClientProtocol.DetachThingPrincipalAsyncType?
    let detachThingPrincipalSyncOverride: IotClientProtocol.DetachThingPrincipalSyncType?
    let disableTopicRuleAsyncOverride: IotClientProtocol.DisableTopicRuleAsyncType?
    let disableTopicRuleSyncOverride: IotClientProtocol.DisableTopicRuleSyncType?
    let enableTopicRuleAsyncOverride: IotClientProtocol.EnableTopicRuleAsyncType?
    let enableTopicRuleSyncOverride: IotClientProtocol.EnableTopicRuleSyncType?
    let getEffectivePoliciesAsyncOverride: IotClientProtocol.GetEffectivePoliciesAsyncType?
    let getEffectivePoliciesSyncOverride: IotClientProtocol.GetEffectivePoliciesSyncType?
    let getIndexingConfigurationAsyncOverride: IotClientProtocol.GetIndexingConfigurationAsyncType?
    let getIndexingConfigurationSyncOverride: IotClientProtocol.GetIndexingConfigurationSyncType?
    let getJobDocumentAsyncOverride: IotClientProtocol.GetJobDocumentAsyncType?
    let getJobDocumentSyncOverride: IotClientProtocol.GetJobDocumentSyncType?
    let getLoggingOptionsAsyncOverride: IotClientProtocol.GetLoggingOptionsAsyncType?
    let getLoggingOptionsSyncOverride: IotClientProtocol.GetLoggingOptionsSyncType?
    let getOTAUpdateAsyncOverride: IotClientProtocol.GetOTAUpdateAsyncType?
    let getOTAUpdateSyncOverride: IotClientProtocol.GetOTAUpdateSyncType?
    let getPolicyAsyncOverride: IotClientProtocol.GetPolicyAsyncType?
    let getPolicySyncOverride: IotClientProtocol.GetPolicySyncType?
    let getPolicyVersionAsyncOverride: IotClientProtocol.GetPolicyVersionAsyncType?
    let getPolicyVersionSyncOverride: IotClientProtocol.GetPolicyVersionSyncType?
    let getRegistrationCodeAsyncOverride: IotClientProtocol.GetRegistrationCodeAsyncType?
    let getRegistrationCodeSyncOverride: IotClientProtocol.GetRegistrationCodeSyncType?
    let getStatisticsAsyncOverride: IotClientProtocol.GetStatisticsAsyncType?
    let getStatisticsSyncOverride: IotClientProtocol.GetStatisticsSyncType?
    let getTopicRuleAsyncOverride: IotClientProtocol.GetTopicRuleAsyncType?
    let getTopicRuleSyncOverride: IotClientProtocol.GetTopicRuleSyncType?
    let getV2LoggingOptionsAsyncOverride: IotClientProtocol.GetV2LoggingOptionsAsyncType?
    let getV2LoggingOptionsSyncOverride: IotClientProtocol.GetV2LoggingOptionsSyncType?
    let listActiveViolationsAsyncOverride: IotClientProtocol.ListActiveViolationsAsyncType?
    let listActiveViolationsSyncOverride: IotClientProtocol.ListActiveViolationsSyncType?
    let listAttachedPoliciesAsyncOverride: IotClientProtocol.ListAttachedPoliciesAsyncType?
    let listAttachedPoliciesSyncOverride: IotClientProtocol.ListAttachedPoliciesSyncType?
    let listAuditFindingsAsyncOverride: IotClientProtocol.ListAuditFindingsAsyncType?
    let listAuditFindingsSyncOverride: IotClientProtocol.ListAuditFindingsSyncType?
    let listAuditMitigationActionsExecutionsAsyncOverride: IotClientProtocol.ListAuditMitigationActionsExecutionsAsyncType?
    let listAuditMitigationActionsExecutionsSyncOverride: IotClientProtocol.ListAuditMitigationActionsExecutionsSyncType?
    let listAuditMitigationActionsTasksAsyncOverride: IotClientProtocol.ListAuditMitigationActionsTasksAsyncType?
    let listAuditMitigationActionsTasksSyncOverride: IotClientProtocol.ListAuditMitigationActionsTasksSyncType?
    let listAuditTasksAsyncOverride: IotClientProtocol.ListAuditTasksAsyncType?
    let listAuditTasksSyncOverride: IotClientProtocol.ListAuditTasksSyncType?
    let listAuthorizersAsyncOverride: IotClientProtocol.ListAuthorizersAsyncType?
    let listAuthorizersSyncOverride: IotClientProtocol.ListAuthorizersSyncType?
    let listBillingGroupsAsyncOverride: IotClientProtocol.ListBillingGroupsAsyncType?
    let listBillingGroupsSyncOverride: IotClientProtocol.ListBillingGroupsSyncType?
    let listCACertificatesAsyncOverride: IotClientProtocol.ListCACertificatesAsyncType?
    let listCACertificatesSyncOverride: IotClientProtocol.ListCACertificatesSyncType?
    let listCertificatesAsyncOverride: IotClientProtocol.ListCertificatesAsyncType?
    let listCertificatesSyncOverride: IotClientProtocol.ListCertificatesSyncType?
    let listCertificatesByCAAsyncOverride: IotClientProtocol.ListCertificatesByCAAsyncType?
    let listCertificatesByCASyncOverride: IotClientProtocol.ListCertificatesByCASyncType?
    let listIndicesAsyncOverride: IotClientProtocol.ListIndicesAsyncType?
    let listIndicesSyncOverride: IotClientProtocol.ListIndicesSyncType?
    let listJobExecutionsForJobAsyncOverride: IotClientProtocol.ListJobExecutionsForJobAsyncType?
    let listJobExecutionsForJobSyncOverride: IotClientProtocol.ListJobExecutionsForJobSyncType?
    let listJobExecutionsForThingAsyncOverride: IotClientProtocol.ListJobExecutionsForThingAsyncType?
    let listJobExecutionsForThingSyncOverride: IotClientProtocol.ListJobExecutionsForThingSyncType?
    let listJobsAsyncOverride: IotClientProtocol.ListJobsAsyncType?
    let listJobsSyncOverride: IotClientProtocol.ListJobsSyncType?
    let listMitigationActionsAsyncOverride: IotClientProtocol.ListMitigationActionsAsyncType?
    let listMitigationActionsSyncOverride: IotClientProtocol.ListMitigationActionsSyncType?
    let listOTAUpdatesAsyncOverride: IotClientProtocol.ListOTAUpdatesAsyncType?
    let listOTAUpdatesSyncOverride: IotClientProtocol.ListOTAUpdatesSyncType?
    let listOutgoingCertificatesAsyncOverride: IotClientProtocol.ListOutgoingCertificatesAsyncType?
    let listOutgoingCertificatesSyncOverride: IotClientProtocol.ListOutgoingCertificatesSyncType?
    let listPoliciesAsyncOverride: IotClientProtocol.ListPoliciesAsyncType?
    let listPoliciesSyncOverride: IotClientProtocol.ListPoliciesSyncType?
    let listPolicyPrincipalsAsyncOverride: IotClientProtocol.ListPolicyPrincipalsAsyncType?
    let listPolicyPrincipalsSyncOverride: IotClientProtocol.ListPolicyPrincipalsSyncType?
    let listPolicyVersionsAsyncOverride: IotClientProtocol.ListPolicyVersionsAsyncType?
    let listPolicyVersionsSyncOverride: IotClientProtocol.ListPolicyVersionsSyncType?
    let listPrincipalPoliciesAsyncOverride: IotClientProtocol.ListPrincipalPoliciesAsyncType?
    let listPrincipalPoliciesSyncOverride: IotClientProtocol.ListPrincipalPoliciesSyncType?
    let listPrincipalThingsAsyncOverride: IotClientProtocol.ListPrincipalThingsAsyncType?
    let listPrincipalThingsSyncOverride: IotClientProtocol.ListPrincipalThingsSyncType?
    let listRoleAliasesAsyncOverride: IotClientProtocol.ListRoleAliasesAsyncType?
    let listRoleAliasesSyncOverride: IotClientProtocol.ListRoleAliasesSyncType?
    let listScheduledAuditsAsyncOverride: IotClientProtocol.ListScheduledAuditsAsyncType?
    let listScheduledAuditsSyncOverride: IotClientProtocol.ListScheduledAuditsSyncType?
    let listSecurityProfilesAsyncOverride: IotClientProtocol.ListSecurityProfilesAsyncType?
    let listSecurityProfilesSyncOverride: IotClientProtocol.ListSecurityProfilesSyncType?
    let listSecurityProfilesForTargetAsyncOverride: IotClientProtocol.ListSecurityProfilesForTargetAsyncType?
    let listSecurityProfilesForTargetSyncOverride: IotClientProtocol.ListSecurityProfilesForTargetSyncType?
    let listStreamsAsyncOverride: IotClientProtocol.ListStreamsAsyncType?
    let listStreamsSyncOverride: IotClientProtocol.ListStreamsSyncType?
    let listTagsForResourceAsyncOverride: IotClientProtocol.ListTagsForResourceAsyncType?
    let listTagsForResourceSyncOverride: IotClientProtocol.ListTagsForResourceSyncType?
    let listTargetsForPolicyAsyncOverride: IotClientProtocol.ListTargetsForPolicyAsyncType?
    let listTargetsForPolicySyncOverride: IotClientProtocol.ListTargetsForPolicySyncType?
    let listTargetsForSecurityProfileAsyncOverride: IotClientProtocol.ListTargetsForSecurityProfileAsyncType?
    let listTargetsForSecurityProfileSyncOverride: IotClientProtocol.ListTargetsForSecurityProfileSyncType?
    let listThingGroupsAsyncOverride: IotClientProtocol.ListThingGroupsAsyncType?
    let listThingGroupsSyncOverride: IotClientProtocol.ListThingGroupsSyncType?
    let listThingGroupsForThingAsyncOverride: IotClientProtocol.ListThingGroupsForThingAsyncType?
    let listThingGroupsForThingSyncOverride: IotClientProtocol.ListThingGroupsForThingSyncType?
    let listThingPrincipalsAsyncOverride: IotClientProtocol.ListThingPrincipalsAsyncType?
    let listThingPrincipalsSyncOverride: IotClientProtocol.ListThingPrincipalsSyncType?
    let listThingRegistrationTaskReportsAsyncOverride: IotClientProtocol.ListThingRegistrationTaskReportsAsyncType?
    let listThingRegistrationTaskReportsSyncOverride: IotClientProtocol.ListThingRegistrationTaskReportsSyncType?
    let listThingRegistrationTasksAsyncOverride: IotClientProtocol.ListThingRegistrationTasksAsyncType?
    let listThingRegistrationTasksSyncOverride: IotClientProtocol.ListThingRegistrationTasksSyncType?
    let listThingTypesAsyncOverride: IotClientProtocol.ListThingTypesAsyncType?
    let listThingTypesSyncOverride: IotClientProtocol.ListThingTypesSyncType?
    let listThingsAsyncOverride: IotClientProtocol.ListThingsAsyncType?
    let listThingsSyncOverride: IotClientProtocol.ListThingsSyncType?
    let listThingsInBillingGroupAsyncOverride: IotClientProtocol.ListThingsInBillingGroupAsyncType?
    let listThingsInBillingGroupSyncOverride: IotClientProtocol.ListThingsInBillingGroupSyncType?
    let listThingsInThingGroupAsyncOverride: IotClientProtocol.ListThingsInThingGroupAsyncType?
    let listThingsInThingGroupSyncOverride: IotClientProtocol.ListThingsInThingGroupSyncType?
    let listTopicRulesAsyncOverride: IotClientProtocol.ListTopicRulesAsyncType?
    let listTopicRulesSyncOverride: IotClientProtocol.ListTopicRulesSyncType?
    let listV2LoggingLevelsAsyncOverride: IotClientProtocol.ListV2LoggingLevelsAsyncType?
    let listV2LoggingLevelsSyncOverride: IotClientProtocol.ListV2LoggingLevelsSyncType?
    let listViolationEventsAsyncOverride: IotClientProtocol.ListViolationEventsAsyncType?
    let listViolationEventsSyncOverride: IotClientProtocol.ListViolationEventsSyncType?
    let registerCACertificateAsyncOverride: IotClientProtocol.RegisterCACertificateAsyncType?
    let registerCACertificateSyncOverride: IotClientProtocol.RegisterCACertificateSyncType?
    let registerCertificateAsyncOverride: IotClientProtocol.RegisterCertificateAsyncType?
    let registerCertificateSyncOverride: IotClientProtocol.RegisterCertificateSyncType?
    let registerThingAsyncOverride: IotClientProtocol.RegisterThingAsyncType?
    let registerThingSyncOverride: IotClientProtocol.RegisterThingSyncType?
    let rejectCertificateTransferAsyncOverride: IotClientProtocol.RejectCertificateTransferAsyncType?
    let rejectCertificateTransferSyncOverride: IotClientProtocol.RejectCertificateTransferSyncType?
    let removeThingFromBillingGroupAsyncOverride: IotClientProtocol.RemoveThingFromBillingGroupAsyncType?
    let removeThingFromBillingGroupSyncOverride: IotClientProtocol.RemoveThingFromBillingGroupSyncType?
    let removeThingFromThingGroupAsyncOverride: IotClientProtocol.RemoveThingFromThingGroupAsyncType?
    let removeThingFromThingGroupSyncOverride: IotClientProtocol.RemoveThingFromThingGroupSyncType?
    let replaceTopicRuleAsyncOverride: IotClientProtocol.ReplaceTopicRuleAsyncType?
    let replaceTopicRuleSyncOverride: IotClientProtocol.ReplaceTopicRuleSyncType?
    let searchIndexAsyncOverride: IotClientProtocol.SearchIndexAsyncType?
    let searchIndexSyncOverride: IotClientProtocol.SearchIndexSyncType?
    let setDefaultAuthorizerAsyncOverride: IotClientProtocol.SetDefaultAuthorizerAsyncType?
    let setDefaultAuthorizerSyncOverride: IotClientProtocol.SetDefaultAuthorizerSyncType?
    let setDefaultPolicyVersionAsyncOverride: IotClientProtocol.SetDefaultPolicyVersionAsyncType?
    let setDefaultPolicyVersionSyncOverride: IotClientProtocol.SetDefaultPolicyVersionSyncType?
    let setLoggingOptionsAsyncOverride: IotClientProtocol.SetLoggingOptionsAsyncType?
    let setLoggingOptionsSyncOverride: IotClientProtocol.SetLoggingOptionsSyncType?
    let setV2LoggingLevelAsyncOverride: IotClientProtocol.SetV2LoggingLevelAsyncType?
    let setV2LoggingLevelSyncOverride: IotClientProtocol.SetV2LoggingLevelSyncType?
    let setV2LoggingOptionsAsyncOverride: IotClientProtocol.SetV2LoggingOptionsAsyncType?
    let setV2LoggingOptionsSyncOverride: IotClientProtocol.SetV2LoggingOptionsSyncType?
    let startAuditMitigationActionsTaskAsyncOverride: IotClientProtocol.StartAuditMitigationActionsTaskAsyncType?
    let startAuditMitigationActionsTaskSyncOverride: IotClientProtocol.StartAuditMitigationActionsTaskSyncType?
    let startOnDemandAuditTaskAsyncOverride: IotClientProtocol.StartOnDemandAuditTaskAsyncType?
    let startOnDemandAuditTaskSyncOverride: IotClientProtocol.StartOnDemandAuditTaskSyncType?
    let startThingRegistrationTaskAsyncOverride: IotClientProtocol.StartThingRegistrationTaskAsyncType?
    let startThingRegistrationTaskSyncOverride: IotClientProtocol.StartThingRegistrationTaskSyncType?
    let stopThingRegistrationTaskAsyncOverride: IotClientProtocol.StopThingRegistrationTaskAsyncType?
    let stopThingRegistrationTaskSyncOverride: IotClientProtocol.StopThingRegistrationTaskSyncType?
    let tagResourceAsyncOverride: IotClientProtocol.TagResourceAsyncType?
    let tagResourceSyncOverride: IotClientProtocol.TagResourceSyncType?
    let testAuthorizationAsyncOverride: IotClientProtocol.TestAuthorizationAsyncType?
    let testAuthorizationSyncOverride: IotClientProtocol.TestAuthorizationSyncType?
    let testInvokeAuthorizerAsyncOverride: IotClientProtocol.TestInvokeAuthorizerAsyncType?
    let testInvokeAuthorizerSyncOverride: IotClientProtocol.TestInvokeAuthorizerSyncType?
    let transferCertificateAsyncOverride: IotClientProtocol.TransferCertificateAsyncType?
    let transferCertificateSyncOverride: IotClientProtocol.TransferCertificateSyncType?
    let untagResourceAsyncOverride: IotClientProtocol.UntagResourceAsyncType?
    let untagResourceSyncOverride: IotClientProtocol.UntagResourceSyncType?
    let updateAccountAuditConfigurationAsyncOverride: IotClientProtocol.UpdateAccountAuditConfigurationAsyncType?
    let updateAccountAuditConfigurationSyncOverride: IotClientProtocol.UpdateAccountAuditConfigurationSyncType?
    let updateAuthorizerAsyncOverride: IotClientProtocol.UpdateAuthorizerAsyncType?
    let updateAuthorizerSyncOverride: IotClientProtocol.UpdateAuthorizerSyncType?
    let updateBillingGroupAsyncOverride: IotClientProtocol.UpdateBillingGroupAsyncType?
    let updateBillingGroupSyncOverride: IotClientProtocol.UpdateBillingGroupSyncType?
    let updateCACertificateAsyncOverride: IotClientProtocol.UpdateCACertificateAsyncType?
    let updateCACertificateSyncOverride: IotClientProtocol.UpdateCACertificateSyncType?
    let updateCertificateAsyncOverride: IotClientProtocol.UpdateCertificateAsyncType?
    let updateCertificateSyncOverride: IotClientProtocol.UpdateCertificateSyncType?
    let updateDynamicThingGroupAsyncOverride: IotClientProtocol.UpdateDynamicThingGroupAsyncType?
    let updateDynamicThingGroupSyncOverride: IotClientProtocol.UpdateDynamicThingGroupSyncType?
    let updateEventConfigurationsAsyncOverride: IotClientProtocol.UpdateEventConfigurationsAsyncType?
    let updateEventConfigurationsSyncOverride: IotClientProtocol.UpdateEventConfigurationsSyncType?
    let updateIndexingConfigurationAsyncOverride: IotClientProtocol.UpdateIndexingConfigurationAsyncType?
    let updateIndexingConfigurationSyncOverride: IotClientProtocol.UpdateIndexingConfigurationSyncType?
    let updateJobAsyncOverride: IotClientProtocol.UpdateJobAsyncType?
    let updateJobSyncOverride: IotClientProtocol.UpdateJobSyncType?
    let updateMitigationActionAsyncOverride: IotClientProtocol.UpdateMitigationActionAsyncType?
    let updateMitigationActionSyncOverride: IotClientProtocol.UpdateMitigationActionSyncType?
    let updateRoleAliasAsyncOverride: IotClientProtocol.UpdateRoleAliasAsyncType?
    let updateRoleAliasSyncOverride: IotClientProtocol.UpdateRoleAliasSyncType?
    let updateScheduledAuditAsyncOverride: IotClientProtocol.UpdateScheduledAuditAsyncType?
    let updateScheduledAuditSyncOverride: IotClientProtocol.UpdateScheduledAuditSyncType?
    let updateSecurityProfileAsyncOverride: IotClientProtocol.UpdateSecurityProfileAsyncType?
    let updateSecurityProfileSyncOverride: IotClientProtocol.UpdateSecurityProfileSyncType?
    let updateStreamAsyncOverride: IotClientProtocol.UpdateStreamAsyncType?
    let updateStreamSyncOverride: IotClientProtocol.UpdateStreamSyncType?
    let updateThingAsyncOverride: IotClientProtocol.UpdateThingAsyncType?
    let updateThingSyncOverride: IotClientProtocol.UpdateThingSyncType?
    let updateThingGroupAsyncOverride: IotClientProtocol.UpdateThingGroupAsyncType?
    let updateThingGroupSyncOverride: IotClientProtocol.UpdateThingGroupSyncType?
    let updateThingGroupsForThingAsyncOverride: IotClientProtocol.UpdateThingGroupsForThingAsyncType?
    let updateThingGroupsForThingSyncOverride: IotClientProtocol.UpdateThingGroupsForThingSyncType?
    let validateSecurityProfileBehaviorsAsyncOverride: IotClientProtocol.ValidateSecurityProfileBehaviorsAsyncType?
    let validateSecurityProfileBehaviorsSyncOverride: IotClientProtocol.ValidateSecurityProfileBehaviorsSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            acceptCertificateTransferAsync: IotClientProtocol.AcceptCertificateTransferAsyncType? = nil,
            acceptCertificateTransferSync: IotClientProtocol.AcceptCertificateTransferSyncType? = nil,
            addThingToBillingGroupAsync: IotClientProtocol.AddThingToBillingGroupAsyncType? = nil,
            addThingToBillingGroupSync: IotClientProtocol.AddThingToBillingGroupSyncType? = nil,
            addThingToThingGroupAsync: IotClientProtocol.AddThingToThingGroupAsyncType? = nil,
            addThingToThingGroupSync: IotClientProtocol.AddThingToThingGroupSyncType? = nil,
            associateTargetsWithJobAsync: IotClientProtocol.AssociateTargetsWithJobAsyncType? = nil,
            associateTargetsWithJobSync: IotClientProtocol.AssociateTargetsWithJobSyncType? = nil,
            attachPolicyAsync: IotClientProtocol.AttachPolicyAsyncType? = nil,
            attachPolicySync: IotClientProtocol.AttachPolicySyncType? = nil,
            attachPrincipalPolicyAsync: IotClientProtocol.AttachPrincipalPolicyAsyncType? = nil,
            attachPrincipalPolicySync: IotClientProtocol.AttachPrincipalPolicySyncType? = nil,
            attachSecurityProfileAsync: IotClientProtocol.AttachSecurityProfileAsyncType? = nil,
            attachSecurityProfileSync: IotClientProtocol.AttachSecurityProfileSyncType? = nil,
            attachThingPrincipalAsync: IotClientProtocol.AttachThingPrincipalAsyncType? = nil,
            attachThingPrincipalSync: IotClientProtocol.AttachThingPrincipalSyncType? = nil,
            cancelAuditMitigationActionsTaskAsync: IotClientProtocol.CancelAuditMitigationActionsTaskAsyncType? = nil,
            cancelAuditMitigationActionsTaskSync: IotClientProtocol.CancelAuditMitigationActionsTaskSyncType? = nil,
            cancelAuditTaskAsync: IotClientProtocol.CancelAuditTaskAsyncType? = nil,
            cancelAuditTaskSync: IotClientProtocol.CancelAuditTaskSyncType? = nil,
            cancelCertificateTransferAsync: IotClientProtocol.CancelCertificateTransferAsyncType? = nil,
            cancelCertificateTransferSync: IotClientProtocol.CancelCertificateTransferSyncType? = nil,
            cancelJobAsync: IotClientProtocol.CancelJobAsyncType? = nil,
            cancelJobSync: IotClientProtocol.CancelJobSyncType? = nil,
            cancelJobExecutionAsync: IotClientProtocol.CancelJobExecutionAsyncType? = nil,
            cancelJobExecutionSync: IotClientProtocol.CancelJobExecutionSyncType? = nil,
            clearDefaultAuthorizerAsync: IotClientProtocol.ClearDefaultAuthorizerAsyncType? = nil,
            clearDefaultAuthorizerSync: IotClientProtocol.ClearDefaultAuthorizerSyncType? = nil,
            createAuthorizerAsync: IotClientProtocol.CreateAuthorizerAsyncType? = nil,
            createAuthorizerSync: IotClientProtocol.CreateAuthorizerSyncType? = nil,
            createBillingGroupAsync: IotClientProtocol.CreateBillingGroupAsyncType? = nil,
            createBillingGroupSync: IotClientProtocol.CreateBillingGroupSyncType? = nil,
            createCertificateFromCsrAsync: IotClientProtocol.CreateCertificateFromCsrAsyncType? = nil,
            createCertificateFromCsrSync: IotClientProtocol.CreateCertificateFromCsrSyncType? = nil,
            createDynamicThingGroupAsync: IotClientProtocol.CreateDynamicThingGroupAsyncType? = nil,
            createDynamicThingGroupSync: IotClientProtocol.CreateDynamicThingGroupSyncType? = nil,
            createJobAsync: IotClientProtocol.CreateJobAsyncType? = nil,
            createJobSync: IotClientProtocol.CreateJobSyncType? = nil,
            createKeysAndCertificateAsync: IotClientProtocol.CreateKeysAndCertificateAsyncType? = nil,
            createKeysAndCertificateSync: IotClientProtocol.CreateKeysAndCertificateSyncType? = nil,
            createMitigationActionAsync: IotClientProtocol.CreateMitigationActionAsyncType? = nil,
            createMitigationActionSync: IotClientProtocol.CreateMitigationActionSyncType? = nil,
            createOTAUpdateAsync: IotClientProtocol.CreateOTAUpdateAsyncType? = nil,
            createOTAUpdateSync: IotClientProtocol.CreateOTAUpdateSyncType? = nil,
            createPolicyAsync: IotClientProtocol.CreatePolicyAsyncType? = nil,
            createPolicySync: IotClientProtocol.CreatePolicySyncType? = nil,
            createPolicyVersionAsync: IotClientProtocol.CreatePolicyVersionAsyncType? = nil,
            createPolicyVersionSync: IotClientProtocol.CreatePolicyVersionSyncType? = nil,
            createRoleAliasAsync: IotClientProtocol.CreateRoleAliasAsyncType? = nil,
            createRoleAliasSync: IotClientProtocol.CreateRoleAliasSyncType? = nil,
            createScheduledAuditAsync: IotClientProtocol.CreateScheduledAuditAsyncType? = nil,
            createScheduledAuditSync: IotClientProtocol.CreateScheduledAuditSyncType? = nil,
            createSecurityProfileAsync: IotClientProtocol.CreateSecurityProfileAsyncType? = nil,
            createSecurityProfileSync: IotClientProtocol.CreateSecurityProfileSyncType? = nil,
            createStreamAsync: IotClientProtocol.CreateStreamAsyncType? = nil,
            createStreamSync: IotClientProtocol.CreateStreamSyncType? = nil,
            createThingAsync: IotClientProtocol.CreateThingAsyncType? = nil,
            createThingSync: IotClientProtocol.CreateThingSyncType? = nil,
            createThingGroupAsync: IotClientProtocol.CreateThingGroupAsyncType? = nil,
            createThingGroupSync: IotClientProtocol.CreateThingGroupSyncType? = nil,
            createThingTypeAsync: IotClientProtocol.CreateThingTypeAsyncType? = nil,
            createThingTypeSync: IotClientProtocol.CreateThingTypeSyncType? = nil,
            createTopicRuleAsync: IotClientProtocol.CreateTopicRuleAsyncType? = nil,
            createTopicRuleSync: IotClientProtocol.CreateTopicRuleSyncType? = nil,
            deleteAccountAuditConfigurationAsync: IotClientProtocol.DeleteAccountAuditConfigurationAsyncType? = nil,
            deleteAccountAuditConfigurationSync: IotClientProtocol.DeleteAccountAuditConfigurationSyncType? = nil,
            deleteAuthorizerAsync: IotClientProtocol.DeleteAuthorizerAsyncType? = nil,
            deleteAuthorizerSync: IotClientProtocol.DeleteAuthorizerSyncType? = nil,
            deleteBillingGroupAsync: IotClientProtocol.DeleteBillingGroupAsyncType? = nil,
            deleteBillingGroupSync: IotClientProtocol.DeleteBillingGroupSyncType? = nil,
            deleteCACertificateAsync: IotClientProtocol.DeleteCACertificateAsyncType? = nil,
            deleteCACertificateSync: IotClientProtocol.DeleteCACertificateSyncType? = nil,
            deleteCertificateAsync: IotClientProtocol.DeleteCertificateAsyncType? = nil,
            deleteCertificateSync: IotClientProtocol.DeleteCertificateSyncType? = nil,
            deleteDynamicThingGroupAsync: IotClientProtocol.DeleteDynamicThingGroupAsyncType? = nil,
            deleteDynamicThingGroupSync: IotClientProtocol.DeleteDynamicThingGroupSyncType? = nil,
            deleteJobAsync: IotClientProtocol.DeleteJobAsyncType? = nil,
            deleteJobSync: IotClientProtocol.DeleteJobSyncType? = nil,
            deleteJobExecutionAsync: IotClientProtocol.DeleteJobExecutionAsyncType? = nil,
            deleteJobExecutionSync: IotClientProtocol.DeleteJobExecutionSyncType? = nil,
            deleteMitigationActionAsync: IotClientProtocol.DeleteMitigationActionAsyncType? = nil,
            deleteMitigationActionSync: IotClientProtocol.DeleteMitigationActionSyncType? = nil,
            deleteOTAUpdateAsync: IotClientProtocol.DeleteOTAUpdateAsyncType? = nil,
            deleteOTAUpdateSync: IotClientProtocol.DeleteOTAUpdateSyncType? = nil,
            deletePolicyAsync: IotClientProtocol.DeletePolicyAsyncType? = nil,
            deletePolicySync: IotClientProtocol.DeletePolicySyncType? = nil,
            deletePolicyVersionAsync: IotClientProtocol.DeletePolicyVersionAsyncType? = nil,
            deletePolicyVersionSync: IotClientProtocol.DeletePolicyVersionSyncType? = nil,
            deleteRegistrationCodeAsync: IotClientProtocol.DeleteRegistrationCodeAsyncType? = nil,
            deleteRegistrationCodeSync: IotClientProtocol.DeleteRegistrationCodeSyncType? = nil,
            deleteRoleAliasAsync: IotClientProtocol.DeleteRoleAliasAsyncType? = nil,
            deleteRoleAliasSync: IotClientProtocol.DeleteRoleAliasSyncType? = nil,
            deleteScheduledAuditAsync: IotClientProtocol.DeleteScheduledAuditAsyncType? = nil,
            deleteScheduledAuditSync: IotClientProtocol.DeleteScheduledAuditSyncType? = nil,
            deleteSecurityProfileAsync: IotClientProtocol.DeleteSecurityProfileAsyncType? = nil,
            deleteSecurityProfileSync: IotClientProtocol.DeleteSecurityProfileSyncType? = nil,
            deleteStreamAsync: IotClientProtocol.DeleteStreamAsyncType? = nil,
            deleteStreamSync: IotClientProtocol.DeleteStreamSyncType? = nil,
            deleteThingAsync: IotClientProtocol.DeleteThingAsyncType? = nil,
            deleteThingSync: IotClientProtocol.DeleteThingSyncType? = nil,
            deleteThingGroupAsync: IotClientProtocol.DeleteThingGroupAsyncType? = nil,
            deleteThingGroupSync: IotClientProtocol.DeleteThingGroupSyncType? = nil,
            deleteThingTypeAsync: IotClientProtocol.DeleteThingTypeAsyncType? = nil,
            deleteThingTypeSync: IotClientProtocol.DeleteThingTypeSyncType? = nil,
            deleteTopicRuleAsync: IotClientProtocol.DeleteTopicRuleAsyncType? = nil,
            deleteTopicRuleSync: IotClientProtocol.DeleteTopicRuleSyncType? = nil,
            deleteV2LoggingLevelAsync: IotClientProtocol.DeleteV2LoggingLevelAsyncType? = nil,
            deleteV2LoggingLevelSync: IotClientProtocol.DeleteV2LoggingLevelSyncType? = nil,
            deprecateThingTypeAsync: IotClientProtocol.DeprecateThingTypeAsyncType? = nil,
            deprecateThingTypeSync: IotClientProtocol.DeprecateThingTypeSyncType? = nil,
            describeAccountAuditConfigurationAsync: IotClientProtocol.DescribeAccountAuditConfigurationAsyncType? = nil,
            describeAccountAuditConfigurationSync: IotClientProtocol.DescribeAccountAuditConfigurationSyncType? = nil,
            describeAuditFindingAsync: IotClientProtocol.DescribeAuditFindingAsyncType? = nil,
            describeAuditFindingSync: IotClientProtocol.DescribeAuditFindingSyncType? = nil,
            describeAuditMitigationActionsTaskAsync: IotClientProtocol.DescribeAuditMitigationActionsTaskAsyncType? = nil,
            describeAuditMitigationActionsTaskSync: IotClientProtocol.DescribeAuditMitigationActionsTaskSyncType? = nil,
            describeAuditTaskAsync: IotClientProtocol.DescribeAuditTaskAsyncType? = nil,
            describeAuditTaskSync: IotClientProtocol.DescribeAuditTaskSyncType? = nil,
            describeAuthorizerAsync: IotClientProtocol.DescribeAuthorizerAsyncType? = nil,
            describeAuthorizerSync: IotClientProtocol.DescribeAuthorizerSyncType? = nil,
            describeBillingGroupAsync: IotClientProtocol.DescribeBillingGroupAsyncType? = nil,
            describeBillingGroupSync: IotClientProtocol.DescribeBillingGroupSyncType? = nil,
            describeCACertificateAsync: IotClientProtocol.DescribeCACertificateAsyncType? = nil,
            describeCACertificateSync: IotClientProtocol.DescribeCACertificateSyncType? = nil,
            describeCertificateAsync: IotClientProtocol.DescribeCertificateAsyncType? = nil,
            describeCertificateSync: IotClientProtocol.DescribeCertificateSyncType? = nil,
            describeDefaultAuthorizerAsync: IotClientProtocol.DescribeDefaultAuthorizerAsyncType? = nil,
            describeDefaultAuthorizerSync: IotClientProtocol.DescribeDefaultAuthorizerSyncType? = nil,
            describeEndpointAsync: IotClientProtocol.DescribeEndpointAsyncType? = nil,
            describeEndpointSync: IotClientProtocol.DescribeEndpointSyncType? = nil,
            describeEventConfigurationsAsync: IotClientProtocol.DescribeEventConfigurationsAsyncType? = nil,
            describeEventConfigurationsSync: IotClientProtocol.DescribeEventConfigurationsSyncType? = nil,
            describeIndexAsync: IotClientProtocol.DescribeIndexAsyncType? = nil,
            describeIndexSync: IotClientProtocol.DescribeIndexSyncType? = nil,
            describeJobAsync: IotClientProtocol.DescribeJobAsyncType? = nil,
            describeJobSync: IotClientProtocol.DescribeJobSyncType? = nil,
            describeJobExecutionAsync: IotClientProtocol.DescribeJobExecutionAsyncType? = nil,
            describeJobExecutionSync: IotClientProtocol.DescribeJobExecutionSyncType? = nil,
            describeMitigationActionAsync: IotClientProtocol.DescribeMitigationActionAsyncType? = nil,
            describeMitigationActionSync: IotClientProtocol.DescribeMitigationActionSyncType? = nil,
            describeRoleAliasAsync: IotClientProtocol.DescribeRoleAliasAsyncType? = nil,
            describeRoleAliasSync: IotClientProtocol.DescribeRoleAliasSyncType? = nil,
            describeScheduledAuditAsync: IotClientProtocol.DescribeScheduledAuditAsyncType? = nil,
            describeScheduledAuditSync: IotClientProtocol.DescribeScheduledAuditSyncType? = nil,
            describeSecurityProfileAsync: IotClientProtocol.DescribeSecurityProfileAsyncType? = nil,
            describeSecurityProfileSync: IotClientProtocol.DescribeSecurityProfileSyncType? = nil,
            describeStreamAsync: IotClientProtocol.DescribeStreamAsyncType? = nil,
            describeStreamSync: IotClientProtocol.DescribeStreamSyncType? = nil,
            describeThingAsync: IotClientProtocol.DescribeThingAsyncType? = nil,
            describeThingSync: IotClientProtocol.DescribeThingSyncType? = nil,
            describeThingGroupAsync: IotClientProtocol.DescribeThingGroupAsyncType? = nil,
            describeThingGroupSync: IotClientProtocol.DescribeThingGroupSyncType? = nil,
            describeThingRegistrationTaskAsync: IotClientProtocol.DescribeThingRegistrationTaskAsyncType? = nil,
            describeThingRegistrationTaskSync: IotClientProtocol.DescribeThingRegistrationTaskSyncType? = nil,
            describeThingTypeAsync: IotClientProtocol.DescribeThingTypeAsyncType? = nil,
            describeThingTypeSync: IotClientProtocol.DescribeThingTypeSyncType? = nil,
            detachPolicyAsync: IotClientProtocol.DetachPolicyAsyncType? = nil,
            detachPolicySync: IotClientProtocol.DetachPolicySyncType? = nil,
            detachPrincipalPolicyAsync: IotClientProtocol.DetachPrincipalPolicyAsyncType? = nil,
            detachPrincipalPolicySync: IotClientProtocol.DetachPrincipalPolicySyncType? = nil,
            detachSecurityProfileAsync: IotClientProtocol.DetachSecurityProfileAsyncType? = nil,
            detachSecurityProfileSync: IotClientProtocol.DetachSecurityProfileSyncType? = nil,
            detachThingPrincipalAsync: IotClientProtocol.DetachThingPrincipalAsyncType? = nil,
            detachThingPrincipalSync: IotClientProtocol.DetachThingPrincipalSyncType? = nil,
            disableTopicRuleAsync: IotClientProtocol.DisableTopicRuleAsyncType? = nil,
            disableTopicRuleSync: IotClientProtocol.DisableTopicRuleSyncType? = nil,
            enableTopicRuleAsync: IotClientProtocol.EnableTopicRuleAsyncType? = nil,
            enableTopicRuleSync: IotClientProtocol.EnableTopicRuleSyncType? = nil,
            getEffectivePoliciesAsync: IotClientProtocol.GetEffectivePoliciesAsyncType? = nil,
            getEffectivePoliciesSync: IotClientProtocol.GetEffectivePoliciesSyncType? = nil,
            getIndexingConfigurationAsync: IotClientProtocol.GetIndexingConfigurationAsyncType? = nil,
            getIndexingConfigurationSync: IotClientProtocol.GetIndexingConfigurationSyncType? = nil,
            getJobDocumentAsync: IotClientProtocol.GetJobDocumentAsyncType? = nil,
            getJobDocumentSync: IotClientProtocol.GetJobDocumentSyncType? = nil,
            getLoggingOptionsAsync: IotClientProtocol.GetLoggingOptionsAsyncType? = nil,
            getLoggingOptionsSync: IotClientProtocol.GetLoggingOptionsSyncType? = nil,
            getOTAUpdateAsync: IotClientProtocol.GetOTAUpdateAsyncType? = nil,
            getOTAUpdateSync: IotClientProtocol.GetOTAUpdateSyncType? = nil,
            getPolicyAsync: IotClientProtocol.GetPolicyAsyncType? = nil,
            getPolicySync: IotClientProtocol.GetPolicySyncType? = nil,
            getPolicyVersionAsync: IotClientProtocol.GetPolicyVersionAsyncType? = nil,
            getPolicyVersionSync: IotClientProtocol.GetPolicyVersionSyncType? = nil,
            getRegistrationCodeAsync: IotClientProtocol.GetRegistrationCodeAsyncType? = nil,
            getRegistrationCodeSync: IotClientProtocol.GetRegistrationCodeSyncType? = nil,
            getStatisticsAsync: IotClientProtocol.GetStatisticsAsyncType? = nil,
            getStatisticsSync: IotClientProtocol.GetStatisticsSyncType? = nil,
            getTopicRuleAsync: IotClientProtocol.GetTopicRuleAsyncType? = nil,
            getTopicRuleSync: IotClientProtocol.GetTopicRuleSyncType? = nil,
            getV2LoggingOptionsAsync: IotClientProtocol.GetV2LoggingOptionsAsyncType? = nil,
            getV2LoggingOptionsSync: IotClientProtocol.GetV2LoggingOptionsSyncType? = nil,
            listActiveViolationsAsync: IotClientProtocol.ListActiveViolationsAsyncType? = nil,
            listActiveViolationsSync: IotClientProtocol.ListActiveViolationsSyncType? = nil,
            listAttachedPoliciesAsync: IotClientProtocol.ListAttachedPoliciesAsyncType? = nil,
            listAttachedPoliciesSync: IotClientProtocol.ListAttachedPoliciesSyncType? = nil,
            listAuditFindingsAsync: IotClientProtocol.ListAuditFindingsAsyncType? = nil,
            listAuditFindingsSync: IotClientProtocol.ListAuditFindingsSyncType? = nil,
            listAuditMitigationActionsExecutionsAsync: IotClientProtocol.ListAuditMitigationActionsExecutionsAsyncType? = nil,
            listAuditMitigationActionsExecutionsSync: IotClientProtocol.ListAuditMitigationActionsExecutionsSyncType? = nil,
            listAuditMitigationActionsTasksAsync: IotClientProtocol.ListAuditMitigationActionsTasksAsyncType? = nil,
            listAuditMitigationActionsTasksSync: IotClientProtocol.ListAuditMitigationActionsTasksSyncType? = nil,
            listAuditTasksAsync: IotClientProtocol.ListAuditTasksAsyncType? = nil,
            listAuditTasksSync: IotClientProtocol.ListAuditTasksSyncType? = nil,
            listAuthorizersAsync: IotClientProtocol.ListAuthorizersAsyncType? = nil,
            listAuthorizersSync: IotClientProtocol.ListAuthorizersSyncType? = nil,
            listBillingGroupsAsync: IotClientProtocol.ListBillingGroupsAsyncType? = nil,
            listBillingGroupsSync: IotClientProtocol.ListBillingGroupsSyncType? = nil,
            listCACertificatesAsync: IotClientProtocol.ListCACertificatesAsyncType? = nil,
            listCACertificatesSync: IotClientProtocol.ListCACertificatesSyncType? = nil,
            listCertificatesAsync: IotClientProtocol.ListCertificatesAsyncType? = nil,
            listCertificatesSync: IotClientProtocol.ListCertificatesSyncType? = nil,
            listCertificatesByCAAsync: IotClientProtocol.ListCertificatesByCAAsyncType? = nil,
            listCertificatesByCASync: IotClientProtocol.ListCertificatesByCASyncType? = nil,
            listIndicesAsync: IotClientProtocol.ListIndicesAsyncType? = nil,
            listIndicesSync: IotClientProtocol.ListIndicesSyncType? = nil,
            listJobExecutionsForJobAsync: IotClientProtocol.ListJobExecutionsForJobAsyncType? = nil,
            listJobExecutionsForJobSync: IotClientProtocol.ListJobExecutionsForJobSyncType? = nil,
            listJobExecutionsForThingAsync: IotClientProtocol.ListJobExecutionsForThingAsyncType? = nil,
            listJobExecutionsForThingSync: IotClientProtocol.ListJobExecutionsForThingSyncType? = nil,
            listJobsAsync: IotClientProtocol.ListJobsAsyncType? = nil,
            listJobsSync: IotClientProtocol.ListJobsSyncType? = nil,
            listMitigationActionsAsync: IotClientProtocol.ListMitigationActionsAsyncType? = nil,
            listMitigationActionsSync: IotClientProtocol.ListMitigationActionsSyncType? = nil,
            listOTAUpdatesAsync: IotClientProtocol.ListOTAUpdatesAsyncType? = nil,
            listOTAUpdatesSync: IotClientProtocol.ListOTAUpdatesSyncType? = nil,
            listOutgoingCertificatesAsync: IotClientProtocol.ListOutgoingCertificatesAsyncType? = nil,
            listOutgoingCertificatesSync: IotClientProtocol.ListOutgoingCertificatesSyncType? = nil,
            listPoliciesAsync: IotClientProtocol.ListPoliciesAsyncType? = nil,
            listPoliciesSync: IotClientProtocol.ListPoliciesSyncType? = nil,
            listPolicyPrincipalsAsync: IotClientProtocol.ListPolicyPrincipalsAsyncType? = nil,
            listPolicyPrincipalsSync: IotClientProtocol.ListPolicyPrincipalsSyncType? = nil,
            listPolicyVersionsAsync: IotClientProtocol.ListPolicyVersionsAsyncType? = nil,
            listPolicyVersionsSync: IotClientProtocol.ListPolicyVersionsSyncType? = nil,
            listPrincipalPoliciesAsync: IotClientProtocol.ListPrincipalPoliciesAsyncType? = nil,
            listPrincipalPoliciesSync: IotClientProtocol.ListPrincipalPoliciesSyncType? = nil,
            listPrincipalThingsAsync: IotClientProtocol.ListPrincipalThingsAsyncType? = nil,
            listPrincipalThingsSync: IotClientProtocol.ListPrincipalThingsSyncType? = nil,
            listRoleAliasesAsync: IotClientProtocol.ListRoleAliasesAsyncType? = nil,
            listRoleAliasesSync: IotClientProtocol.ListRoleAliasesSyncType? = nil,
            listScheduledAuditsAsync: IotClientProtocol.ListScheduledAuditsAsyncType? = nil,
            listScheduledAuditsSync: IotClientProtocol.ListScheduledAuditsSyncType? = nil,
            listSecurityProfilesAsync: IotClientProtocol.ListSecurityProfilesAsyncType? = nil,
            listSecurityProfilesSync: IotClientProtocol.ListSecurityProfilesSyncType? = nil,
            listSecurityProfilesForTargetAsync: IotClientProtocol.ListSecurityProfilesForTargetAsyncType? = nil,
            listSecurityProfilesForTargetSync: IotClientProtocol.ListSecurityProfilesForTargetSyncType? = nil,
            listStreamsAsync: IotClientProtocol.ListStreamsAsyncType? = nil,
            listStreamsSync: IotClientProtocol.ListStreamsSyncType? = nil,
            listTagsForResourceAsync: IotClientProtocol.ListTagsForResourceAsyncType? = nil,
            listTagsForResourceSync: IotClientProtocol.ListTagsForResourceSyncType? = nil,
            listTargetsForPolicyAsync: IotClientProtocol.ListTargetsForPolicyAsyncType? = nil,
            listTargetsForPolicySync: IotClientProtocol.ListTargetsForPolicySyncType? = nil,
            listTargetsForSecurityProfileAsync: IotClientProtocol.ListTargetsForSecurityProfileAsyncType? = nil,
            listTargetsForSecurityProfileSync: IotClientProtocol.ListTargetsForSecurityProfileSyncType? = nil,
            listThingGroupsAsync: IotClientProtocol.ListThingGroupsAsyncType? = nil,
            listThingGroupsSync: IotClientProtocol.ListThingGroupsSyncType? = nil,
            listThingGroupsForThingAsync: IotClientProtocol.ListThingGroupsForThingAsyncType? = nil,
            listThingGroupsForThingSync: IotClientProtocol.ListThingGroupsForThingSyncType? = nil,
            listThingPrincipalsAsync: IotClientProtocol.ListThingPrincipalsAsyncType? = nil,
            listThingPrincipalsSync: IotClientProtocol.ListThingPrincipalsSyncType? = nil,
            listThingRegistrationTaskReportsAsync: IotClientProtocol.ListThingRegistrationTaskReportsAsyncType? = nil,
            listThingRegistrationTaskReportsSync: IotClientProtocol.ListThingRegistrationTaskReportsSyncType? = nil,
            listThingRegistrationTasksAsync: IotClientProtocol.ListThingRegistrationTasksAsyncType? = nil,
            listThingRegistrationTasksSync: IotClientProtocol.ListThingRegistrationTasksSyncType? = nil,
            listThingTypesAsync: IotClientProtocol.ListThingTypesAsyncType? = nil,
            listThingTypesSync: IotClientProtocol.ListThingTypesSyncType? = nil,
            listThingsAsync: IotClientProtocol.ListThingsAsyncType? = nil,
            listThingsSync: IotClientProtocol.ListThingsSyncType? = nil,
            listThingsInBillingGroupAsync: IotClientProtocol.ListThingsInBillingGroupAsyncType? = nil,
            listThingsInBillingGroupSync: IotClientProtocol.ListThingsInBillingGroupSyncType? = nil,
            listThingsInThingGroupAsync: IotClientProtocol.ListThingsInThingGroupAsyncType? = nil,
            listThingsInThingGroupSync: IotClientProtocol.ListThingsInThingGroupSyncType? = nil,
            listTopicRulesAsync: IotClientProtocol.ListTopicRulesAsyncType? = nil,
            listTopicRulesSync: IotClientProtocol.ListTopicRulesSyncType? = nil,
            listV2LoggingLevelsAsync: IotClientProtocol.ListV2LoggingLevelsAsyncType? = nil,
            listV2LoggingLevelsSync: IotClientProtocol.ListV2LoggingLevelsSyncType? = nil,
            listViolationEventsAsync: IotClientProtocol.ListViolationEventsAsyncType? = nil,
            listViolationEventsSync: IotClientProtocol.ListViolationEventsSyncType? = nil,
            registerCACertificateAsync: IotClientProtocol.RegisterCACertificateAsyncType? = nil,
            registerCACertificateSync: IotClientProtocol.RegisterCACertificateSyncType? = nil,
            registerCertificateAsync: IotClientProtocol.RegisterCertificateAsyncType? = nil,
            registerCertificateSync: IotClientProtocol.RegisterCertificateSyncType? = nil,
            registerThingAsync: IotClientProtocol.RegisterThingAsyncType? = nil,
            registerThingSync: IotClientProtocol.RegisterThingSyncType? = nil,
            rejectCertificateTransferAsync: IotClientProtocol.RejectCertificateTransferAsyncType? = nil,
            rejectCertificateTransferSync: IotClientProtocol.RejectCertificateTransferSyncType? = nil,
            removeThingFromBillingGroupAsync: IotClientProtocol.RemoveThingFromBillingGroupAsyncType? = nil,
            removeThingFromBillingGroupSync: IotClientProtocol.RemoveThingFromBillingGroupSyncType? = nil,
            removeThingFromThingGroupAsync: IotClientProtocol.RemoveThingFromThingGroupAsyncType? = nil,
            removeThingFromThingGroupSync: IotClientProtocol.RemoveThingFromThingGroupSyncType? = nil,
            replaceTopicRuleAsync: IotClientProtocol.ReplaceTopicRuleAsyncType? = nil,
            replaceTopicRuleSync: IotClientProtocol.ReplaceTopicRuleSyncType? = nil,
            searchIndexAsync: IotClientProtocol.SearchIndexAsyncType? = nil,
            searchIndexSync: IotClientProtocol.SearchIndexSyncType? = nil,
            setDefaultAuthorizerAsync: IotClientProtocol.SetDefaultAuthorizerAsyncType? = nil,
            setDefaultAuthorizerSync: IotClientProtocol.SetDefaultAuthorizerSyncType? = nil,
            setDefaultPolicyVersionAsync: IotClientProtocol.SetDefaultPolicyVersionAsyncType? = nil,
            setDefaultPolicyVersionSync: IotClientProtocol.SetDefaultPolicyVersionSyncType? = nil,
            setLoggingOptionsAsync: IotClientProtocol.SetLoggingOptionsAsyncType? = nil,
            setLoggingOptionsSync: IotClientProtocol.SetLoggingOptionsSyncType? = nil,
            setV2LoggingLevelAsync: IotClientProtocol.SetV2LoggingLevelAsyncType? = nil,
            setV2LoggingLevelSync: IotClientProtocol.SetV2LoggingLevelSyncType? = nil,
            setV2LoggingOptionsAsync: IotClientProtocol.SetV2LoggingOptionsAsyncType? = nil,
            setV2LoggingOptionsSync: IotClientProtocol.SetV2LoggingOptionsSyncType? = nil,
            startAuditMitigationActionsTaskAsync: IotClientProtocol.StartAuditMitigationActionsTaskAsyncType? = nil,
            startAuditMitigationActionsTaskSync: IotClientProtocol.StartAuditMitigationActionsTaskSyncType? = nil,
            startOnDemandAuditTaskAsync: IotClientProtocol.StartOnDemandAuditTaskAsyncType? = nil,
            startOnDemandAuditTaskSync: IotClientProtocol.StartOnDemandAuditTaskSyncType? = nil,
            startThingRegistrationTaskAsync: IotClientProtocol.StartThingRegistrationTaskAsyncType? = nil,
            startThingRegistrationTaskSync: IotClientProtocol.StartThingRegistrationTaskSyncType? = nil,
            stopThingRegistrationTaskAsync: IotClientProtocol.StopThingRegistrationTaskAsyncType? = nil,
            stopThingRegistrationTaskSync: IotClientProtocol.StopThingRegistrationTaskSyncType? = nil,
            tagResourceAsync: IotClientProtocol.TagResourceAsyncType? = nil,
            tagResourceSync: IotClientProtocol.TagResourceSyncType? = nil,
            testAuthorizationAsync: IotClientProtocol.TestAuthorizationAsyncType? = nil,
            testAuthorizationSync: IotClientProtocol.TestAuthorizationSyncType? = nil,
            testInvokeAuthorizerAsync: IotClientProtocol.TestInvokeAuthorizerAsyncType? = nil,
            testInvokeAuthorizerSync: IotClientProtocol.TestInvokeAuthorizerSyncType? = nil,
            transferCertificateAsync: IotClientProtocol.TransferCertificateAsyncType? = nil,
            transferCertificateSync: IotClientProtocol.TransferCertificateSyncType? = nil,
            untagResourceAsync: IotClientProtocol.UntagResourceAsyncType? = nil,
            untagResourceSync: IotClientProtocol.UntagResourceSyncType? = nil,
            updateAccountAuditConfigurationAsync: IotClientProtocol.UpdateAccountAuditConfigurationAsyncType? = nil,
            updateAccountAuditConfigurationSync: IotClientProtocol.UpdateAccountAuditConfigurationSyncType? = nil,
            updateAuthorizerAsync: IotClientProtocol.UpdateAuthorizerAsyncType? = nil,
            updateAuthorizerSync: IotClientProtocol.UpdateAuthorizerSyncType? = nil,
            updateBillingGroupAsync: IotClientProtocol.UpdateBillingGroupAsyncType? = nil,
            updateBillingGroupSync: IotClientProtocol.UpdateBillingGroupSyncType? = nil,
            updateCACertificateAsync: IotClientProtocol.UpdateCACertificateAsyncType? = nil,
            updateCACertificateSync: IotClientProtocol.UpdateCACertificateSyncType? = nil,
            updateCertificateAsync: IotClientProtocol.UpdateCertificateAsyncType? = nil,
            updateCertificateSync: IotClientProtocol.UpdateCertificateSyncType? = nil,
            updateDynamicThingGroupAsync: IotClientProtocol.UpdateDynamicThingGroupAsyncType? = nil,
            updateDynamicThingGroupSync: IotClientProtocol.UpdateDynamicThingGroupSyncType? = nil,
            updateEventConfigurationsAsync: IotClientProtocol.UpdateEventConfigurationsAsyncType? = nil,
            updateEventConfigurationsSync: IotClientProtocol.UpdateEventConfigurationsSyncType? = nil,
            updateIndexingConfigurationAsync: IotClientProtocol.UpdateIndexingConfigurationAsyncType? = nil,
            updateIndexingConfigurationSync: IotClientProtocol.UpdateIndexingConfigurationSyncType? = nil,
            updateJobAsync: IotClientProtocol.UpdateJobAsyncType? = nil,
            updateJobSync: IotClientProtocol.UpdateJobSyncType? = nil,
            updateMitigationActionAsync: IotClientProtocol.UpdateMitigationActionAsyncType? = nil,
            updateMitigationActionSync: IotClientProtocol.UpdateMitigationActionSyncType? = nil,
            updateRoleAliasAsync: IotClientProtocol.UpdateRoleAliasAsyncType? = nil,
            updateRoleAliasSync: IotClientProtocol.UpdateRoleAliasSyncType? = nil,
            updateScheduledAuditAsync: IotClientProtocol.UpdateScheduledAuditAsyncType? = nil,
            updateScheduledAuditSync: IotClientProtocol.UpdateScheduledAuditSyncType? = nil,
            updateSecurityProfileAsync: IotClientProtocol.UpdateSecurityProfileAsyncType? = nil,
            updateSecurityProfileSync: IotClientProtocol.UpdateSecurityProfileSyncType? = nil,
            updateStreamAsync: IotClientProtocol.UpdateStreamAsyncType? = nil,
            updateStreamSync: IotClientProtocol.UpdateStreamSyncType? = nil,
            updateThingAsync: IotClientProtocol.UpdateThingAsyncType? = nil,
            updateThingSync: IotClientProtocol.UpdateThingSyncType? = nil,
            updateThingGroupAsync: IotClientProtocol.UpdateThingGroupAsyncType? = nil,
            updateThingGroupSync: IotClientProtocol.UpdateThingGroupSyncType? = nil,
            updateThingGroupsForThingAsync: IotClientProtocol.UpdateThingGroupsForThingAsyncType? = nil,
            updateThingGroupsForThingSync: IotClientProtocol.UpdateThingGroupsForThingSyncType? = nil,
            validateSecurityProfileBehaviorsAsync: IotClientProtocol.ValidateSecurityProfileBehaviorsAsyncType? = nil,
            validateSecurityProfileBehaviorsSync: IotClientProtocol.ValidateSecurityProfileBehaviorsSyncType? = nil) {
        self.acceptCertificateTransferAsyncOverride = acceptCertificateTransferAsync
        self.acceptCertificateTransferSyncOverride = acceptCertificateTransferSync
        self.addThingToBillingGroupAsyncOverride = addThingToBillingGroupAsync
        self.addThingToBillingGroupSyncOverride = addThingToBillingGroupSync
        self.addThingToThingGroupAsyncOverride = addThingToThingGroupAsync
        self.addThingToThingGroupSyncOverride = addThingToThingGroupSync
        self.associateTargetsWithJobAsyncOverride = associateTargetsWithJobAsync
        self.associateTargetsWithJobSyncOverride = associateTargetsWithJobSync
        self.attachPolicyAsyncOverride = attachPolicyAsync
        self.attachPolicySyncOverride = attachPolicySync
        self.attachPrincipalPolicyAsyncOverride = attachPrincipalPolicyAsync
        self.attachPrincipalPolicySyncOverride = attachPrincipalPolicySync
        self.attachSecurityProfileAsyncOverride = attachSecurityProfileAsync
        self.attachSecurityProfileSyncOverride = attachSecurityProfileSync
        self.attachThingPrincipalAsyncOverride = attachThingPrincipalAsync
        self.attachThingPrincipalSyncOverride = attachThingPrincipalSync
        self.cancelAuditMitigationActionsTaskAsyncOverride = cancelAuditMitigationActionsTaskAsync
        self.cancelAuditMitigationActionsTaskSyncOverride = cancelAuditMitigationActionsTaskSync
        self.cancelAuditTaskAsyncOverride = cancelAuditTaskAsync
        self.cancelAuditTaskSyncOverride = cancelAuditTaskSync
        self.cancelCertificateTransferAsyncOverride = cancelCertificateTransferAsync
        self.cancelCertificateTransferSyncOverride = cancelCertificateTransferSync
        self.cancelJobAsyncOverride = cancelJobAsync
        self.cancelJobSyncOverride = cancelJobSync
        self.cancelJobExecutionAsyncOverride = cancelJobExecutionAsync
        self.cancelJobExecutionSyncOverride = cancelJobExecutionSync
        self.clearDefaultAuthorizerAsyncOverride = clearDefaultAuthorizerAsync
        self.clearDefaultAuthorizerSyncOverride = clearDefaultAuthorizerSync
        self.createAuthorizerAsyncOverride = createAuthorizerAsync
        self.createAuthorizerSyncOverride = createAuthorizerSync
        self.createBillingGroupAsyncOverride = createBillingGroupAsync
        self.createBillingGroupSyncOverride = createBillingGroupSync
        self.createCertificateFromCsrAsyncOverride = createCertificateFromCsrAsync
        self.createCertificateFromCsrSyncOverride = createCertificateFromCsrSync
        self.createDynamicThingGroupAsyncOverride = createDynamicThingGroupAsync
        self.createDynamicThingGroupSyncOverride = createDynamicThingGroupSync
        self.createJobAsyncOverride = createJobAsync
        self.createJobSyncOverride = createJobSync
        self.createKeysAndCertificateAsyncOverride = createKeysAndCertificateAsync
        self.createKeysAndCertificateSyncOverride = createKeysAndCertificateSync
        self.createMitigationActionAsyncOverride = createMitigationActionAsync
        self.createMitigationActionSyncOverride = createMitigationActionSync
        self.createOTAUpdateAsyncOverride = createOTAUpdateAsync
        self.createOTAUpdateSyncOverride = createOTAUpdateSync
        self.createPolicyAsyncOverride = createPolicyAsync
        self.createPolicySyncOverride = createPolicySync
        self.createPolicyVersionAsyncOverride = createPolicyVersionAsync
        self.createPolicyVersionSyncOverride = createPolicyVersionSync
        self.createRoleAliasAsyncOverride = createRoleAliasAsync
        self.createRoleAliasSyncOverride = createRoleAliasSync
        self.createScheduledAuditAsyncOverride = createScheduledAuditAsync
        self.createScheduledAuditSyncOverride = createScheduledAuditSync
        self.createSecurityProfileAsyncOverride = createSecurityProfileAsync
        self.createSecurityProfileSyncOverride = createSecurityProfileSync
        self.createStreamAsyncOverride = createStreamAsync
        self.createStreamSyncOverride = createStreamSync
        self.createThingAsyncOverride = createThingAsync
        self.createThingSyncOverride = createThingSync
        self.createThingGroupAsyncOverride = createThingGroupAsync
        self.createThingGroupSyncOverride = createThingGroupSync
        self.createThingTypeAsyncOverride = createThingTypeAsync
        self.createThingTypeSyncOverride = createThingTypeSync
        self.createTopicRuleAsyncOverride = createTopicRuleAsync
        self.createTopicRuleSyncOverride = createTopicRuleSync
        self.deleteAccountAuditConfigurationAsyncOverride = deleteAccountAuditConfigurationAsync
        self.deleteAccountAuditConfigurationSyncOverride = deleteAccountAuditConfigurationSync
        self.deleteAuthorizerAsyncOverride = deleteAuthorizerAsync
        self.deleteAuthorizerSyncOverride = deleteAuthorizerSync
        self.deleteBillingGroupAsyncOverride = deleteBillingGroupAsync
        self.deleteBillingGroupSyncOverride = deleteBillingGroupSync
        self.deleteCACertificateAsyncOverride = deleteCACertificateAsync
        self.deleteCACertificateSyncOverride = deleteCACertificateSync
        self.deleteCertificateAsyncOverride = deleteCertificateAsync
        self.deleteCertificateSyncOverride = deleteCertificateSync
        self.deleteDynamicThingGroupAsyncOverride = deleteDynamicThingGroupAsync
        self.deleteDynamicThingGroupSyncOverride = deleteDynamicThingGroupSync
        self.deleteJobAsyncOverride = deleteJobAsync
        self.deleteJobSyncOverride = deleteJobSync
        self.deleteJobExecutionAsyncOverride = deleteJobExecutionAsync
        self.deleteJobExecutionSyncOverride = deleteJobExecutionSync
        self.deleteMitigationActionAsyncOverride = deleteMitigationActionAsync
        self.deleteMitigationActionSyncOverride = deleteMitigationActionSync
        self.deleteOTAUpdateAsyncOverride = deleteOTAUpdateAsync
        self.deleteOTAUpdateSyncOverride = deleteOTAUpdateSync
        self.deletePolicyAsyncOverride = deletePolicyAsync
        self.deletePolicySyncOverride = deletePolicySync
        self.deletePolicyVersionAsyncOverride = deletePolicyVersionAsync
        self.deletePolicyVersionSyncOverride = deletePolicyVersionSync
        self.deleteRegistrationCodeAsyncOverride = deleteRegistrationCodeAsync
        self.deleteRegistrationCodeSyncOverride = deleteRegistrationCodeSync
        self.deleteRoleAliasAsyncOverride = deleteRoleAliasAsync
        self.deleteRoleAliasSyncOverride = deleteRoleAliasSync
        self.deleteScheduledAuditAsyncOverride = deleteScheduledAuditAsync
        self.deleteScheduledAuditSyncOverride = deleteScheduledAuditSync
        self.deleteSecurityProfileAsyncOverride = deleteSecurityProfileAsync
        self.deleteSecurityProfileSyncOverride = deleteSecurityProfileSync
        self.deleteStreamAsyncOverride = deleteStreamAsync
        self.deleteStreamSyncOverride = deleteStreamSync
        self.deleteThingAsyncOverride = deleteThingAsync
        self.deleteThingSyncOverride = deleteThingSync
        self.deleteThingGroupAsyncOverride = deleteThingGroupAsync
        self.deleteThingGroupSyncOverride = deleteThingGroupSync
        self.deleteThingTypeAsyncOverride = deleteThingTypeAsync
        self.deleteThingTypeSyncOverride = deleteThingTypeSync
        self.deleteTopicRuleAsyncOverride = deleteTopicRuleAsync
        self.deleteTopicRuleSyncOverride = deleteTopicRuleSync
        self.deleteV2LoggingLevelAsyncOverride = deleteV2LoggingLevelAsync
        self.deleteV2LoggingLevelSyncOverride = deleteV2LoggingLevelSync
        self.deprecateThingTypeAsyncOverride = deprecateThingTypeAsync
        self.deprecateThingTypeSyncOverride = deprecateThingTypeSync
        self.describeAccountAuditConfigurationAsyncOverride = describeAccountAuditConfigurationAsync
        self.describeAccountAuditConfigurationSyncOverride = describeAccountAuditConfigurationSync
        self.describeAuditFindingAsyncOverride = describeAuditFindingAsync
        self.describeAuditFindingSyncOverride = describeAuditFindingSync
        self.describeAuditMitigationActionsTaskAsyncOverride = describeAuditMitigationActionsTaskAsync
        self.describeAuditMitigationActionsTaskSyncOverride = describeAuditMitigationActionsTaskSync
        self.describeAuditTaskAsyncOverride = describeAuditTaskAsync
        self.describeAuditTaskSyncOverride = describeAuditTaskSync
        self.describeAuthorizerAsyncOverride = describeAuthorizerAsync
        self.describeAuthorizerSyncOverride = describeAuthorizerSync
        self.describeBillingGroupAsyncOverride = describeBillingGroupAsync
        self.describeBillingGroupSyncOverride = describeBillingGroupSync
        self.describeCACertificateAsyncOverride = describeCACertificateAsync
        self.describeCACertificateSyncOverride = describeCACertificateSync
        self.describeCertificateAsyncOverride = describeCertificateAsync
        self.describeCertificateSyncOverride = describeCertificateSync
        self.describeDefaultAuthorizerAsyncOverride = describeDefaultAuthorizerAsync
        self.describeDefaultAuthorizerSyncOverride = describeDefaultAuthorizerSync
        self.describeEndpointAsyncOverride = describeEndpointAsync
        self.describeEndpointSyncOverride = describeEndpointSync
        self.describeEventConfigurationsAsyncOverride = describeEventConfigurationsAsync
        self.describeEventConfigurationsSyncOverride = describeEventConfigurationsSync
        self.describeIndexAsyncOverride = describeIndexAsync
        self.describeIndexSyncOverride = describeIndexSync
        self.describeJobAsyncOverride = describeJobAsync
        self.describeJobSyncOverride = describeJobSync
        self.describeJobExecutionAsyncOverride = describeJobExecutionAsync
        self.describeJobExecutionSyncOverride = describeJobExecutionSync
        self.describeMitigationActionAsyncOverride = describeMitigationActionAsync
        self.describeMitigationActionSyncOverride = describeMitigationActionSync
        self.describeRoleAliasAsyncOverride = describeRoleAliasAsync
        self.describeRoleAliasSyncOverride = describeRoleAliasSync
        self.describeScheduledAuditAsyncOverride = describeScheduledAuditAsync
        self.describeScheduledAuditSyncOverride = describeScheduledAuditSync
        self.describeSecurityProfileAsyncOverride = describeSecurityProfileAsync
        self.describeSecurityProfileSyncOverride = describeSecurityProfileSync
        self.describeStreamAsyncOverride = describeStreamAsync
        self.describeStreamSyncOverride = describeStreamSync
        self.describeThingAsyncOverride = describeThingAsync
        self.describeThingSyncOverride = describeThingSync
        self.describeThingGroupAsyncOverride = describeThingGroupAsync
        self.describeThingGroupSyncOverride = describeThingGroupSync
        self.describeThingRegistrationTaskAsyncOverride = describeThingRegistrationTaskAsync
        self.describeThingRegistrationTaskSyncOverride = describeThingRegistrationTaskSync
        self.describeThingTypeAsyncOverride = describeThingTypeAsync
        self.describeThingTypeSyncOverride = describeThingTypeSync
        self.detachPolicyAsyncOverride = detachPolicyAsync
        self.detachPolicySyncOverride = detachPolicySync
        self.detachPrincipalPolicyAsyncOverride = detachPrincipalPolicyAsync
        self.detachPrincipalPolicySyncOverride = detachPrincipalPolicySync
        self.detachSecurityProfileAsyncOverride = detachSecurityProfileAsync
        self.detachSecurityProfileSyncOverride = detachSecurityProfileSync
        self.detachThingPrincipalAsyncOverride = detachThingPrincipalAsync
        self.detachThingPrincipalSyncOverride = detachThingPrincipalSync
        self.disableTopicRuleAsyncOverride = disableTopicRuleAsync
        self.disableTopicRuleSyncOverride = disableTopicRuleSync
        self.enableTopicRuleAsyncOverride = enableTopicRuleAsync
        self.enableTopicRuleSyncOverride = enableTopicRuleSync
        self.getEffectivePoliciesAsyncOverride = getEffectivePoliciesAsync
        self.getEffectivePoliciesSyncOverride = getEffectivePoliciesSync
        self.getIndexingConfigurationAsyncOverride = getIndexingConfigurationAsync
        self.getIndexingConfigurationSyncOverride = getIndexingConfigurationSync
        self.getJobDocumentAsyncOverride = getJobDocumentAsync
        self.getJobDocumentSyncOverride = getJobDocumentSync
        self.getLoggingOptionsAsyncOverride = getLoggingOptionsAsync
        self.getLoggingOptionsSyncOverride = getLoggingOptionsSync
        self.getOTAUpdateAsyncOverride = getOTAUpdateAsync
        self.getOTAUpdateSyncOverride = getOTAUpdateSync
        self.getPolicyAsyncOverride = getPolicyAsync
        self.getPolicySyncOverride = getPolicySync
        self.getPolicyVersionAsyncOverride = getPolicyVersionAsync
        self.getPolicyVersionSyncOverride = getPolicyVersionSync
        self.getRegistrationCodeAsyncOverride = getRegistrationCodeAsync
        self.getRegistrationCodeSyncOverride = getRegistrationCodeSync
        self.getStatisticsAsyncOverride = getStatisticsAsync
        self.getStatisticsSyncOverride = getStatisticsSync
        self.getTopicRuleAsyncOverride = getTopicRuleAsync
        self.getTopicRuleSyncOverride = getTopicRuleSync
        self.getV2LoggingOptionsAsyncOverride = getV2LoggingOptionsAsync
        self.getV2LoggingOptionsSyncOverride = getV2LoggingOptionsSync
        self.listActiveViolationsAsyncOverride = listActiveViolationsAsync
        self.listActiveViolationsSyncOverride = listActiveViolationsSync
        self.listAttachedPoliciesAsyncOverride = listAttachedPoliciesAsync
        self.listAttachedPoliciesSyncOverride = listAttachedPoliciesSync
        self.listAuditFindingsAsyncOverride = listAuditFindingsAsync
        self.listAuditFindingsSyncOverride = listAuditFindingsSync
        self.listAuditMitigationActionsExecutionsAsyncOverride = listAuditMitigationActionsExecutionsAsync
        self.listAuditMitigationActionsExecutionsSyncOverride = listAuditMitigationActionsExecutionsSync
        self.listAuditMitigationActionsTasksAsyncOverride = listAuditMitigationActionsTasksAsync
        self.listAuditMitigationActionsTasksSyncOverride = listAuditMitigationActionsTasksSync
        self.listAuditTasksAsyncOverride = listAuditTasksAsync
        self.listAuditTasksSyncOverride = listAuditTasksSync
        self.listAuthorizersAsyncOverride = listAuthorizersAsync
        self.listAuthorizersSyncOverride = listAuthorizersSync
        self.listBillingGroupsAsyncOverride = listBillingGroupsAsync
        self.listBillingGroupsSyncOverride = listBillingGroupsSync
        self.listCACertificatesAsyncOverride = listCACertificatesAsync
        self.listCACertificatesSyncOverride = listCACertificatesSync
        self.listCertificatesAsyncOverride = listCertificatesAsync
        self.listCertificatesSyncOverride = listCertificatesSync
        self.listCertificatesByCAAsyncOverride = listCertificatesByCAAsync
        self.listCertificatesByCASyncOverride = listCertificatesByCASync
        self.listIndicesAsyncOverride = listIndicesAsync
        self.listIndicesSyncOverride = listIndicesSync
        self.listJobExecutionsForJobAsyncOverride = listJobExecutionsForJobAsync
        self.listJobExecutionsForJobSyncOverride = listJobExecutionsForJobSync
        self.listJobExecutionsForThingAsyncOverride = listJobExecutionsForThingAsync
        self.listJobExecutionsForThingSyncOverride = listJobExecutionsForThingSync
        self.listJobsAsyncOverride = listJobsAsync
        self.listJobsSyncOverride = listJobsSync
        self.listMitigationActionsAsyncOverride = listMitigationActionsAsync
        self.listMitigationActionsSyncOverride = listMitigationActionsSync
        self.listOTAUpdatesAsyncOverride = listOTAUpdatesAsync
        self.listOTAUpdatesSyncOverride = listOTAUpdatesSync
        self.listOutgoingCertificatesAsyncOverride = listOutgoingCertificatesAsync
        self.listOutgoingCertificatesSyncOverride = listOutgoingCertificatesSync
        self.listPoliciesAsyncOverride = listPoliciesAsync
        self.listPoliciesSyncOverride = listPoliciesSync
        self.listPolicyPrincipalsAsyncOverride = listPolicyPrincipalsAsync
        self.listPolicyPrincipalsSyncOverride = listPolicyPrincipalsSync
        self.listPolicyVersionsAsyncOverride = listPolicyVersionsAsync
        self.listPolicyVersionsSyncOverride = listPolicyVersionsSync
        self.listPrincipalPoliciesAsyncOverride = listPrincipalPoliciesAsync
        self.listPrincipalPoliciesSyncOverride = listPrincipalPoliciesSync
        self.listPrincipalThingsAsyncOverride = listPrincipalThingsAsync
        self.listPrincipalThingsSyncOverride = listPrincipalThingsSync
        self.listRoleAliasesAsyncOverride = listRoleAliasesAsync
        self.listRoleAliasesSyncOverride = listRoleAliasesSync
        self.listScheduledAuditsAsyncOverride = listScheduledAuditsAsync
        self.listScheduledAuditsSyncOverride = listScheduledAuditsSync
        self.listSecurityProfilesAsyncOverride = listSecurityProfilesAsync
        self.listSecurityProfilesSyncOverride = listSecurityProfilesSync
        self.listSecurityProfilesForTargetAsyncOverride = listSecurityProfilesForTargetAsync
        self.listSecurityProfilesForTargetSyncOverride = listSecurityProfilesForTargetSync
        self.listStreamsAsyncOverride = listStreamsAsync
        self.listStreamsSyncOverride = listStreamsSync
        self.listTagsForResourceAsyncOverride = listTagsForResourceAsync
        self.listTagsForResourceSyncOverride = listTagsForResourceSync
        self.listTargetsForPolicyAsyncOverride = listTargetsForPolicyAsync
        self.listTargetsForPolicySyncOverride = listTargetsForPolicySync
        self.listTargetsForSecurityProfileAsyncOverride = listTargetsForSecurityProfileAsync
        self.listTargetsForSecurityProfileSyncOverride = listTargetsForSecurityProfileSync
        self.listThingGroupsAsyncOverride = listThingGroupsAsync
        self.listThingGroupsSyncOverride = listThingGroupsSync
        self.listThingGroupsForThingAsyncOverride = listThingGroupsForThingAsync
        self.listThingGroupsForThingSyncOverride = listThingGroupsForThingSync
        self.listThingPrincipalsAsyncOverride = listThingPrincipalsAsync
        self.listThingPrincipalsSyncOverride = listThingPrincipalsSync
        self.listThingRegistrationTaskReportsAsyncOverride = listThingRegistrationTaskReportsAsync
        self.listThingRegistrationTaskReportsSyncOverride = listThingRegistrationTaskReportsSync
        self.listThingRegistrationTasksAsyncOverride = listThingRegistrationTasksAsync
        self.listThingRegistrationTasksSyncOverride = listThingRegistrationTasksSync
        self.listThingTypesAsyncOverride = listThingTypesAsync
        self.listThingTypesSyncOverride = listThingTypesSync
        self.listThingsAsyncOverride = listThingsAsync
        self.listThingsSyncOverride = listThingsSync
        self.listThingsInBillingGroupAsyncOverride = listThingsInBillingGroupAsync
        self.listThingsInBillingGroupSyncOverride = listThingsInBillingGroupSync
        self.listThingsInThingGroupAsyncOverride = listThingsInThingGroupAsync
        self.listThingsInThingGroupSyncOverride = listThingsInThingGroupSync
        self.listTopicRulesAsyncOverride = listTopicRulesAsync
        self.listTopicRulesSyncOverride = listTopicRulesSync
        self.listV2LoggingLevelsAsyncOverride = listV2LoggingLevelsAsync
        self.listV2LoggingLevelsSyncOverride = listV2LoggingLevelsSync
        self.listViolationEventsAsyncOverride = listViolationEventsAsync
        self.listViolationEventsSyncOverride = listViolationEventsSync
        self.registerCACertificateAsyncOverride = registerCACertificateAsync
        self.registerCACertificateSyncOverride = registerCACertificateSync
        self.registerCertificateAsyncOverride = registerCertificateAsync
        self.registerCertificateSyncOverride = registerCertificateSync
        self.registerThingAsyncOverride = registerThingAsync
        self.registerThingSyncOverride = registerThingSync
        self.rejectCertificateTransferAsyncOverride = rejectCertificateTransferAsync
        self.rejectCertificateTransferSyncOverride = rejectCertificateTransferSync
        self.removeThingFromBillingGroupAsyncOverride = removeThingFromBillingGroupAsync
        self.removeThingFromBillingGroupSyncOverride = removeThingFromBillingGroupSync
        self.removeThingFromThingGroupAsyncOverride = removeThingFromThingGroupAsync
        self.removeThingFromThingGroupSyncOverride = removeThingFromThingGroupSync
        self.replaceTopicRuleAsyncOverride = replaceTopicRuleAsync
        self.replaceTopicRuleSyncOverride = replaceTopicRuleSync
        self.searchIndexAsyncOverride = searchIndexAsync
        self.searchIndexSyncOverride = searchIndexSync
        self.setDefaultAuthorizerAsyncOverride = setDefaultAuthorizerAsync
        self.setDefaultAuthorizerSyncOverride = setDefaultAuthorizerSync
        self.setDefaultPolicyVersionAsyncOverride = setDefaultPolicyVersionAsync
        self.setDefaultPolicyVersionSyncOverride = setDefaultPolicyVersionSync
        self.setLoggingOptionsAsyncOverride = setLoggingOptionsAsync
        self.setLoggingOptionsSyncOverride = setLoggingOptionsSync
        self.setV2LoggingLevelAsyncOverride = setV2LoggingLevelAsync
        self.setV2LoggingLevelSyncOverride = setV2LoggingLevelSync
        self.setV2LoggingOptionsAsyncOverride = setV2LoggingOptionsAsync
        self.setV2LoggingOptionsSyncOverride = setV2LoggingOptionsSync
        self.startAuditMitigationActionsTaskAsyncOverride = startAuditMitigationActionsTaskAsync
        self.startAuditMitigationActionsTaskSyncOverride = startAuditMitigationActionsTaskSync
        self.startOnDemandAuditTaskAsyncOverride = startOnDemandAuditTaskAsync
        self.startOnDemandAuditTaskSyncOverride = startOnDemandAuditTaskSync
        self.startThingRegistrationTaskAsyncOverride = startThingRegistrationTaskAsync
        self.startThingRegistrationTaskSyncOverride = startThingRegistrationTaskSync
        self.stopThingRegistrationTaskAsyncOverride = stopThingRegistrationTaskAsync
        self.stopThingRegistrationTaskSyncOverride = stopThingRegistrationTaskSync
        self.tagResourceAsyncOverride = tagResourceAsync
        self.tagResourceSyncOverride = tagResourceSync
        self.testAuthorizationAsyncOverride = testAuthorizationAsync
        self.testAuthorizationSyncOverride = testAuthorizationSync
        self.testInvokeAuthorizerAsyncOverride = testInvokeAuthorizerAsync
        self.testInvokeAuthorizerSyncOverride = testInvokeAuthorizerSync
        self.transferCertificateAsyncOverride = transferCertificateAsync
        self.transferCertificateSyncOverride = transferCertificateSync
        self.untagResourceAsyncOverride = untagResourceAsync
        self.untagResourceSyncOverride = untagResourceSync
        self.updateAccountAuditConfigurationAsyncOverride = updateAccountAuditConfigurationAsync
        self.updateAccountAuditConfigurationSyncOverride = updateAccountAuditConfigurationSync
        self.updateAuthorizerAsyncOverride = updateAuthorizerAsync
        self.updateAuthorizerSyncOverride = updateAuthorizerSync
        self.updateBillingGroupAsyncOverride = updateBillingGroupAsync
        self.updateBillingGroupSyncOverride = updateBillingGroupSync
        self.updateCACertificateAsyncOverride = updateCACertificateAsync
        self.updateCACertificateSyncOverride = updateCACertificateSync
        self.updateCertificateAsyncOverride = updateCertificateAsync
        self.updateCertificateSyncOverride = updateCertificateSync
        self.updateDynamicThingGroupAsyncOverride = updateDynamicThingGroupAsync
        self.updateDynamicThingGroupSyncOverride = updateDynamicThingGroupSync
        self.updateEventConfigurationsAsyncOverride = updateEventConfigurationsAsync
        self.updateEventConfigurationsSyncOverride = updateEventConfigurationsSync
        self.updateIndexingConfigurationAsyncOverride = updateIndexingConfigurationAsync
        self.updateIndexingConfigurationSyncOverride = updateIndexingConfigurationSync
        self.updateJobAsyncOverride = updateJobAsync
        self.updateJobSyncOverride = updateJobSync
        self.updateMitigationActionAsyncOverride = updateMitigationActionAsync
        self.updateMitigationActionSyncOverride = updateMitigationActionSync
        self.updateRoleAliasAsyncOverride = updateRoleAliasAsync
        self.updateRoleAliasSyncOverride = updateRoleAliasSync
        self.updateScheduledAuditAsyncOverride = updateScheduledAuditAsync
        self.updateScheduledAuditSyncOverride = updateScheduledAuditSync
        self.updateSecurityProfileAsyncOverride = updateSecurityProfileAsync
        self.updateSecurityProfileSyncOverride = updateSecurityProfileSync
        self.updateStreamAsyncOverride = updateStreamAsync
        self.updateStreamSyncOverride = updateStreamSync
        self.updateThingAsyncOverride = updateThingAsync
        self.updateThingSyncOverride = updateThingSync
        self.updateThingGroupAsyncOverride = updateThingGroupAsync
        self.updateThingGroupSyncOverride = updateThingGroupSync
        self.updateThingGroupsForThingAsyncOverride = updateThingGroupsForThingAsync
        self.updateThingGroupsForThingSyncOverride = updateThingGroupsForThingSync
        self.validateSecurityProfileBehaviorsAsyncOverride = validateSecurityProfileBehaviorsAsync
        self.validateSecurityProfileBehaviorsSyncOverride = validateSecurityProfileBehaviorsSync
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
        if let acceptCertificateTransferAsyncOverride = acceptCertificateTransferAsyncOverride {
            return try acceptCertificateTransferAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the AcceptCertificateTransfer operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcceptCertificateTransferRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, transferAlreadyCompleted, unauthorized.
     */
    public func acceptCertificateTransferSync(input: IotModel.AcceptCertificateTransferRequest) throws {
        if let acceptCertificateTransferSyncOverride = acceptCertificateTransferSyncOverride {
            return try acceptCertificateTransferSyncOverride(input)
        }

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
        if let addThingToBillingGroupAsyncOverride = addThingToBillingGroupAsyncOverride {
            return try addThingToBillingGroupAsyncOverride(input, completion)
        }

        let result = AddThingToBillingGroupResponse.__default
        
        completion(.response(result))
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
        if let addThingToBillingGroupSyncOverride = addThingToBillingGroupSyncOverride {
            return try addThingToBillingGroupSyncOverride(input)
        }

        return AddThingToBillingGroupResponse.__default
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
        if let addThingToThingGroupAsyncOverride = addThingToThingGroupAsyncOverride {
            return try addThingToThingGroupAsyncOverride(input, completion)
        }

        let result = AddThingToThingGroupResponse.__default
        
        completion(.response(result))
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
        if let addThingToThingGroupSyncOverride = addThingToThingGroupSyncOverride {
            return try addThingToThingGroupSyncOverride(input)
        }

        return AddThingToThingGroupResponse.__default
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
        if let associateTargetsWithJobAsyncOverride = associateTargetsWithJobAsyncOverride {
            return try associateTargetsWithJobAsyncOverride(input, completion)
        }

        let result = AssociateTargetsWithJobResponse.__default
        
        completion(.response(result))
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
        if let associateTargetsWithJobSyncOverride = associateTargetsWithJobSyncOverride {
            return try associateTargetsWithJobSyncOverride(input)
        }

        return AssociateTargetsWithJobResponse.__default
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
        if let attachPolicyAsyncOverride = attachPolicyAsyncOverride {
            return try attachPolicyAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the AttachPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachPolicyRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func attachPolicySync(input: IotModel.AttachPolicyRequest) throws {
        if let attachPolicySyncOverride = attachPolicySyncOverride {
            return try attachPolicySyncOverride(input)
        }

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
        if let attachPrincipalPolicyAsyncOverride = attachPrincipalPolicyAsyncOverride {
            return try attachPrincipalPolicyAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the AttachPrincipalPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachPrincipalPolicyRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, limitExceeded, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func attachPrincipalPolicySync(input: IotModel.AttachPrincipalPolicyRequest) throws {
        if let attachPrincipalPolicySyncOverride = attachPrincipalPolicySyncOverride {
            return try attachPrincipalPolicySyncOverride(input)
        }

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
        if let attachSecurityProfileAsyncOverride = attachSecurityProfileAsyncOverride {
            return try attachSecurityProfileAsyncOverride(input, completion)
        }

        let result = AttachSecurityProfileResponse.__default
        
        completion(.response(result))
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
        if let attachSecurityProfileSyncOverride = attachSecurityProfileSyncOverride {
            return try attachSecurityProfileSyncOverride(input)
        }

        return AttachSecurityProfileResponse.__default
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
        if let attachThingPrincipalAsyncOverride = attachThingPrincipalAsyncOverride {
            return try attachThingPrincipalAsyncOverride(input, completion)
        }

        let result = AttachThingPrincipalResponse.__default
        
        completion(.response(result))
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
        if let attachThingPrincipalSyncOverride = attachThingPrincipalSyncOverride {
            return try attachThingPrincipalSyncOverride(input)
        }

        return AttachThingPrincipalResponse.__default
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
        if let cancelAuditMitigationActionsTaskAsyncOverride = cancelAuditMitigationActionsTaskAsyncOverride {
            return try cancelAuditMitigationActionsTaskAsyncOverride(input, completion)
        }

        let result = CancelAuditMitigationActionsTaskResponse.__default
        
        completion(.response(result))
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
        if let cancelAuditMitigationActionsTaskSyncOverride = cancelAuditMitigationActionsTaskSyncOverride {
            return try cancelAuditMitigationActionsTaskSyncOverride(input)
        }

        return CancelAuditMitigationActionsTaskResponse.__default
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
        if let cancelAuditTaskAsyncOverride = cancelAuditTaskAsyncOverride {
            return try cancelAuditTaskAsyncOverride(input, completion)
        }

        let result = CancelAuditTaskResponse.__default
        
        completion(.response(result))
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
        if let cancelAuditTaskSyncOverride = cancelAuditTaskSyncOverride {
            return try cancelAuditTaskSyncOverride(input)
        }

        return CancelAuditTaskResponse.__default
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
        if let cancelCertificateTransferAsyncOverride = cancelCertificateTransferAsyncOverride {
            return try cancelCertificateTransferAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the CancelCertificateTransfer operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelCertificateTransferRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, transferAlreadyCompleted, unauthorized.
     */
    public func cancelCertificateTransferSync(input: IotModel.CancelCertificateTransferRequest) throws {
        if let cancelCertificateTransferSyncOverride = cancelCertificateTransferSyncOverride {
            return try cancelCertificateTransferSyncOverride(input)
        }

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
        if let cancelJobAsyncOverride = cancelJobAsyncOverride {
            return try cancelJobAsyncOverride(input, completion)
        }

        let result = CancelJobResponse.__default
        
        completion(.response(result))
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
        if let cancelJobSyncOverride = cancelJobSyncOverride {
            return try cancelJobSyncOverride(input)
        }

        return CancelJobResponse.__default
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
        if let cancelJobExecutionAsyncOverride = cancelJobExecutionAsyncOverride {
            return try cancelJobExecutionAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the CancelJobExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelJobExecutionRequest object being passed to this operation.
     - Throws: invalidRequest, invalidStateTransition, resourceNotFound, serviceUnavailable, throttling, versionConflict.
     */
    public func cancelJobExecutionSync(input: IotModel.CancelJobExecutionRequest) throws {
        if let cancelJobExecutionSyncOverride = cancelJobExecutionSyncOverride {
            return try cancelJobExecutionSyncOverride(input)
        }

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
        if let clearDefaultAuthorizerAsyncOverride = clearDefaultAuthorizerAsyncOverride {
            return try clearDefaultAuthorizerAsyncOverride(input, completion)
        }

        let result = ClearDefaultAuthorizerResponse.__default
        
        completion(.response(result))
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
        if let clearDefaultAuthorizerSyncOverride = clearDefaultAuthorizerSyncOverride {
            return try clearDefaultAuthorizerSyncOverride(input)
        }

        return ClearDefaultAuthorizerResponse.__default
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
        if let createAuthorizerAsyncOverride = createAuthorizerAsyncOverride {
            return try createAuthorizerAsyncOverride(input, completion)
        }

        let result = CreateAuthorizerResponse.__default
        
        completion(.response(result))
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
        if let createAuthorizerSyncOverride = createAuthorizerSyncOverride {
            return try createAuthorizerSyncOverride(input)
        }

        return CreateAuthorizerResponse.__default
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
        if let createBillingGroupAsyncOverride = createBillingGroupAsyncOverride {
            return try createBillingGroupAsyncOverride(input, completion)
        }

        let result = CreateBillingGroupResponse.__default
        
        completion(.response(result))
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
        if let createBillingGroupSyncOverride = createBillingGroupSyncOverride {
            return try createBillingGroupSyncOverride(input)
        }

        return CreateBillingGroupResponse.__default
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
        if let createCertificateFromCsrAsyncOverride = createCertificateFromCsrAsyncOverride {
            return try createCertificateFromCsrAsyncOverride(input, completion)
        }

        let result = CreateCertificateFromCsrResponse.__default
        
        completion(.response(result))
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
        if let createCertificateFromCsrSyncOverride = createCertificateFromCsrSyncOverride {
            return try createCertificateFromCsrSyncOverride(input)
        }

        return CreateCertificateFromCsrResponse.__default
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
        if let createDynamicThingGroupAsyncOverride = createDynamicThingGroupAsyncOverride {
            return try createDynamicThingGroupAsyncOverride(input, completion)
        }

        let result = CreateDynamicThingGroupResponse.__default
        
        completion(.response(result))
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
        if let createDynamicThingGroupSyncOverride = createDynamicThingGroupSyncOverride {
            return try createDynamicThingGroupSyncOverride(input)
        }

        return CreateDynamicThingGroupResponse.__default
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
        if let createJobAsyncOverride = createJobAsyncOverride {
            return try createJobAsyncOverride(input, completion)
        }

        let result = CreateJobResponse.__default
        
        completion(.response(result))
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
        if let createJobSyncOverride = createJobSyncOverride {
            return try createJobSyncOverride(input)
        }

        return CreateJobResponse.__default
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
        if let createKeysAndCertificateAsyncOverride = createKeysAndCertificateAsyncOverride {
            return try createKeysAndCertificateAsyncOverride(input, completion)
        }

        let result = CreateKeysAndCertificateResponse.__default
        
        completion(.response(result))
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
        if let createKeysAndCertificateSyncOverride = createKeysAndCertificateSyncOverride {
            return try createKeysAndCertificateSyncOverride(input)
        }

        return CreateKeysAndCertificateResponse.__default
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
        if let createMitigationActionAsyncOverride = createMitigationActionAsyncOverride {
            return try createMitigationActionAsyncOverride(input, completion)
        }

        let result = CreateMitigationActionResponse.__default
        
        completion(.response(result))
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
        if let createMitigationActionSyncOverride = createMitigationActionSyncOverride {
            return try createMitigationActionSyncOverride(input)
        }

        return CreateMitigationActionResponse.__default
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
        if let createOTAUpdateAsyncOverride = createOTAUpdateAsyncOverride {
            return try createOTAUpdateAsyncOverride(input, completion)
        }

        let result = CreateOTAUpdateResponse.__default
        
        completion(.response(result))
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
        if let createOTAUpdateSyncOverride = createOTAUpdateSyncOverride {
            return try createOTAUpdateSyncOverride(input)
        }

        return CreateOTAUpdateResponse.__default
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
        if let createPolicyAsyncOverride = createPolicyAsyncOverride {
            return try createPolicyAsyncOverride(input, completion)
        }

        let result = CreatePolicyResponse.__default
        
        completion(.response(result))
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
        if let createPolicySyncOverride = createPolicySyncOverride {
            return try createPolicySyncOverride(input)
        }

        return CreatePolicyResponse.__default
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
        if let createPolicyVersionAsyncOverride = createPolicyVersionAsyncOverride {
            return try createPolicyVersionAsyncOverride(input, completion)
        }

        let result = CreatePolicyVersionResponse.__default
        
        completion(.response(result))
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
        if let createPolicyVersionSyncOverride = createPolicyVersionSyncOverride {
            return try createPolicyVersionSyncOverride(input)
        }

        return CreatePolicyVersionResponse.__default
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
        if let createRoleAliasAsyncOverride = createRoleAliasAsyncOverride {
            return try createRoleAliasAsyncOverride(input, completion)
        }

        let result = CreateRoleAliasResponse.__default
        
        completion(.response(result))
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
        if let createRoleAliasSyncOverride = createRoleAliasSyncOverride {
            return try createRoleAliasSyncOverride(input)
        }

        return CreateRoleAliasResponse.__default
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
        if let createScheduledAuditAsyncOverride = createScheduledAuditAsyncOverride {
            return try createScheduledAuditAsyncOverride(input, completion)
        }

        let result = CreateScheduledAuditResponse.__default
        
        completion(.response(result))
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
        if let createScheduledAuditSyncOverride = createScheduledAuditSyncOverride {
            return try createScheduledAuditSyncOverride(input)
        }

        return CreateScheduledAuditResponse.__default
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
        if let createSecurityProfileAsyncOverride = createSecurityProfileAsyncOverride {
            return try createSecurityProfileAsyncOverride(input, completion)
        }

        let result = CreateSecurityProfileResponse.__default
        
        completion(.response(result))
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
        if let createSecurityProfileSyncOverride = createSecurityProfileSyncOverride {
            return try createSecurityProfileSyncOverride(input)
        }

        return CreateSecurityProfileResponse.__default
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
        if let createStreamAsyncOverride = createStreamAsyncOverride {
            return try createStreamAsyncOverride(input, completion)
        }

        let result = CreateStreamResponse.__default
        
        completion(.response(result))
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
        if let createStreamSyncOverride = createStreamSyncOverride {
            return try createStreamSyncOverride(input)
        }

        return CreateStreamResponse.__default
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
        if let createThingAsyncOverride = createThingAsyncOverride {
            return try createThingAsyncOverride(input, completion)
        }

        let result = CreateThingResponse.__default
        
        completion(.response(result))
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
        if let createThingSyncOverride = createThingSyncOverride {
            return try createThingSyncOverride(input)
        }

        return CreateThingResponse.__default
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
        if let createThingGroupAsyncOverride = createThingGroupAsyncOverride {
            return try createThingGroupAsyncOverride(input, completion)
        }

        let result = CreateThingGroupResponse.__default
        
        completion(.response(result))
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
        if let createThingGroupSyncOverride = createThingGroupSyncOverride {
            return try createThingGroupSyncOverride(input)
        }

        return CreateThingGroupResponse.__default
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
        if let createThingTypeAsyncOverride = createThingTypeAsyncOverride {
            return try createThingTypeAsyncOverride(input, completion)
        }

        let result = CreateThingTypeResponse.__default
        
        completion(.response(result))
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
        if let createThingTypeSyncOverride = createThingTypeSyncOverride {
            return try createThingTypeSyncOverride(input)
        }

        return CreateThingTypeResponse.__default
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
        if let createTopicRuleAsyncOverride = createTopicRuleAsyncOverride {
            return try createTopicRuleAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the CreateTopicRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTopicRuleRequest object being passed to this operation.
     - Throws: conflictingResourceUpdate, internal, invalidRequest, resourceAlreadyExists, serviceUnavailable, sqlParse.
     */
    public func createTopicRuleSync(input: IotModel.CreateTopicRuleRequest) throws {
        if let createTopicRuleSyncOverride = createTopicRuleSyncOverride {
            return try createTopicRuleSyncOverride(input)
        }

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
        if let deleteAccountAuditConfigurationAsyncOverride = deleteAccountAuditConfigurationAsyncOverride {
            return try deleteAccountAuditConfigurationAsyncOverride(input, completion)
        }

        let result = DeleteAccountAuditConfigurationResponse.__default
        
        completion(.response(result))
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
        if let deleteAccountAuditConfigurationSyncOverride = deleteAccountAuditConfigurationSyncOverride {
            return try deleteAccountAuditConfigurationSyncOverride(input)
        }

        return DeleteAccountAuditConfigurationResponse.__default
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
        if let deleteAuthorizerAsyncOverride = deleteAuthorizerAsyncOverride {
            return try deleteAuthorizerAsyncOverride(input, completion)
        }

        let result = DeleteAuthorizerResponse.__default
        
        completion(.response(result))
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
        if let deleteAuthorizerSyncOverride = deleteAuthorizerSyncOverride {
            return try deleteAuthorizerSyncOverride(input)
        }

        return DeleteAuthorizerResponse.__default
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
        if let deleteBillingGroupAsyncOverride = deleteBillingGroupAsyncOverride {
            return try deleteBillingGroupAsyncOverride(input, completion)
        }

        let result = DeleteBillingGroupResponse.__default
        
        completion(.response(result))
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
        if let deleteBillingGroupSyncOverride = deleteBillingGroupSyncOverride {
            return try deleteBillingGroupSyncOverride(input)
        }

        return DeleteBillingGroupResponse.__default
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
        if let deleteCACertificateAsyncOverride = deleteCACertificateAsyncOverride {
            return try deleteCACertificateAsyncOverride(input, completion)
        }

        let result = DeleteCACertificateResponse.__default
        
        completion(.response(result))
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
        if let deleteCACertificateSyncOverride = deleteCACertificateSyncOverride {
            return try deleteCACertificateSyncOverride(input)
        }

        return DeleteCACertificateResponse.__default
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
        if let deleteCertificateAsyncOverride = deleteCertificateAsyncOverride {
            return try deleteCertificateAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the DeleteCertificate operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteCertificateRequest object being passed to this operation.
     - Throws: certificateState, deleteConflict, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func deleteCertificateSync(input: IotModel.DeleteCertificateRequest) throws {
        if let deleteCertificateSyncOverride = deleteCertificateSyncOverride {
            return try deleteCertificateSyncOverride(input)
        }

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
        if let deleteDynamicThingGroupAsyncOverride = deleteDynamicThingGroupAsyncOverride {
            return try deleteDynamicThingGroupAsyncOverride(input, completion)
        }

        let result = DeleteDynamicThingGroupResponse.__default
        
        completion(.response(result))
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
        if let deleteDynamicThingGroupSyncOverride = deleteDynamicThingGroupSyncOverride {
            return try deleteDynamicThingGroupSyncOverride(input)
        }

        return DeleteDynamicThingGroupResponse.__default
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
        if let deleteJobAsyncOverride = deleteJobAsyncOverride {
            return try deleteJobAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the DeleteJob operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteJobRequest object being passed to this operation.
     - Throws: invalidRequest, invalidStateTransition, limitExceeded, resourceNotFound, serviceUnavailable, throttling.
     */
    public func deleteJobSync(input: IotModel.DeleteJobRequest) throws {
        if let deleteJobSyncOverride = deleteJobSyncOverride {
            return try deleteJobSyncOverride(input)
        }

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
        if let deleteJobExecutionAsyncOverride = deleteJobExecutionAsyncOverride {
            return try deleteJobExecutionAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the DeleteJobExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteJobExecutionRequest object being passed to this operation.
     - Throws: invalidRequest, invalidStateTransition, resourceNotFound, serviceUnavailable, throttling.
     */
    public func deleteJobExecutionSync(input: IotModel.DeleteJobExecutionRequest) throws {
        if let deleteJobExecutionSyncOverride = deleteJobExecutionSyncOverride {
            return try deleteJobExecutionSyncOverride(input)
        }

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
        if let deleteMitigationActionAsyncOverride = deleteMitigationActionAsyncOverride {
            return try deleteMitigationActionAsyncOverride(input, completion)
        }

        let result = DeleteMitigationActionResponse.__default
        
        completion(.response(result))
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
        if let deleteMitigationActionSyncOverride = deleteMitigationActionSyncOverride {
            return try deleteMitigationActionSyncOverride(input)
        }

        return DeleteMitigationActionResponse.__default
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
        if let deleteOTAUpdateAsyncOverride = deleteOTAUpdateAsyncOverride {
            return try deleteOTAUpdateAsyncOverride(input, completion)
        }

        let result = DeleteOTAUpdateResponse.__default
        
        completion(.response(result))
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
        if let deleteOTAUpdateSyncOverride = deleteOTAUpdateSyncOverride {
            return try deleteOTAUpdateSyncOverride(input)
        }

        return DeleteOTAUpdateResponse.__default
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
        if let deletePolicyAsyncOverride = deletePolicyAsyncOverride {
            return try deletePolicyAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the DeletePolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeletePolicyRequest object being passed to this operation.
     - Throws: deleteConflict, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func deletePolicySync(input: IotModel.DeletePolicyRequest) throws {
        if let deletePolicySyncOverride = deletePolicySyncOverride {
            return try deletePolicySyncOverride(input)
        }

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
        if let deletePolicyVersionAsyncOverride = deletePolicyVersionAsyncOverride {
            return try deletePolicyVersionAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the DeletePolicyVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeletePolicyVersionRequest object being passed to this operation.
     - Throws: deleteConflict, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func deletePolicyVersionSync(input: IotModel.DeletePolicyVersionRequest) throws {
        if let deletePolicyVersionSyncOverride = deletePolicyVersionSyncOverride {
            return try deletePolicyVersionSyncOverride(input)
        }

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
        if let deleteRegistrationCodeAsyncOverride = deleteRegistrationCodeAsyncOverride {
            return try deleteRegistrationCodeAsyncOverride(input, completion)
        }

        let result = DeleteRegistrationCodeResponse.__default
        
        completion(.response(result))
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
        if let deleteRegistrationCodeSyncOverride = deleteRegistrationCodeSyncOverride {
            return try deleteRegistrationCodeSyncOverride(input)
        }

        return DeleteRegistrationCodeResponse.__default
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
        if let deleteRoleAliasAsyncOverride = deleteRoleAliasAsyncOverride {
            return try deleteRoleAliasAsyncOverride(input, completion)
        }

        let result = DeleteRoleAliasResponse.__default
        
        completion(.response(result))
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
        if let deleteRoleAliasSyncOverride = deleteRoleAliasSyncOverride {
            return try deleteRoleAliasSyncOverride(input)
        }

        return DeleteRoleAliasResponse.__default
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
        if let deleteScheduledAuditAsyncOverride = deleteScheduledAuditAsyncOverride {
            return try deleteScheduledAuditAsyncOverride(input, completion)
        }

        let result = DeleteScheduledAuditResponse.__default
        
        completion(.response(result))
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
        if let deleteScheduledAuditSyncOverride = deleteScheduledAuditSyncOverride {
            return try deleteScheduledAuditSyncOverride(input)
        }

        return DeleteScheduledAuditResponse.__default
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
        if let deleteSecurityProfileAsyncOverride = deleteSecurityProfileAsyncOverride {
            return try deleteSecurityProfileAsyncOverride(input, completion)
        }

        let result = DeleteSecurityProfileResponse.__default
        
        completion(.response(result))
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
        if let deleteSecurityProfileSyncOverride = deleteSecurityProfileSyncOverride {
            return try deleteSecurityProfileSyncOverride(input)
        }

        return DeleteSecurityProfileResponse.__default
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
        if let deleteStreamAsyncOverride = deleteStreamAsyncOverride {
            return try deleteStreamAsyncOverride(input, completion)
        }

        let result = DeleteStreamResponse.__default
        
        completion(.response(result))
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
        if let deleteStreamSyncOverride = deleteStreamSyncOverride {
            return try deleteStreamSyncOverride(input)
        }

        return DeleteStreamResponse.__default
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
        if let deleteThingAsyncOverride = deleteThingAsyncOverride {
            return try deleteThingAsyncOverride(input, completion)
        }

        let result = DeleteThingResponse.__default
        
        completion(.response(result))
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
        if let deleteThingSyncOverride = deleteThingSyncOverride {
            return try deleteThingSyncOverride(input)
        }

        return DeleteThingResponse.__default
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
        if let deleteThingGroupAsyncOverride = deleteThingGroupAsyncOverride {
            return try deleteThingGroupAsyncOverride(input, completion)
        }

        let result = DeleteThingGroupResponse.__default
        
        completion(.response(result))
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
        if let deleteThingGroupSyncOverride = deleteThingGroupSyncOverride {
            return try deleteThingGroupSyncOverride(input)
        }

        return DeleteThingGroupResponse.__default
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
        if let deleteThingTypeAsyncOverride = deleteThingTypeAsyncOverride {
            return try deleteThingTypeAsyncOverride(input, completion)
        }

        let result = DeleteThingTypeResponse.__default
        
        completion(.response(result))
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
        if let deleteThingTypeSyncOverride = deleteThingTypeSyncOverride {
            return try deleteThingTypeSyncOverride(input)
        }

        return DeleteThingTypeResponse.__default
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
        if let deleteTopicRuleAsyncOverride = deleteTopicRuleAsyncOverride {
            return try deleteTopicRuleAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the DeleteTopicRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTopicRuleRequest object being passed to this operation.
     - Throws: conflictingResourceUpdate, internal, invalidRequest, serviceUnavailable, unauthorized.
     */
    public func deleteTopicRuleSync(input: IotModel.DeleteTopicRuleRequest) throws {
        if let deleteTopicRuleSyncOverride = deleteTopicRuleSyncOverride {
            return try deleteTopicRuleSyncOverride(input)
        }

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
        if let deleteV2LoggingLevelAsyncOverride = deleteV2LoggingLevelAsyncOverride {
            return try deleteV2LoggingLevelAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the DeleteV2LoggingLevel operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteV2LoggingLevelRequest object being passed to this operation.
     - Throws: internal, invalidRequest, serviceUnavailable.
     */
    public func deleteV2LoggingLevelSync(input: IotModel.DeleteV2LoggingLevelRequest) throws {
        if let deleteV2LoggingLevelSyncOverride = deleteV2LoggingLevelSyncOverride {
            return try deleteV2LoggingLevelSyncOverride(input)
        }

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
        if let deprecateThingTypeAsyncOverride = deprecateThingTypeAsyncOverride {
            return try deprecateThingTypeAsyncOverride(input, completion)
        }

        let result = DeprecateThingTypeResponse.__default
        
        completion(.response(result))
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
        if let deprecateThingTypeSyncOverride = deprecateThingTypeSyncOverride {
            return try deprecateThingTypeSyncOverride(input)
        }

        return DeprecateThingTypeResponse.__default
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
        if let describeAccountAuditConfigurationAsyncOverride = describeAccountAuditConfigurationAsyncOverride {
            return try describeAccountAuditConfigurationAsyncOverride(input, completion)
        }

        let result = DescribeAccountAuditConfigurationResponse.__default
        
        completion(.response(result))
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
        if let describeAccountAuditConfigurationSyncOverride = describeAccountAuditConfigurationSyncOverride {
            return try describeAccountAuditConfigurationSyncOverride(input)
        }

        return DescribeAccountAuditConfigurationResponse.__default
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
        if let describeAuditFindingAsyncOverride = describeAuditFindingAsyncOverride {
            return try describeAuditFindingAsyncOverride(input, completion)
        }

        let result = DescribeAuditFindingResponse.__default
        
        completion(.response(result))
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
        if let describeAuditFindingSyncOverride = describeAuditFindingSyncOverride {
            return try describeAuditFindingSyncOverride(input)
        }

        return DescribeAuditFindingResponse.__default
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
        if let describeAuditMitigationActionsTaskAsyncOverride = describeAuditMitigationActionsTaskAsyncOverride {
            return try describeAuditMitigationActionsTaskAsyncOverride(input, completion)
        }

        let result = DescribeAuditMitigationActionsTaskResponse.__default
        
        completion(.response(result))
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
        if let describeAuditMitigationActionsTaskSyncOverride = describeAuditMitigationActionsTaskSyncOverride {
            return try describeAuditMitigationActionsTaskSyncOverride(input)
        }

        return DescribeAuditMitigationActionsTaskResponse.__default
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
        if let describeAuditTaskAsyncOverride = describeAuditTaskAsyncOverride {
            return try describeAuditTaskAsyncOverride(input, completion)
        }

        let result = DescribeAuditTaskResponse.__default
        
        completion(.response(result))
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
        if let describeAuditTaskSyncOverride = describeAuditTaskSyncOverride {
            return try describeAuditTaskSyncOverride(input)
        }

        return DescribeAuditTaskResponse.__default
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
        if let describeAuthorizerAsyncOverride = describeAuthorizerAsyncOverride {
            return try describeAuthorizerAsyncOverride(input, completion)
        }

        let result = DescribeAuthorizerResponse.__default
        
        completion(.response(result))
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
        if let describeAuthorizerSyncOverride = describeAuthorizerSyncOverride {
            return try describeAuthorizerSyncOverride(input)
        }

        return DescribeAuthorizerResponse.__default
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
        if let describeBillingGroupAsyncOverride = describeBillingGroupAsyncOverride {
            return try describeBillingGroupAsyncOverride(input, completion)
        }

        let result = DescribeBillingGroupResponse.__default
        
        completion(.response(result))
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
        if let describeBillingGroupSyncOverride = describeBillingGroupSyncOverride {
            return try describeBillingGroupSyncOverride(input)
        }

        return DescribeBillingGroupResponse.__default
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
        if let describeCACertificateAsyncOverride = describeCACertificateAsyncOverride {
            return try describeCACertificateAsyncOverride(input, completion)
        }

        let result = DescribeCACertificateResponse.__default
        
        completion(.response(result))
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
        if let describeCACertificateSyncOverride = describeCACertificateSyncOverride {
            return try describeCACertificateSyncOverride(input)
        }

        return DescribeCACertificateResponse.__default
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
        if let describeCertificateAsyncOverride = describeCertificateAsyncOverride {
            return try describeCertificateAsyncOverride(input, completion)
        }

        let result = DescribeCertificateResponse.__default
        
        completion(.response(result))
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
        if let describeCertificateSyncOverride = describeCertificateSyncOverride {
            return try describeCertificateSyncOverride(input)
        }

        return DescribeCertificateResponse.__default
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
        if let describeDefaultAuthorizerAsyncOverride = describeDefaultAuthorizerAsyncOverride {
            return try describeDefaultAuthorizerAsyncOverride(input, completion)
        }

        let result = DescribeDefaultAuthorizerResponse.__default
        
        completion(.response(result))
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
        if let describeDefaultAuthorizerSyncOverride = describeDefaultAuthorizerSyncOverride {
            return try describeDefaultAuthorizerSyncOverride(input)
        }

        return DescribeDefaultAuthorizerResponse.__default
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
        if let describeEndpointAsyncOverride = describeEndpointAsyncOverride {
            return try describeEndpointAsyncOverride(input, completion)
        }

        let result = DescribeEndpointResponse.__default
        
        completion(.response(result))
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
        if let describeEndpointSyncOverride = describeEndpointSyncOverride {
            return try describeEndpointSyncOverride(input)
        }

        return DescribeEndpointResponse.__default
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
        if let describeEventConfigurationsAsyncOverride = describeEventConfigurationsAsyncOverride {
            return try describeEventConfigurationsAsyncOverride(input, completion)
        }

        let result = DescribeEventConfigurationsResponse.__default
        
        completion(.response(result))
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
        if let describeEventConfigurationsSyncOverride = describeEventConfigurationsSyncOverride {
            return try describeEventConfigurationsSyncOverride(input)
        }

        return DescribeEventConfigurationsResponse.__default
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
        if let describeIndexAsyncOverride = describeIndexAsyncOverride {
            return try describeIndexAsyncOverride(input, completion)
        }

        let result = DescribeIndexResponse.__default
        
        completion(.response(result))
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
        if let describeIndexSyncOverride = describeIndexSyncOverride {
            return try describeIndexSyncOverride(input)
        }

        return DescribeIndexResponse.__default
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
        if let describeJobAsyncOverride = describeJobAsyncOverride {
            return try describeJobAsyncOverride(input, completion)
        }

        let result = DescribeJobResponse.__default
        
        completion(.response(result))
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
        if let describeJobSyncOverride = describeJobSyncOverride {
            return try describeJobSyncOverride(input)
        }

        return DescribeJobResponse.__default
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
        if let describeJobExecutionAsyncOverride = describeJobExecutionAsyncOverride {
            return try describeJobExecutionAsyncOverride(input, completion)
        }

        let result = DescribeJobExecutionResponse.__default
        
        completion(.response(result))
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
        if let describeJobExecutionSyncOverride = describeJobExecutionSyncOverride {
            return try describeJobExecutionSyncOverride(input)
        }

        return DescribeJobExecutionResponse.__default
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
        if let describeMitigationActionAsyncOverride = describeMitigationActionAsyncOverride {
            return try describeMitigationActionAsyncOverride(input, completion)
        }

        let result = DescribeMitigationActionResponse.__default
        
        completion(.response(result))
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
        if let describeMitigationActionSyncOverride = describeMitigationActionSyncOverride {
            return try describeMitigationActionSyncOverride(input)
        }

        return DescribeMitigationActionResponse.__default
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
        if let describeRoleAliasAsyncOverride = describeRoleAliasAsyncOverride {
            return try describeRoleAliasAsyncOverride(input, completion)
        }

        let result = DescribeRoleAliasResponse.__default
        
        completion(.response(result))
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
        if let describeRoleAliasSyncOverride = describeRoleAliasSyncOverride {
            return try describeRoleAliasSyncOverride(input)
        }

        return DescribeRoleAliasResponse.__default
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
        if let describeScheduledAuditAsyncOverride = describeScheduledAuditAsyncOverride {
            return try describeScheduledAuditAsyncOverride(input, completion)
        }

        let result = DescribeScheduledAuditResponse.__default
        
        completion(.response(result))
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
        if let describeScheduledAuditSyncOverride = describeScheduledAuditSyncOverride {
            return try describeScheduledAuditSyncOverride(input)
        }

        return DescribeScheduledAuditResponse.__default
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
        if let describeSecurityProfileAsyncOverride = describeSecurityProfileAsyncOverride {
            return try describeSecurityProfileAsyncOverride(input, completion)
        }

        let result = DescribeSecurityProfileResponse.__default
        
        completion(.response(result))
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
        if let describeSecurityProfileSyncOverride = describeSecurityProfileSyncOverride {
            return try describeSecurityProfileSyncOverride(input)
        }

        return DescribeSecurityProfileResponse.__default
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
        if let describeStreamAsyncOverride = describeStreamAsyncOverride {
            return try describeStreamAsyncOverride(input, completion)
        }

        let result = DescribeStreamResponse.__default
        
        completion(.response(result))
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
        if let describeStreamSyncOverride = describeStreamSyncOverride {
            return try describeStreamSyncOverride(input)
        }

        return DescribeStreamResponse.__default
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
        if let describeThingAsyncOverride = describeThingAsyncOverride {
            return try describeThingAsyncOverride(input, completion)
        }

        let result = DescribeThingResponse.__default
        
        completion(.response(result))
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
        if let describeThingSyncOverride = describeThingSyncOverride {
            return try describeThingSyncOverride(input)
        }

        return DescribeThingResponse.__default
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
        if let describeThingGroupAsyncOverride = describeThingGroupAsyncOverride {
            return try describeThingGroupAsyncOverride(input, completion)
        }

        let result = DescribeThingGroupResponse.__default
        
        completion(.response(result))
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
        if let describeThingGroupSyncOverride = describeThingGroupSyncOverride {
            return try describeThingGroupSyncOverride(input)
        }

        return DescribeThingGroupResponse.__default
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
        if let describeThingRegistrationTaskAsyncOverride = describeThingRegistrationTaskAsyncOverride {
            return try describeThingRegistrationTaskAsyncOverride(input, completion)
        }

        let result = DescribeThingRegistrationTaskResponse.__default
        
        completion(.response(result))
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
        if let describeThingRegistrationTaskSyncOverride = describeThingRegistrationTaskSyncOverride {
            return try describeThingRegistrationTaskSyncOverride(input)
        }

        return DescribeThingRegistrationTaskResponse.__default
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
        if let describeThingTypeAsyncOverride = describeThingTypeAsyncOverride {
            return try describeThingTypeAsyncOverride(input, completion)
        }

        let result = DescribeThingTypeResponse.__default
        
        completion(.response(result))
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
        if let describeThingTypeSyncOverride = describeThingTypeSyncOverride {
            return try describeThingTypeSyncOverride(input)
        }

        return DescribeThingTypeResponse.__default
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
        if let detachPolicyAsyncOverride = detachPolicyAsyncOverride {
            return try detachPolicyAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the DetachPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachPolicyRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, limitExceeded, serviceUnavailable, throttling, unauthorized.
     */
    public func detachPolicySync(input: IotModel.DetachPolicyRequest) throws {
        if let detachPolicySyncOverride = detachPolicySyncOverride {
            return try detachPolicySyncOverride(input)
        }

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
        if let detachPrincipalPolicyAsyncOverride = detachPrincipalPolicyAsyncOverride {
            return try detachPrincipalPolicyAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the DetachPrincipalPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachPrincipalPolicyRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func detachPrincipalPolicySync(input: IotModel.DetachPrincipalPolicyRequest) throws {
        if let detachPrincipalPolicySyncOverride = detachPrincipalPolicySyncOverride {
            return try detachPrincipalPolicySyncOverride(input)
        }

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
        if let detachSecurityProfileAsyncOverride = detachSecurityProfileAsyncOverride {
            return try detachSecurityProfileAsyncOverride(input, completion)
        }

        let result = DetachSecurityProfileResponse.__default
        
        completion(.response(result))
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
        if let detachSecurityProfileSyncOverride = detachSecurityProfileSyncOverride {
            return try detachSecurityProfileSyncOverride(input)
        }

        return DetachSecurityProfileResponse.__default
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
        if let detachThingPrincipalAsyncOverride = detachThingPrincipalAsyncOverride {
            return try detachThingPrincipalAsyncOverride(input, completion)
        }

        let result = DetachThingPrincipalResponse.__default
        
        completion(.response(result))
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
        if let detachThingPrincipalSyncOverride = detachThingPrincipalSyncOverride {
            return try detachThingPrincipalSyncOverride(input)
        }

        return DetachThingPrincipalResponse.__default
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
        if let disableTopicRuleAsyncOverride = disableTopicRuleAsyncOverride {
            return try disableTopicRuleAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the DisableTopicRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableTopicRuleRequest object being passed to this operation.
     - Throws: conflictingResourceUpdate, internal, invalidRequest, serviceUnavailable, unauthorized.
     */
    public func disableTopicRuleSync(input: IotModel.DisableTopicRuleRequest) throws {
        if let disableTopicRuleSyncOverride = disableTopicRuleSyncOverride {
            return try disableTopicRuleSyncOverride(input)
        }

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
        if let enableTopicRuleAsyncOverride = enableTopicRuleAsyncOverride {
            return try enableTopicRuleAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the EnableTopicRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableTopicRuleRequest object being passed to this operation.
     - Throws: conflictingResourceUpdate, internal, invalidRequest, serviceUnavailable, unauthorized.
     */
    public func enableTopicRuleSync(input: IotModel.EnableTopicRuleRequest) throws {
        if let enableTopicRuleSyncOverride = enableTopicRuleSyncOverride {
            return try enableTopicRuleSyncOverride(input)
        }

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
        if let getEffectivePoliciesAsyncOverride = getEffectivePoliciesAsyncOverride {
            return try getEffectivePoliciesAsyncOverride(input, completion)
        }

        let result = GetEffectivePoliciesResponse.__default
        
        completion(.response(result))
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
        if let getEffectivePoliciesSyncOverride = getEffectivePoliciesSyncOverride {
            return try getEffectivePoliciesSyncOverride(input)
        }

        return GetEffectivePoliciesResponse.__default
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
        if let getIndexingConfigurationAsyncOverride = getIndexingConfigurationAsyncOverride {
            return try getIndexingConfigurationAsyncOverride(input, completion)
        }

        let result = GetIndexingConfigurationResponse.__default
        
        completion(.response(result))
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
        if let getIndexingConfigurationSyncOverride = getIndexingConfigurationSyncOverride {
            return try getIndexingConfigurationSyncOverride(input)
        }

        return GetIndexingConfigurationResponse.__default
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
        if let getJobDocumentAsyncOverride = getJobDocumentAsyncOverride {
            return try getJobDocumentAsyncOverride(input, completion)
        }

        let result = GetJobDocumentResponse.__default
        
        completion(.response(result))
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
        if let getJobDocumentSyncOverride = getJobDocumentSyncOverride {
            return try getJobDocumentSyncOverride(input)
        }

        return GetJobDocumentResponse.__default
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
        if let getLoggingOptionsAsyncOverride = getLoggingOptionsAsyncOverride {
            return try getLoggingOptionsAsyncOverride(input, completion)
        }

        let result = GetLoggingOptionsResponse.__default
        
        completion(.response(result))
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
        if let getLoggingOptionsSyncOverride = getLoggingOptionsSyncOverride {
            return try getLoggingOptionsSyncOverride(input)
        }

        return GetLoggingOptionsResponse.__default
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
        if let getOTAUpdateAsyncOverride = getOTAUpdateAsyncOverride {
            return try getOTAUpdateAsyncOverride(input, completion)
        }

        let result = GetOTAUpdateResponse.__default
        
        completion(.response(result))
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
        if let getOTAUpdateSyncOverride = getOTAUpdateSyncOverride {
            return try getOTAUpdateSyncOverride(input)
        }

        return GetOTAUpdateResponse.__default
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
        if let getPolicyAsyncOverride = getPolicyAsyncOverride {
            return try getPolicyAsyncOverride(input, completion)
        }

        let result = GetPolicyResponse.__default
        
        completion(.response(result))
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
        if let getPolicySyncOverride = getPolicySyncOverride {
            return try getPolicySyncOverride(input)
        }

        return GetPolicyResponse.__default
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
        if let getPolicyVersionAsyncOverride = getPolicyVersionAsyncOverride {
            return try getPolicyVersionAsyncOverride(input, completion)
        }

        let result = GetPolicyVersionResponse.__default
        
        completion(.response(result))
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
        if let getPolicyVersionSyncOverride = getPolicyVersionSyncOverride {
            return try getPolicyVersionSyncOverride(input)
        }

        return GetPolicyVersionResponse.__default
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
        if let getRegistrationCodeAsyncOverride = getRegistrationCodeAsyncOverride {
            return try getRegistrationCodeAsyncOverride(input, completion)
        }

        let result = GetRegistrationCodeResponse.__default
        
        completion(.response(result))
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
        if let getRegistrationCodeSyncOverride = getRegistrationCodeSyncOverride {
            return try getRegistrationCodeSyncOverride(input)
        }

        return GetRegistrationCodeResponse.__default
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
        if let getStatisticsAsyncOverride = getStatisticsAsyncOverride {
            return try getStatisticsAsyncOverride(input, completion)
        }

        let result = GetStatisticsResponse.__default
        
        completion(.response(result))
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
        if let getStatisticsSyncOverride = getStatisticsSyncOverride {
            return try getStatisticsSyncOverride(input)
        }

        return GetStatisticsResponse.__default
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
        if let getTopicRuleAsyncOverride = getTopicRuleAsyncOverride {
            return try getTopicRuleAsyncOverride(input, completion)
        }

        let result = GetTopicRuleResponse.__default
        
        completion(.response(result))
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
        if let getTopicRuleSyncOverride = getTopicRuleSyncOverride {
            return try getTopicRuleSyncOverride(input)
        }

        return GetTopicRuleResponse.__default
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
        if let getV2LoggingOptionsAsyncOverride = getV2LoggingOptionsAsyncOverride {
            return try getV2LoggingOptionsAsyncOverride(input, completion)
        }

        let result = GetV2LoggingOptionsResponse.__default
        
        completion(.response(result))
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
        if let getV2LoggingOptionsSyncOverride = getV2LoggingOptionsSyncOverride {
            return try getV2LoggingOptionsSyncOverride(input)
        }

        return GetV2LoggingOptionsResponse.__default
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
        if let listActiveViolationsAsyncOverride = listActiveViolationsAsyncOverride {
            return try listActiveViolationsAsyncOverride(input, completion)
        }

        let result = ListActiveViolationsResponse.__default
        
        completion(.response(result))
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
        if let listActiveViolationsSyncOverride = listActiveViolationsSyncOverride {
            return try listActiveViolationsSyncOverride(input)
        }

        return ListActiveViolationsResponse.__default
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
        if let listAttachedPoliciesAsyncOverride = listAttachedPoliciesAsyncOverride {
            return try listAttachedPoliciesAsyncOverride(input, completion)
        }

        let result = ListAttachedPoliciesResponse.__default
        
        completion(.response(result))
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
        if let listAttachedPoliciesSyncOverride = listAttachedPoliciesSyncOverride {
            return try listAttachedPoliciesSyncOverride(input)
        }

        return ListAttachedPoliciesResponse.__default
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
        if let listAuditFindingsAsyncOverride = listAuditFindingsAsyncOverride {
            return try listAuditFindingsAsyncOverride(input, completion)
        }

        let result = ListAuditFindingsResponse.__default
        
        completion(.response(result))
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
        if let listAuditFindingsSyncOverride = listAuditFindingsSyncOverride {
            return try listAuditFindingsSyncOverride(input)
        }

        return ListAuditFindingsResponse.__default
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
        if let listAuditMitigationActionsExecutionsAsyncOverride = listAuditMitigationActionsExecutionsAsyncOverride {
            return try listAuditMitigationActionsExecutionsAsyncOverride(input, completion)
        }

        let result = ListAuditMitigationActionsExecutionsResponse.__default
        
        completion(.response(result))
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
        if let listAuditMitigationActionsExecutionsSyncOverride = listAuditMitigationActionsExecutionsSyncOverride {
            return try listAuditMitigationActionsExecutionsSyncOverride(input)
        }

        return ListAuditMitigationActionsExecutionsResponse.__default
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
        if let listAuditMitigationActionsTasksAsyncOverride = listAuditMitigationActionsTasksAsyncOverride {
            return try listAuditMitigationActionsTasksAsyncOverride(input, completion)
        }

        let result = ListAuditMitigationActionsTasksResponse.__default
        
        completion(.response(result))
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
        if let listAuditMitigationActionsTasksSyncOverride = listAuditMitigationActionsTasksSyncOverride {
            return try listAuditMitigationActionsTasksSyncOverride(input)
        }

        return ListAuditMitigationActionsTasksResponse.__default
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
        if let listAuditTasksAsyncOverride = listAuditTasksAsyncOverride {
            return try listAuditTasksAsyncOverride(input, completion)
        }

        let result = ListAuditTasksResponse.__default
        
        completion(.response(result))
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
        if let listAuditTasksSyncOverride = listAuditTasksSyncOverride {
            return try listAuditTasksSyncOverride(input)
        }

        return ListAuditTasksResponse.__default
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
        if let listAuthorizersAsyncOverride = listAuthorizersAsyncOverride {
            return try listAuthorizersAsyncOverride(input, completion)
        }

        let result = ListAuthorizersResponse.__default
        
        completion(.response(result))
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
        if let listAuthorizersSyncOverride = listAuthorizersSyncOverride {
            return try listAuthorizersSyncOverride(input)
        }

        return ListAuthorizersResponse.__default
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
        if let listBillingGroupsAsyncOverride = listBillingGroupsAsyncOverride {
            return try listBillingGroupsAsyncOverride(input, completion)
        }

        let result = ListBillingGroupsResponse.__default
        
        completion(.response(result))
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
        if let listBillingGroupsSyncOverride = listBillingGroupsSyncOverride {
            return try listBillingGroupsSyncOverride(input)
        }

        return ListBillingGroupsResponse.__default
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
        if let listCACertificatesAsyncOverride = listCACertificatesAsyncOverride {
            return try listCACertificatesAsyncOverride(input, completion)
        }

        let result = ListCACertificatesResponse.__default
        
        completion(.response(result))
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
        if let listCACertificatesSyncOverride = listCACertificatesSyncOverride {
            return try listCACertificatesSyncOverride(input)
        }

        return ListCACertificatesResponse.__default
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
        if let listCertificatesAsyncOverride = listCertificatesAsyncOverride {
            return try listCertificatesAsyncOverride(input, completion)
        }

        let result = ListCertificatesResponse.__default
        
        completion(.response(result))
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
        if let listCertificatesSyncOverride = listCertificatesSyncOverride {
            return try listCertificatesSyncOverride(input)
        }

        return ListCertificatesResponse.__default
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
        if let listCertificatesByCAAsyncOverride = listCertificatesByCAAsyncOverride {
            return try listCertificatesByCAAsyncOverride(input, completion)
        }

        let result = ListCertificatesByCAResponse.__default
        
        completion(.response(result))
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
        if let listCertificatesByCASyncOverride = listCertificatesByCASyncOverride {
            return try listCertificatesByCASyncOverride(input)
        }

        return ListCertificatesByCAResponse.__default
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
        if let listIndicesAsyncOverride = listIndicesAsyncOverride {
            return try listIndicesAsyncOverride(input, completion)
        }

        let result = ListIndicesResponse.__default
        
        completion(.response(result))
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
        if let listIndicesSyncOverride = listIndicesSyncOverride {
            return try listIndicesSyncOverride(input)
        }

        return ListIndicesResponse.__default
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
        if let listJobExecutionsForJobAsyncOverride = listJobExecutionsForJobAsyncOverride {
            return try listJobExecutionsForJobAsyncOverride(input, completion)
        }

        let result = ListJobExecutionsForJobResponse.__default
        
        completion(.response(result))
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
        if let listJobExecutionsForJobSyncOverride = listJobExecutionsForJobSyncOverride {
            return try listJobExecutionsForJobSyncOverride(input)
        }

        return ListJobExecutionsForJobResponse.__default
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
        if let listJobExecutionsForThingAsyncOverride = listJobExecutionsForThingAsyncOverride {
            return try listJobExecutionsForThingAsyncOverride(input, completion)
        }

        let result = ListJobExecutionsForThingResponse.__default
        
        completion(.response(result))
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
        if let listJobExecutionsForThingSyncOverride = listJobExecutionsForThingSyncOverride {
            return try listJobExecutionsForThingSyncOverride(input)
        }

        return ListJobExecutionsForThingResponse.__default
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
        if let listJobsAsyncOverride = listJobsAsyncOverride {
            return try listJobsAsyncOverride(input, completion)
        }

        let result = ListJobsResponse.__default
        
        completion(.response(result))
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
        if let listJobsSyncOverride = listJobsSyncOverride {
            return try listJobsSyncOverride(input)
        }

        return ListJobsResponse.__default
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
        if let listMitigationActionsAsyncOverride = listMitigationActionsAsyncOverride {
            return try listMitigationActionsAsyncOverride(input, completion)
        }

        let result = ListMitigationActionsResponse.__default
        
        completion(.response(result))
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
        if let listMitigationActionsSyncOverride = listMitigationActionsSyncOverride {
            return try listMitigationActionsSyncOverride(input)
        }

        return ListMitigationActionsResponse.__default
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
        if let listOTAUpdatesAsyncOverride = listOTAUpdatesAsyncOverride {
            return try listOTAUpdatesAsyncOverride(input, completion)
        }

        let result = ListOTAUpdatesResponse.__default
        
        completion(.response(result))
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
        if let listOTAUpdatesSyncOverride = listOTAUpdatesSyncOverride {
            return try listOTAUpdatesSyncOverride(input)
        }

        return ListOTAUpdatesResponse.__default
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
        if let listOutgoingCertificatesAsyncOverride = listOutgoingCertificatesAsyncOverride {
            return try listOutgoingCertificatesAsyncOverride(input, completion)
        }

        let result = ListOutgoingCertificatesResponse.__default
        
        completion(.response(result))
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
        if let listOutgoingCertificatesSyncOverride = listOutgoingCertificatesSyncOverride {
            return try listOutgoingCertificatesSyncOverride(input)
        }

        return ListOutgoingCertificatesResponse.__default
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
        if let listPoliciesAsyncOverride = listPoliciesAsyncOverride {
            return try listPoliciesAsyncOverride(input, completion)
        }

        let result = ListPoliciesResponse.__default
        
        completion(.response(result))
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
        if let listPoliciesSyncOverride = listPoliciesSyncOverride {
            return try listPoliciesSyncOverride(input)
        }

        return ListPoliciesResponse.__default
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
        if let listPolicyPrincipalsAsyncOverride = listPolicyPrincipalsAsyncOverride {
            return try listPolicyPrincipalsAsyncOverride(input, completion)
        }

        let result = ListPolicyPrincipalsResponse.__default
        
        completion(.response(result))
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
        if let listPolicyPrincipalsSyncOverride = listPolicyPrincipalsSyncOverride {
            return try listPolicyPrincipalsSyncOverride(input)
        }

        return ListPolicyPrincipalsResponse.__default
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
        if let listPolicyVersionsAsyncOverride = listPolicyVersionsAsyncOverride {
            return try listPolicyVersionsAsyncOverride(input, completion)
        }

        let result = ListPolicyVersionsResponse.__default
        
        completion(.response(result))
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
        if let listPolicyVersionsSyncOverride = listPolicyVersionsSyncOverride {
            return try listPolicyVersionsSyncOverride(input)
        }

        return ListPolicyVersionsResponse.__default
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
        if let listPrincipalPoliciesAsyncOverride = listPrincipalPoliciesAsyncOverride {
            return try listPrincipalPoliciesAsyncOverride(input, completion)
        }

        let result = ListPrincipalPoliciesResponse.__default
        
        completion(.response(result))
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
        if let listPrincipalPoliciesSyncOverride = listPrincipalPoliciesSyncOverride {
            return try listPrincipalPoliciesSyncOverride(input)
        }

        return ListPrincipalPoliciesResponse.__default
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
        if let listPrincipalThingsAsyncOverride = listPrincipalThingsAsyncOverride {
            return try listPrincipalThingsAsyncOverride(input, completion)
        }

        let result = ListPrincipalThingsResponse.__default
        
        completion(.response(result))
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
        if let listPrincipalThingsSyncOverride = listPrincipalThingsSyncOverride {
            return try listPrincipalThingsSyncOverride(input)
        }

        return ListPrincipalThingsResponse.__default
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
        if let listRoleAliasesAsyncOverride = listRoleAliasesAsyncOverride {
            return try listRoleAliasesAsyncOverride(input, completion)
        }

        let result = ListRoleAliasesResponse.__default
        
        completion(.response(result))
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
        if let listRoleAliasesSyncOverride = listRoleAliasesSyncOverride {
            return try listRoleAliasesSyncOverride(input)
        }

        return ListRoleAliasesResponse.__default
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
        if let listScheduledAuditsAsyncOverride = listScheduledAuditsAsyncOverride {
            return try listScheduledAuditsAsyncOverride(input, completion)
        }

        let result = ListScheduledAuditsResponse.__default
        
        completion(.response(result))
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
        if let listScheduledAuditsSyncOverride = listScheduledAuditsSyncOverride {
            return try listScheduledAuditsSyncOverride(input)
        }

        return ListScheduledAuditsResponse.__default
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
        if let listSecurityProfilesAsyncOverride = listSecurityProfilesAsyncOverride {
            return try listSecurityProfilesAsyncOverride(input, completion)
        }

        let result = ListSecurityProfilesResponse.__default
        
        completion(.response(result))
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
        if let listSecurityProfilesSyncOverride = listSecurityProfilesSyncOverride {
            return try listSecurityProfilesSyncOverride(input)
        }

        return ListSecurityProfilesResponse.__default
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
        if let listSecurityProfilesForTargetAsyncOverride = listSecurityProfilesForTargetAsyncOverride {
            return try listSecurityProfilesForTargetAsyncOverride(input, completion)
        }

        let result = ListSecurityProfilesForTargetResponse.__default
        
        completion(.response(result))
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
        if let listSecurityProfilesForTargetSyncOverride = listSecurityProfilesForTargetSyncOverride {
            return try listSecurityProfilesForTargetSyncOverride(input)
        }

        return ListSecurityProfilesForTargetResponse.__default
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
        if let listStreamsAsyncOverride = listStreamsAsyncOverride {
            return try listStreamsAsyncOverride(input, completion)
        }

        let result = ListStreamsResponse.__default
        
        completion(.response(result))
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
        if let listStreamsSyncOverride = listStreamsSyncOverride {
            return try listStreamsSyncOverride(input)
        }

        return ListStreamsResponse.__default
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
        if let listTagsForResourceAsyncOverride = listTagsForResourceAsyncOverride {
            return try listTagsForResourceAsyncOverride(input, completion)
        }

        let result = ListTagsForResourceResponse.__default
        
        completion(.response(result))
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
        if let listTagsForResourceSyncOverride = listTagsForResourceSyncOverride {
            return try listTagsForResourceSyncOverride(input)
        }

        return ListTagsForResourceResponse.__default
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
        if let listTargetsForPolicyAsyncOverride = listTargetsForPolicyAsyncOverride {
            return try listTargetsForPolicyAsyncOverride(input, completion)
        }

        let result = ListTargetsForPolicyResponse.__default
        
        completion(.response(result))
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
        if let listTargetsForPolicySyncOverride = listTargetsForPolicySyncOverride {
            return try listTargetsForPolicySyncOverride(input)
        }

        return ListTargetsForPolicyResponse.__default
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
        if let listTargetsForSecurityProfileAsyncOverride = listTargetsForSecurityProfileAsyncOverride {
            return try listTargetsForSecurityProfileAsyncOverride(input, completion)
        }

        let result = ListTargetsForSecurityProfileResponse.__default
        
        completion(.response(result))
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
        if let listTargetsForSecurityProfileSyncOverride = listTargetsForSecurityProfileSyncOverride {
            return try listTargetsForSecurityProfileSyncOverride(input)
        }

        return ListTargetsForSecurityProfileResponse.__default
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
        if let listThingGroupsAsyncOverride = listThingGroupsAsyncOverride {
            return try listThingGroupsAsyncOverride(input, completion)
        }

        let result = ListThingGroupsResponse.__default
        
        completion(.response(result))
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
        if let listThingGroupsSyncOverride = listThingGroupsSyncOverride {
            return try listThingGroupsSyncOverride(input)
        }

        return ListThingGroupsResponse.__default
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
        if let listThingGroupsForThingAsyncOverride = listThingGroupsForThingAsyncOverride {
            return try listThingGroupsForThingAsyncOverride(input, completion)
        }

        let result = ListThingGroupsForThingResponse.__default
        
        completion(.response(result))
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
        if let listThingGroupsForThingSyncOverride = listThingGroupsForThingSyncOverride {
            return try listThingGroupsForThingSyncOverride(input)
        }

        return ListThingGroupsForThingResponse.__default
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
        if let listThingPrincipalsAsyncOverride = listThingPrincipalsAsyncOverride {
            return try listThingPrincipalsAsyncOverride(input, completion)
        }

        let result = ListThingPrincipalsResponse.__default
        
        completion(.response(result))
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
        if let listThingPrincipalsSyncOverride = listThingPrincipalsSyncOverride {
            return try listThingPrincipalsSyncOverride(input)
        }

        return ListThingPrincipalsResponse.__default
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
        if let listThingRegistrationTaskReportsAsyncOverride = listThingRegistrationTaskReportsAsyncOverride {
            return try listThingRegistrationTaskReportsAsyncOverride(input, completion)
        }

        let result = ListThingRegistrationTaskReportsResponse.__default
        
        completion(.response(result))
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
        if let listThingRegistrationTaskReportsSyncOverride = listThingRegistrationTaskReportsSyncOverride {
            return try listThingRegistrationTaskReportsSyncOverride(input)
        }

        return ListThingRegistrationTaskReportsResponse.__default
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
        if let listThingRegistrationTasksAsyncOverride = listThingRegistrationTasksAsyncOverride {
            return try listThingRegistrationTasksAsyncOverride(input, completion)
        }

        let result = ListThingRegistrationTasksResponse.__default
        
        completion(.response(result))
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
        if let listThingRegistrationTasksSyncOverride = listThingRegistrationTasksSyncOverride {
            return try listThingRegistrationTasksSyncOverride(input)
        }

        return ListThingRegistrationTasksResponse.__default
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
        if let listThingTypesAsyncOverride = listThingTypesAsyncOverride {
            return try listThingTypesAsyncOverride(input, completion)
        }

        let result = ListThingTypesResponse.__default
        
        completion(.response(result))
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
        if let listThingTypesSyncOverride = listThingTypesSyncOverride {
            return try listThingTypesSyncOverride(input)
        }

        return ListThingTypesResponse.__default
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
        if let listThingsAsyncOverride = listThingsAsyncOverride {
            return try listThingsAsyncOverride(input, completion)
        }

        let result = ListThingsResponse.__default
        
        completion(.response(result))
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
        if let listThingsSyncOverride = listThingsSyncOverride {
            return try listThingsSyncOverride(input)
        }

        return ListThingsResponse.__default
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
        if let listThingsInBillingGroupAsyncOverride = listThingsInBillingGroupAsyncOverride {
            return try listThingsInBillingGroupAsyncOverride(input, completion)
        }

        let result = ListThingsInBillingGroupResponse.__default
        
        completion(.response(result))
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
        if let listThingsInBillingGroupSyncOverride = listThingsInBillingGroupSyncOverride {
            return try listThingsInBillingGroupSyncOverride(input)
        }

        return ListThingsInBillingGroupResponse.__default
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
        if let listThingsInThingGroupAsyncOverride = listThingsInThingGroupAsyncOverride {
            return try listThingsInThingGroupAsyncOverride(input, completion)
        }

        let result = ListThingsInThingGroupResponse.__default
        
        completion(.response(result))
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
        if let listThingsInThingGroupSyncOverride = listThingsInThingGroupSyncOverride {
            return try listThingsInThingGroupSyncOverride(input)
        }

        return ListThingsInThingGroupResponse.__default
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
        if let listTopicRulesAsyncOverride = listTopicRulesAsyncOverride {
            return try listTopicRulesAsyncOverride(input, completion)
        }

        let result = ListTopicRulesResponse.__default
        
        completion(.response(result))
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
        if let listTopicRulesSyncOverride = listTopicRulesSyncOverride {
            return try listTopicRulesSyncOverride(input)
        }

        return ListTopicRulesResponse.__default
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
        if let listV2LoggingLevelsAsyncOverride = listV2LoggingLevelsAsyncOverride {
            return try listV2LoggingLevelsAsyncOverride(input, completion)
        }

        let result = ListV2LoggingLevelsResponse.__default
        
        completion(.response(result))
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
        if let listV2LoggingLevelsSyncOverride = listV2LoggingLevelsSyncOverride {
            return try listV2LoggingLevelsSyncOverride(input)
        }

        return ListV2LoggingLevelsResponse.__default
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
        if let listViolationEventsAsyncOverride = listViolationEventsAsyncOverride {
            return try listViolationEventsAsyncOverride(input, completion)
        }

        let result = ListViolationEventsResponse.__default
        
        completion(.response(result))
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
        if let listViolationEventsSyncOverride = listViolationEventsSyncOverride {
            return try listViolationEventsSyncOverride(input)
        }

        return ListViolationEventsResponse.__default
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
        if let registerCACertificateAsyncOverride = registerCACertificateAsyncOverride {
            return try registerCACertificateAsyncOverride(input, completion)
        }

        let result = RegisterCACertificateResponse.__default
        
        completion(.response(result))
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
        if let registerCACertificateSyncOverride = registerCACertificateSyncOverride {
            return try registerCACertificateSyncOverride(input)
        }

        return RegisterCACertificateResponse.__default
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
        if let registerCertificateAsyncOverride = registerCertificateAsyncOverride {
            return try registerCertificateAsyncOverride(input, completion)
        }

        let result = RegisterCertificateResponse.__default
        
        completion(.response(result))
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
        if let registerCertificateSyncOverride = registerCertificateSyncOverride {
            return try registerCertificateSyncOverride(input)
        }

        return RegisterCertificateResponse.__default
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
        if let registerThingAsyncOverride = registerThingAsyncOverride {
            return try registerThingAsyncOverride(input, completion)
        }

        let result = RegisterThingResponse.__default
        
        completion(.response(result))
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
        if let registerThingSyncOverride = registerThingSyncOverride {
            return try registerThingSyncOverride(input)
        }

        return RegisterThingResponse.__default
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
        if let rejectCertificateTransferAsyncOverride = rejectCertificateTransferAsyncOverride {
            return try rejectCertificateTransferAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the RejectCertificateTransfer operation waiting for the response before returning.

     - Parameters:
         - input: The validated RejectCertificateTransferRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, transferAlreadyCompleted, unauthorized.
     */
    public func rejectCertificateTransferSync(input: IotModel.RejectCertificateTransferRequest) throws {
        if let rejectCertificateTransferSyncOverride = rejectCertificateTransferSyncOverride {
            return try rejectCertificateTransferSyncOverride(input)
        }

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
        if let removeThingFromBillingGroupAsyncOverride = removeThingFromBillingGroupAsyncOverride {
            return try removeThingFromBillingGroupAsyncOverride(input, completion)
        }

        let result = RemoveThingFromBillingGroupResponse.__default
        
        completion(.response(result))
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
        if let removeThingFromBillingGroupSyncOverride = removeThingFromBillingGroupSyncOverride {
            return try removeThingFromBillingGroupSyncOverride(input)
        }

        return RemoveThingFromBillingGroupResponse.__default
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
        if let removeThingFromThingGroupAsyncOverride = removeThingFromThingGroupAsyncOverride {
            return try removeThingFromThingGroupAsyncOverride(input, completion)
        }

        let result = RemoveThingFromThingGroupResponse.__default
        
        completion(.response(result))
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
        if let removeThingFromThingGroupSyncOverride = removeThingFromThingGroupSyncOverride {
            return try removeThingFromThingGroupSyncOverride(input)
        }

        return RemoveThingFromThingGroupResponse.__default
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
        if let replaceTopicRuleAsyncOverride = replaceTopicRuleAsyncOverride {
            return try replaceTopicRuleAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the ReplaceTopicRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceTopicRuleRequest object being passed to this operation.
     - Throws: conflictingResourceUpdate, internal, invalidRequest, serviceUnavailable, sqlParse, unauthorized.
     */
    public func replaceTopicRuleSync(input: IotModel.ReplaceTopicRuleRequest) throws {
        if let replaceTopicRuleSyncOverride = replaceTopicRuleSyncOverride {
            return try replaceTopicRuleSyncOverride(input)
        }

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
        if let searchIndexAsyncOverride = searchIndexAsyncOverride {
            return try searchIndexAsyncOverride(input, completion)
        }

        let result = SearchIndexResponse.__default
        
        completion(.response(result))
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
        if let searchIndexSyncOverride = searchIndexSyncOverride {
            return try searchIndexSyncOverride(input)
        }

        return SearchIndexResponse.__default
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
        if let setDefaultAuthorizerAsyncOverride = setDefaultAuthorizerAsyncOverride {
            return try setDefaultAuthorizerAsyncOverride(input, completion)
        }

        let result = SetDefaultAuthorizerResponse.__default
        
        completion(.response(result))
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
        if let setDefaultAuthorizerSyncOverride = setDefaultAuthorizerSyncOverride {
            return try setDefaultAuthorizerSyncOverride(input)
        }

        return SetDefaultAuthorizerResponse.__default
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
        if let setDefaultPolicyVersionAsyncOverride = setDefaultPolicyVersionAsyncOverride {
            return try setDefaultPolicyVersionAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the SetDefaultPolicyVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetDefaultPolicyVersionRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func setDefaultPolicyVersionSync(input: IotModel.SetDefaultPolicyVersionRequest) throws {
        if let setDefaultPolicyVersionSyncOverride = setDefaultPolicyVersionSyncOverride {
            return try setDefaultPolicyVersionSyncOverride(input)
        }

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
        if let setLoggingOptionsAsyncOverride = setLoggingOptionsAsyncOverride {
            return try setLoggingOptionsAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the SetLoggingOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetLoggingOptionsRequest object being passed to this operation.
     - Throws: internal, invalidRequest, serviceUnavailable.
     */
    public func setLoggingOptionsSync(input: IotModel.SetLoggingOptionsRequest) throws {
        if let setLoggingOptionsSyncOverride = setLoggingOptionsSyncOverride {
            return try setLoggingOptionsSyncOverride(input)
        }

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
        if let setV2LoggingLevelAsyncOverride = setV2LoggingLevelAsyncOverride {
            return try setV2LoggingLevelAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the SetV2LoggingLevel operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetV2LoggingLevelRequest object being passed to this operation.
     - Throws: internal, invalidRequest, notConfigured, serviceUnavailable.
     */
    public func setV2LoggingLevelSync(input: IotModel.SetV2LoggingLevelRequest) throws {
        if let setV2LoggingLevelSyncOverride = setV2LoggingLevelSyncOverride {
            return try setV2LoggingLevelSyncOverride(input)
        }

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
        if let setV2LoggingOptionsAsyncOverride = setV2LoggingOptionsAsyncOverride {
            return try setV2LoggingOptionsAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the SetV2LoggingOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetV2LoggingOptionsRequest object being passed to this operation.
     - Throws: internal, invalidRequest, serviceUnavailable.
     */
    public func setV2LoggingOptionsSync(input: IotModel.SetV2LoggingOptionsRequest) throws {
        if let setV2LoggingOptionsSyncOverride = setV2LoggingOptionsSyncOverride {
            return try setV2LoggingOptionsSyncOverride(input)
        }

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
        if let startAuditMitigationActionsTaskAsyncOverride = startAuditMitigationActionsTaskAsyncOverride {
            return try startAuditMitigationActionsTaskAsyncOverride(input, completion)
        }

        let result = StartAuditMitigationActionsTaskResponse.__default
        
        completion(.response(result))
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
        if let startAuditMitigationActionsTaskSyncOverride = startAuditMitigationActionsTaskSyncOverride {
            return try startAuditMitigationActionsTaskSyncOverride(input)
        }

        return StartAuditMitigationActionsTaskResponse.__default
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
        if let startOnDemandAuditTaskAsyncOverride = startOnDemandAuditTaskAsyncOverride {
            return try startOnDemandAuditTaskAsyncOverride(input, completion)
        }

        let result = StartOnDemandAuditTaskResponse.__default
        
        completion(.response(result))
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
        if let startOnDemandAuditTaskSyncOverride = startOnDemandAuditTaskSyncOverride {
            return try startOnDemandAuditTaskSyncOverride(input)
        }

        return StartOnDemandAuditTaskResponse.__default
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
        if let startThingRegistrationTaskAsyncOverride = startThingRegistrationTaskAsyncOverride {
            return try startThingRegistrationTaskAsyncOverride(input, completion)
        }

        let result = StartThingRegistrationTaskResponse.__default
        
        completion(.response(result))
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
        if let startThingRegistrationTaskSyncOverride = startThingRegistrationTaskSyncOverride {
            return try startThingRegistrationTaskSyncOverride(input)
        }

        return StartThingRegistrationTaskResponse.__default
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
        if let stopThingRegistrationTaskAsyncOverride = stopThingRegistrationTaskAsyncOverride {
            return try stopThingRegistrationTaskAsyncOverride(input, completion)
        }

        let result = StopThingRegistrationTaskResponse.__default
        
        completion(.response(result))
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
        if let stopThingRegistrationTaskSyncOverride = stopThingRegistrationTaskSyncOverride {
            return try stopThingRegistrationTaskSyncOverride(input)
        }

        return StopThingRegistrationTaskResponse.__default
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
        if let tagResourceAsyncOverride = tagResourceAsyncOverride {
            return try tagResourceAsyncOverride(input, completion)
        }

        let result = TagResourceResponse.__default
        
        completion(.response(result))
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
        if let tagResourceSyncOverride = tagResourceSyncOverride {
            return try tagResourceSyncOverride(input)
        }

        return TagResourceResponse.__default
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
        if let testAuthorizationAsyncOverride = testAuthorizationAsyncOverride {
            return try testAuthorizationAsyncOverride(input, completion)
        }

        let result = TestAuthorizationResponse.__default
        
        completion(.response(result))
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
        if let testAuthorizationSyncOverride = testAuthorizationSyncOverride {
            return try testAuthorizationSyncOverride(input)
        }

        return TestAuthorizationResponse.__default
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
        if let testInvokeAuthorizerAsyncOverride = testInvokeAuthorizerAsyncOverride {
            return try testInvokeAuthorizerAsyncOverride(input, completion)
        }

        let result = TestInvokeAuthorizerResponse.__default
        
        completion(.response(result))
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
        if let testInvokeAuthorizerSyncOverride = testInvokeAuthorizerSyncOverride {
            return try testInvokeAuthorizerSyncOverride(input)
        }

        return TestInvokeAuthorizerResponse.__default
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
        if let transferCertificateAsyncOverride = transferCertificateAsyncOverride {
            return try transferCertificateAsyncOverride(input, completion)
        }

        let result = TransferCertificateResponse.__default
        
        completion(.response(result))
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
        if let transferCertificateSyncOverride = transferCertificateSyncOverride {
            return try transferCertificateSyncOverride(input)
        }

        return TransferCertificateResponse.__default
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
        if let untagResourceAsyncOverride = untagResourceAsyncOverride {
            return try untagResourceAsyncOverride(input, completion)
        }

        let result = UntagResourceResponse.__default
        
        completion(.response(result))
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
        if let untagResourceSyncOverride = untagResourceSyncOverride {
            return try untagResourceSyncOverride(input)
        }

        return UntagResourceResponse.__default
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
        if let updateAccountAuditConfigurationAsyncOverride = updateAccountAuditConfigurationAsyncOverride {
            return try updateAccountAuditConfigurationAsyncOverride(input, completion)
        }

        let result = UpdateAccountAuditConfigurationResponse.__default
        
        completion(.response(result))
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
        if let updateAccountAuditConfigurationSyncOverride = updateAccountAuditConfigurationSyncOverride {
            return try updateAccountAuditConfigurationSyncOverride(input)
        }

        return UpdateAccountAuditConfigurationResponse.__default
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
        if let updateAuthorizerAsyncOverride = updateAuthorizerAsyncOverride {
            return try updateAuthorizerAsyncOverride(input, completion)
        }

        let result = UpdateAuthorizerResponse.__default
        
        completion(.response(result))
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
        if let updateAuthorizerSyncOverride = updateAuthorizerSyncOverride {
            return try updateAuthorizerSyncOverride(input)
        }

        return UpdateAuthorizerResponse.__default
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
        if let updateBillingGroupAsyncOverride = updateBillingGroupAsyncOverride {
            return try updateBillingGroupAsyncOverride(input, completion)
        }

        let result = UpdateBillingGroupResponse.__default
        
        completion(.response(result))
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
        if let updateBillingGroupSyncOverride = updateBillingGroupSyncOverride {
            return try updateBillingGroupSyncOverride(input)
        }

        return UpdateBillingGroupResponse.__default
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
        if let updateCACertificateAsyncOverride = updateCACertificateAsyncOverride {
            return try updateCACertificateAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the UpdateCACertificate operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateCACertificateRequest object being passed to this operation.
     - Throws: internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func updateCACertificateSync(input: IotModel.UpdateCACertificateRequest) throws {
        if let updateCACertificateSyncOverride = updateCACertificateSyncOverride {
            return try updateCACertificateSyncOverride(input)
        }

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
        if let updateCertificateAsyncOverride = updateCertificateAsyncOverride {
            return try updateCertificateAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the UpdateCertificate operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateCertificateRequest object being passed to this operation.
     - Throws: certificateState, internalFailure, invalidRequest, resourceNotFound, serviceUnavailable, throttling, unauthorized.
     */
    public func updateCertificateSync(input: IotModel.UpdateCertificateRequest) throws {
        if let updateCertificateSyncOverride = updateCertificateSyncOverride {
            return try updateCertificateSyncOverride(input)
        }

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
        if let updateDynamicThingGroupAsyncOverride = updateDynamicThingGroupAsyncOverride {
            return try updateDynamicThingGroupAsyncOverride(input, completion)
        }

        let result = UpdateDynamicThingGroupResponse.__default
        
        completion(.response(result))
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
        if let updateDynamicThingGroupSyncOverride = updateDynamicThingGroupSyncOverride {
            return try updateDynamicThingGroupSyncOverride(input)
        }

        return UpdateDynamicThingGroupResponse.__default
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
        if let updateEventConfigurationsAsyncOverride = updateEventConfigurationsAsyncOverride {
            return try updateEventConfigurationsAsyncOverride(input, completion)
        }

        let result = UpdateEventConfigurationsResponse.__default
        
        completion(.response(result))
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
        if let updateEventConfigurationsSyncOverride = updateEventConfigurationsSyncOverride {
            return try updateEventConfigurationsSyncOverride(input)
        }

        return UpdateEventConfigurationsResponse.__default
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
        if let updateIndexingConfigurationAsyncOverride = updateIndexingConfigurationAsyncOverride {
            return try updateIndexingConfigurationAsyncOverride(input, completion)
        }

        let result = UpdateIndexingConfigurationResponse.__default
        
        completion(.response(result))
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
        if let updateIndexingConfigurationSyncOverride = updateIndexingConfigurationSyncOverride {
            return try updateIndexingConfigurationSyncOverride(input)
        }

        return UpdateIndexingConfigurationResponse.__default
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
        if let updateJobAsyncOverride = updateJobAsyncOverride {
            return try updateJobAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the UpdateJob operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateJobRequest object being passed to this operation.
     - Throws: invalidRequest, resourceNotFound, serviceUnavailable, throttling.
     */
    public func updateJobSync(input: IotModel.UpdateJobRequest) throws {
        if let updateJobSyncOverride = updateJobSyncOverride {
            return try updateJobSyncOverride(input)
        }

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
        if let updateMitigationActionAsyncOverride = updateMitigationActionAsyncOverride {
            return try updateMitigationActionAsyncOverride(input, completion)
        }

        let result = UpdateMitigationActionResponse.__default
        
        completion(.response(result))
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
        if let updateMitigationActionSyncOverride = updateMitigationActionSyncOverride {
            return try updateMitigationActionSyncOverride(input)
        }

        return UpdateMitigationActionResponse.__default
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
        if let updateRoleAliasAsyncOverride = updateRoleAliasAsyncOverride {
            return try updateRoleAliasAsyncOverride(input, completion)
        }

        let result = UpdateRoleAliasResponse.__default
        
        completion(.response(result))
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
        if let updateRoleAliasSyncOverride = updateRoleAliasSyncOverride {
            return try updateRoleAliasSyncOverride(input)
        }

        return UpdateRoleAliasResponse.__default
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
        if let updateScheduledAuditAsyncOverride = updateScheduledAuditAsyncOverride {
            return try updateScheduledAuditAsyncOverride(input, completion)
        }

        let result = UpdateScheduledAuditResponse.__default
        
        completion(.response(result))
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
        if let updateScheduledAuditSyncOverride = updateScheduledAuditSyncOverride {
            return try updateScheduledAuditSyncOverride(input)
        }

        return UpdateScheduledAuditResponse.__default
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
        if let updateSecurityProfileAsyncOverride = updateSecurityProfileAsyncOverride {
            return try updateSecurityProfileAsyncOverride(input, completion)
        }

        let result = UpdateSecurityProfileResponse.__default
        
        completion(.response(result))
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
        if let updateSecurityProfileSyncOverride = updateSecurityProfileSyncOverride {
            return try updateSecurityProfileSyncOverride(input)
        }

        return UpdateSecurityProfileResponse.__default
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
        if let updateStreamAsyncOverride = updateStreamAsyncOverride {
            return try updateStreamAsyncOverride(input, completion)
        }

        let result = UpdateStreamResponse.__default
        
        completion(.response(result))
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
        if let updateStreamSyncOverride = updateStreamSyncOverride {
            return try updateStreamSyncOverride(input)
        }

        return UpdateStreamResponse.__default
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
        if let updateThingAsyncOverride = updateThingAsyncOverride {
            return try updateThingAsyncOverride(input, completion)
        }

        let result = UpdateThingResponse.__default
        
        completion(.response(result))
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
        if let updateThingSyncOverride = updateThingSyncOverride {
            return try updateThingSyncOverride(input)
        }

        return UpdateThingResponse.__default
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
        if let updateThingGroupAsyncOverride = updateThingGroupAsyncOverride {
            return try updateThingGroupAsyncOverride(input, completion)
        }

        let result = UpdateThingGroupResponse.__default
        
        completion(.response(result))
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
        if let updateThingGroupSyncOverride = updateThingGroupSyncOverride {
            return try updateThingGroupSyncOverride(input)
        }

        return UpdateThingGroupResponse.__default
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
        if let updateThingGroupsForThingAsyncOverride = updateThingGroupsForThingAsyncOverride {
            return try updateThingGroupsForThingAsyncOverride(input, completion)
        }

        let result = UpdateThingGroupsForThingResponse.__default
        
        completion(.response(result))
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
        if let updateThingGroupsForThingSyncOverride = updateThingGroupsForThingSyncOverride {
            return try updateThingGroupsForThingSyncOverride(input)
        }

        return UpdateThingGroupsForThingResponse.__default
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
        if let validateSecurityProfileBehaviorsAsyncOverride = validateSecurityProfileBehaviorsAsyncOverride {
            return try validateSecurityProfileBehaviorsAsyncOverride(input, completion)
        }

        let result = ValidateSecurityProfileBehaviorsResponse.__default
        
        completion(.response(result))
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
        if let validateSecurityProfileBehaviorsSyncOverride = validateSecurityProfileBehaviorsSyncOverride {
            return try validateSecurityProfileBehaviorsSyncOverride(input)
        }

        return ValidateSecurityProfileBehaviorsResponse.__default
    }
}
