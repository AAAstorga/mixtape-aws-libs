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
// IotOperationsClientInput.swift
// IotClient
//

import Foundation
import SmokeHTTPClient
import IotModel

/**
 Type to handle the input to the AcceptCertificateTransfer operation in a HTTP client.
 */
public struct AcceptCertificateTransferOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: AcceptCertificateTransferOperationInputQuery?
    public let pathEncodable: AcceptCertificateTransferOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: AcceptCertificateTransferRequest) {
        self.queryEncodable = encodable.asIotModelAcceptCertificateTransferOperationInputQuery()
        self.pathEncodable = encodable.asIotModelAcceptCertificateTransferOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the AddThingToBillingGroup operation in a HTTP client.
 */
public typealias AddThingToBillingGroupOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the AddThingToThingGroup operation in a HTTP client.
 */
public typealias AddThingToThingGroupOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the AssociateTargetsWithJob operation in a HTTP client.
 */
public struct AssociateTargetsWithJobOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: AssociateTargetsWithJobOperationInputPath?
    public let bodyEncodable: AssociateTargetsWithJobOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: AssociateTargetsWithJobRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelAssociateTargetsWithJobOperationInputPath()
        self.bodyEncodable = encodable.asIotModelAssociateTargetsWithJobOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the AttachPolicy operation in a HTTP client.
 */
public struct AttachPolicyOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: AttachPolicyOperationInputPath?
    public let bodyEncodable: AttachPolicyOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: AttachPolicyRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelAttachPolicyOperationInputPath()
        self.bodyEncodable = encodable.asIotModelAttachPolicyOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the AttachPrincipalPolicy operation in a HTTP client.
 */
public struct AttachPrincipalPolicyOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: AttachPrincipalPolicyOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: AttachPrincipalPolicyOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: AttachPrincipalPolicyRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelAttachPrincipalPolicyOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asIotModelAttachPrincipalPolicyOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the AttachSecurityProfile operation in a HTTP client.
 */
public struct AttachSecurityProfileOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: AttachSecurityProfileOperationInputQuery?
    public let pathEncodable: AttachSecurityProfileOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: AttachSecurityProfileRequest) {
        self.queryEncodable = encodable.asIotModelAttachSecurityProfileOperationInputQuery()
        self.pathEncodable = encodable.asIotModelAttachSecurityProfileOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the AttachThingPrincipal operation in a HTTP client.
 */
public struct AttachThingPrincipalOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: AttachThingPrincipalOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: AttachThingPrincipalOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: AttachThingPrincipalRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelAttachThingPrincipalOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asIotModelAttachThingPrincipalOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the CancelAuditMitigationActionsTask operation in a HTTP client.
 */
public struct CancelAuditMitigationActionsTaskOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: CancelAuditMitigationActionsTaskOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: CancelAuditMitigationActionsTaskRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelCancelAuditMitigationActionsTaskOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the CancelAuditTask operation in a HTTP client.
 */
public struct CancelAuditTaskOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: CancelAuditTaskOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: CancelAuditTaskRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelCancelAuditTaskOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the CancelCertificateTransfer operation in a HTTP client.
 */
public struct CancelCertificateTransferOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: CancelCertificateTransferOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: CancelCertificateTransferRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelCancelCertificateTransferOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the CancelJob operation in a HTTP client.
 */
public struct CancelJobOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: CancelJobOperationInputQuery?
    public let pathEncodable: CancelJobOperationInputPath?
    public let bodyEncodable: CancelJobOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: CancelJobRequest) {
        self.queryEncodable = encodable.asIotModelCancelJobOperationInputQuery()
        self.pathEncodable = encodable.asIotModelCancelJobOperationInputPath()
        self.bodyEncodable = encodable.asIotModelCancelJobOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the CancelJobExecution operation in a HTTP client.
 */
public struct CancelJobExecutionOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: CancelJobExecutionOperationInputQuery?
    public let pathEncodable: CancelJobExecutionOperationInputPath?
    public let bodyEncodable: CancelJobExecutionOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: CancelJobExecutionRequest) {
        self.queryEncodable = encodable.asIotModelCancelJobExecutionOperationInputQuery()
        self.pathEncodable = encodable.asIotModelCancelJobExecutionOperationInputPath()
        self.bodyEncodable = encodable.asIotModelCancelJobExecutionOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ClearDefaultAuthorizer operation in a HTTP client.
 */
public typealias ClearDefaultAuthorizerOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the CreateAuthorizer operation in a HTTP client.
 */
public struct CreateAuthorizerOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: CreateAuthorizerOperationInputPath?
    public let bodyEncodable: CreateAuthorizerOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: CreateAuthorizerRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelCreateAuthorizerOperationInputPath()
        self.bodyEncodable = encodable.asIotModelCreateAuthorizerOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the CreateBillingGroup operation in a HTTP client.
 */
public struct CreateBillingGroupOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: CreateBillingGroupOperationInputPath?
    public let bodyEncodable: CreateBillingGroupOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: CreateBillingGroupRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelCreateBillingGroupOperationInputPath()
        self.bodyEncodable = encodable.asIotModelCreateBillingGroupOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the CreateCertificateFromCsr operation in a HTTP client.
 */
public struct CreateCertificateFromCsrOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: CreateCertificateFromCsrOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: CreateCertificateFromCsrOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: CreateCertificateFromCsrRequest) {
        self.queryEncodable = encodable.asIotModelCreateCertificateFromCsrOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = encodable.asIotModelCreateCertificateFromCsrOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the CreateDynamicThingGroup operation in a HTTP client.
 */
public struct CreateDynamicThingGroupOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: CreateDynamicThingGroupOperationInputPath?
    public let bodyEncodable: CreateDynamicThingGroupOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: CreateDynamicThingGroupRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelCreateDynamicThingGroupOperationInputPath()
        self.bodyEncodable = encodable.asIotModelCreateDynamicThingGroupOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the CreateJob operation in a HTTP client.
 */
public struct CreateJobOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: CreateJobOperationInputPath?
    public let bodyEncodable: CreateJobOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: CreateJobRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelCreateJobOperationInputPath()
        self.bodyEncodable = encodable.asIotModelCreateJobOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the CreateKeysAndCertificate operation in a HTTP client.
 */
public struct CreateKeysAndCertificateOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: CreateKeysAndCertificateOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: CreateKeysAndCertificateRequest) {
        self.queryEncodable = encodable.asIotModelCreateKeysAndCertificateOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the CreateMitigationAction operation in a HTTP client.
 */
public struct CreateMitigationActionOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: CreateMitigationActionOperationInputPath?
    public let bodyEncodable: CreateMitigationActionOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: CreateMitigationActionRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelCreateMitigationActionOperationInputPath()
        self.bodyEncodable = encodable.asIotModelCreateMitigationActionOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the CreateOTAUpdate operation in a HTTP client.
 */
public struct CreateOTAUpdateOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: CreateOTAUpdateOperationInputPath?
    public let bodyEncodable: CreateOTAUpdateOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: CreateOTAUpdateRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelCreateOTAUpdateOperationInputPath()
        self.bodyEncodable = encodable.asIotModelCreateOTAUpdateOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the CreatePolicy operation in a HTTP client.
 */
public struct CreatePolicyOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: CreatePolicyOperationInputPath?
    public let bodyEncodable: CreatePolicyOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: CreatePolicyRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelCreatePolicyOperationInputPath()
        self.bodyEncodable = encodable.asIotModelCreatePolicyOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the CreatePolicyVersion operation in a HTTP client.
 */
public struct CreatePolicyVersionOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: CreatePolicyVersionOperationInputQuery?
    public let pathEncodable: CreatePolicyVersionOperationInputPath?
    public let bodyEncodable: CreatePolicyVersionOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: CreatePolicyVersionRequest) {
        self.queryEncodable = encodable.asIotModelCreatePolicyVersionOperationInputQuery()
        self.pathEncodable = encodable.asIotModelCreatePolicyVersionOperationInputPath()
        self.bodyEncodable = encodable.asIotModelCreatePolicyVersionOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the CreateRoleAlias operation in a HTTP client.
 */
public struct CreateRoleAliasOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: CreateRoleAliasOperationInputPath?
    public let bodyEncodable: CreateRoleAliasOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: CreateRoleAliasRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelCreateRoleAliasOperationInputPath()
        self.bodyEncodable = encodable.asIotModelCreateRoleAliasOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the CreateScheduledAudit operation in a HTTP client.
 */
public struct CreateScheduledAuditOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: CreateScheduledAuditOperationInputPath?
    public let bodyEncodable: CreateScheduledAuditOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: CreateScheduledAuditRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelCreateScheduledAuditOperationInputPath()
        self.bodyEncodable = encodable.asIotModelCreateScheduledAuditOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the CreateSecurityProfile operation in a HTTP client.
 */
public struct CreateSecurityProfileOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: CreateSecurityProfileOperationInputPath?
    public let bodyEncodable: CreateSecurityProfileOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: CreateSecurityProfileRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelCreateSecurityProfileOperationInputPath()
        self.bodyEncodable = encodable.asIotModelCreateSecurityProfileOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the CreateStream operation in a HTTP client.
 */
public struct CreateStreamOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: CreateStreamOperationInputPath?
    public let bodyEncodable: CreateStreamOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: CreateStreamRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelCreateStreamOperationInputPath()
        self.bodyEncodable = encodable.asIotModelCreateStreamOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the CreateThing operation in a HTTP client.
 */
public struct CreateThingOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: CreateThingOperationInputPath?
    public let bodyEncodable: CreateThingOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: CreateThingRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelCreateThingOperationInputPath()
        self.bodyEncodable = encodable.asIotModelCreateThingOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the CreateThingGroup operation in a HTTP client.
 */
public struct CreateThingGroupOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: CreateThingGroupOperationInputPath?
    public let bodyEncodable: CreateThingGroupOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: CreateThingGroupRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelCreateThingGroupOperationInputPath()
        self.bodyEncodable = encodable.asIotModelCreateThingGroupOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the CreateThingType operation in a HTTP client.
 */
public struct CreateThingTypeOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: CreateThingTypeOperationInputPath?
    public let bodyEncodable: CreateThingTypeOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: CreateThingTypeRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelCreateThingTypeOperationInputPath()
        self.bodyEncodable = encodable.asIotModelCreateThingTypeOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the CreateTopicRule operation in a HTTP client.
 */
public struct CreateTopicRuleOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: CreateTopicRuleOperationInputPath?
    public let bodyEncodable: TopicRulePayload?
    public let additionalHeadersEncodable: CreateTopicRuleOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: CreateTopicRuleRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelCreateTopicRuleOperationInputPath()
        self.bodyEncodable = encodable.topicRulePayload
        self.additionalHeadersEncodable = encodable.asIotModelCreateTopicRuleOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteAccountAuditConfiguration operation in a HTTP client.
 */
public struct DeleteAccountAuditConfigurationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: DeleteAccountAuditConfigurationOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteAccountAuditConfigurationRequest) {
        self.queryEncodable = encodable.asIotModelDeleteAccountAuditConfigurationOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteAuthorizer operation in a HTTP client.
 */
public struct DeleteAuthorizerOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DeleteAuthorizerOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteAuthorizerRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDeleteAuthorizerOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteBillingGroup operation in a HTTP client.
 */
public struct DeleteBillingGroupOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: DeleteBillingGroupOperationInputQuery?
    public let pathEncodable: DeleteBillingGroupOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteBillingGroupRequest) {
        self.queryEncodable = encodable.asIotModelDeleteBillingGroupOperationInputQuery()
        self.pathEncodable = encodable.asIotModelDeleteBillingGroupOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteCACertificate operation in a HTTP client.
 */
public struct DeleteCACertificateOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DeleteCACertificateOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteCACertificateRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDeleteCACertificateOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteCertificate operation in a HTTP client.
 */
public struct DeleteCertificateOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: DeleteCertificateOperationInputQuery?
    public let pathEncodable: DeleteCertificateOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteCertificateRequest) {
        self.queryEncodable = encodable.asIotModelDeleteCertificateOperationInputQuery()
        self.pathEncodable = encodable.asIotModelDeleteCertificateOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteDynamicThingGroup operation in a HTTP client.
 */
public struct DeleteDynamicThingGroupOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: DeleteDynamicThingGroupOperationInputQuery?
    public let pathEncodable: DeleteDynamicThingGroupOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteDynamicThingGroupRequest) {
        self.queryEncodable = encodable.asIotModelDeleteDynamicThingGroupOperationInputQuery()
        self.pathEncodable = encodable.asIotModelDeleteDynamicThingGroupOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteJob operation in a HTTP client.
 */
public struct DeleteJobOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: DeleteJobOperationInputQuery?
    public let pathEncodable: DeleteJobOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteJobRequest) {
        self.queryEncodable = encodable.asIotModelDeleteJobOperationInputQuery()
        self.pathEncodable = encodable.asIotModelDeleteJobOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteJobExecution operation in a HTTP client.
 */
public struct DeleteJobExecutionOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: DeleteJobExecutionOperationInputQuery?
    public let pathEncodable: DeleteJobExecutionOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteJobExecutionRequest) {
        self.queryEncodable = encodable.asIotModelDeleteJobExecutionOperationInputQuery()
        self.pathEncodable = encodable.asIotModelDeleteJobExecutionOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteMitigationAction operation in a HTTP client.
 */
public struct DeleteMitigationActionOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DeleteMitigationActionOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteMitigationActionRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDeleteMitigationActionOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteOTAUpdate operation in a HTTP client.
 */
public struct DeleteOTAUpdateOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: DeleteOTAUpdateOperationInputQuery?
    public let pathEncodable: DeleteOTAUpdateOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteOTAUpdateRequest) {
        self.queryEncodable = encodable.asIotModelDeleteOTAUpdateOperationInputQuery()
        self.pathEncodable = encodable.asIotModelDeleteOTAUpdateOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeletePolicy operation in a HTTP client.
 */
public struct DeletePolicyOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DeletePolicyOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeletePolicyRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDeletePolicyOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeletePolicyVersion operation in a HTTP client.
 */
public struct DeletePolicyVersionOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DeletePolicyVersionOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeletePolicyVersionRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDeletePolicyVersionOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteRegistrationCode operation in a HTTP client.
 */
public typealias DeleteRegistrationCodeOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeleteRoleAlias operation in a HTTP client.
 */
public struct DeleteRoleAliasOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DeleteRoleAliasOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteRoleAliasRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDeleteRoleAliasOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteScheduledAudit operation in a HTTP client.
 */
public struct DeleteScheduledAuditOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DeleteScheduledAuditOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteScheduledAuditRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDeleteScheduledAuditOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteSecurityProfile operation in a HTTP client.
 */
public struct DeleteSecurityProfileOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: DeleteSecurityProfileOperationInputQuery?
    public let pathEncodable: DeleteSecurityProfileOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteSecurityProfileRequest) {
        self.queryEncodable = encodable.asIotModelDeleteSecurityProfileOperationInputQuery()
        self.pathEncodable = encodable.asIotModelDeleteSecurityProfileOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteStream operation in a HTTP client.
 */
public struct DeleteStreamOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DeleteStreamOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteStreamRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDeleteStreamOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteThing operation in a HTTP client.
 */
public struct DeleteThingOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: DeleteThingOperationInputQuery?
    public let pathEncodable: DeleteThingOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteThingRequest) {
        self.queryEncodable = encodable.asIotModelDeleteThingOperationInputQuery()
        self.pathEncodable = encodable.asIotModelDeleteThingOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteThingGroup operation in a HTTP client.
 */
public struct DeleteThingGroupOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: DeleteThingGroupOperationInputQuery?
    public let pathEncodable: DeleteThingGroupOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteThingGroupRequest) {
        self.queryEncodable = encodable.asIotModelDeleteThingGroupOperationInputQuery()
        self.pathEncodable = encodable.asIotModelDeleteThingGroupOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteThingType operation in a HTTP client.
 */
public struct DeleteThingTypeOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DeleteThingTypeOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteThingTypeRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDeleteThingTypeOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteTopicRule operation in a HTTP client.
 */
public struct DeleteTopicRuleOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DeleteTopicRuleOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteTopicRuleRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDeleteTopicRuleOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteV2LoggingLevel operation in a HTTP client.
 */
public struct DeleteV2LoggingLevelOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: DeleteV2LoggingLevelOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteV2LoggingLevelRequest) {
        self.queryEncodable = encodable.asIotModelDeleteV2LoggingLevelOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeprecateThingType operation in a HTTP client.
 */
public struct DeprecateThingTypeOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DeprecateThingTypeOperationInputPath?
    public let bodyEncodable: DeprecateThingTypeOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeprecateThingTypeRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDeprecateThingTypeOperationInputPath()
        self.bodyEncodable = encodable.asIotModelDeprecateThingTypeOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DescribeAccountAuditConfiguration operation in a HTTP client.
 */
public typealias DescribeAccountAuditConfigurationOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeAuditFinding operation in a HTTP client.
 */
public struct DescribeAuditFindingOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DescribeAuditFindingOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DescribeAuditFindingRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDescribeAuditFindingOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DescribeAuditMitigationActionsTask operation in a HTTP client.
 */
public struct DescribeAuditMitigationActionsTaskOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DescribeAuditMitigationActionsTaskOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DescribeAuditMitigationActionsTaskRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDescribeAuditMitigationActionsTaskOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DescribeAuditTask operation in a HTTP client.
 */
public struct DescribeAuditTaskOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DescribeAuditTaskOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DescribeAuditTaskRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDescribeAuditTaskOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DescribeAuthorizer operation in a HTTP client.
 */
public struct DescribeAuthorizerOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DescribeAuthorizerOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DescribeAuthorizerRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDescribeAuthorizerOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DescribeBillingGroup operation in a HTTP client.
 */
public struct DescribeBillingGroupOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DescribeBillingGroupOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DescribeBillingGroupRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDescribeBillingGroupOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DescribeCACertificate operation in a HTTP client.
 */
public struct DescribeCACertificateOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DescribeCACertificateOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DescribeCACertificateRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDescribeCACertificateOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DescribeCertificate operation in a HTTP client.
 */
public struct DescribeCertificateOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DescribeCertificateOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DescribeCertificateRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDescribeCertificateOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DescribeDefaultAuthorizer operation in a HTTP client.
 */
public typealias DescribeDefaultAuthorizerOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeEndpoint operation in a HTTP client.
 */
public struct DescribeEndpointOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: DescribeEndpointOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DescribeEndpointRequest) {
        self.queryEncodable = encodable.asIotModelDescribeEndpointOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DescribeEventConfigurations operation in a HTTP client.
 */
public typealias DescribeEventConfigurationsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeIndex operation in a HTTP client.
 */
public struct DescribeIndexOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DescribeIndexOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DescribeIndexRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDescribeIndexOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DescribeJob operation in a HTTP client.
 */
public struct DescribeJobOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DescribeJobOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DescribeJobRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDescribeJobOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DescribeJobExecution operation in a HTTP client.
 */
public struct DescribeJobExecutionOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: DescribeJobExecutionOperationInputQuery?
    public let pathEncodable: DescribeJobExecutionOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DescribeJobExecutionRequest) {
        self.queryEncodable = encodable.asIotModelDescribeJobExecutionOperationInputQuery()
        self.pathEncodable = encodable.asIotModelDescribeJobExecutionOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DescribeMitigationAction operation in a HTTP client.
 */
public struct DescribeMitigationActionOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DescribeMitigationActionOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DescribeMitigationActionRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDescribeMitigationActionOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DescribeRoleAlias operation in a HTTP client.
 */
public struct DescribeRoleAliasOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DescribeRoleAliasOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DescribeRoleAliasRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDescribeRoleAliasOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DescribeScheduledAudit operation in a HTTP client.
 */
public struct DescribeScheduledAuditOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DescribeScheduledAuditOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DescribeScheduledAuditRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDescribeScheduledAuditOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DescribeSecurityProfile operation in a HTTP client.
 */
public struct DescribeSecurityProfileOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DescribeSecurityProfileOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DescribeSecurityProfileRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDescribeSecurityProfileOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DescribeStream operation in a HTTP client.
 */
public struct DescribeStreamOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DescribeStreamOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DescribeStreamRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDescribeStreamOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DescribeThing operation in a HTTP client.
 */
public struct DescribeThingOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DescribeThingOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DescribeThingRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDescribeThingOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DescribeThingGroup operation in a HTTP client.
 */
public struct DescribeThingGroupOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DescribeThingGroupOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DescribeThingGroupRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDescribeThingGroupOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DescribeThingRegistrationTask operation in a HTTP client.
 */
public struct DescribeThingRegistrationTaskOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DescribeThingRegistrationTaskOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DescribeThingRegistrationTaskRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDescribeThingRegistrationTaskOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DescribeThingType operation in a HTTP client.
 */
public struct DescribeThingTypeOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DescribeThingTypeOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DescribeThingTypeRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDescribeThingTypeOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DetachPolicy operation in a HTTP client.
 */
public struct DetachPolicyOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DetachPolicyOperationInputPath?
    public let bodyEncodable: DetachPolicyOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DetachPolicyRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDetachPolicyOperationInputPath()
        self.bodyEncodable = encodable.asIotModelDetachPolicyOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DetachPrincipalPolicy operation in a HTTP client.
 */
public struct DetachPrincipalPolicyOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DetachPrincipalPolicyOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: DetachPrincipalPolicyOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: DetachPrincipalPolicyRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDetachPrincipalPolicyOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asIotModelDetachPrincipalPolicyOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DetachSecurityProfile operation in a HTTP client.
 */
public struct DetachSecurityProfileOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: DetachSecurityProfileOperationInputQuery?
    public let pathEncodable: DetachSecurityProfileOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DetachSecurityProfileRequest) {
        self.queryEncodable = encodable.asIotModelDetachSecurityProfileOperationInputQuery()
        self.pathEncodable = encodable.asIotModelDetachSecurityProfileOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DetachThingPrincipal operation in a HTTP client.
 */
public struct DetachThingPrincipalOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DetachThingPrincipalOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: DetachThingPrincipalOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: DetachThingPrincipalRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDetachThingPrincipalOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asIotModelDetachThingPrincipalOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DisableTopicRule operation in a HTTP client.
 */
public struct DisableTopicRuleOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DisableTopicRuleOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DisableTopicRuleRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelDisableTopicRuleOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the EnableTopicRule operation in a HTTP client.
 */
public struct EnableTopicRuleOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: EnableTopicRuleOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: EnableTopicRuleRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelEnableTopicRuleOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetEffectivePolicies operation in a HTTP client.
 */
public struct GetEffectivePoliciesOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: GetEffectivePoliciesOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: GetEffectivePoliciesOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: GetEffectivePoliciesRequest) {
        self.queryEncodable = encodable.asIotModelGetEffectivePoliciesOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = encodable.asIotModelGetEffectivePoliciesOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetIndexingConfiguration operation in a HTTP client.
 */
public typealias GetIndexingConfigurationOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the GetJobDocument operation in a HTTP client.
 */
public struct GetJobDocumentOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetJobDocumentOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: GetJobDocumentRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelGetJobDocumentOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetLoggingOptions operation in a HTTP client.
 */
public typealias GetLoggingOptionsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the GetOTAUpdate operation in a HTTP client.
 */
public struct GetOTAUpdateOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetOTAUpdateOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: GetOTAUpdateRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelGetOTAUpdateOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetPolicy operation in a HTTP client.
 */
public struct GetPolicyOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetPolicyOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: GetPolicyRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelGetPolicyOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetPolicyVersion operation in a HTTP client.
 */
public struct GetPolicyVersionOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetPolicyVersionOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: GetPolicyVersionRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelGetPolicyVersionOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetRegistrationCode operation in a HTTP client.
 */
public typealias GetRegistrationCodeOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the GetStatistics operation in a HTTP client.
 */
public typealias GetStatisticsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the GetTopicRule operation in a HTTP client.
 */
public struct GetTopicRuleOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetTopicRuleOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: GetTopicRuleRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelGetTopicRuleOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetV2LoggingOptions operation in a HTTP client.
 */
public typealias GetV2LoggingOptionsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListActiveViolations operation in a HTTP client.
 */
public struct ListActiveViolationsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListActiveViolationsOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListActiveViolationsRequest) {
        self.queryEncodable = encodable.asIotModelListActiveViolationsOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListAttachedPolicies operation in a HTTP client.
 */
public struct ListAttachedPoliciesOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListAttachedPoliciesOperationInputQuery?
    public let pathEncodable: ListAttachedPoliciesOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListAttachedPoliciesRequest) {
        self.queryEncodable = encodable.asIotModelListAttachedPoliciesOperationInputQuery()
        self.pathEncodable = encodable.asIotModelListAttachedPoliciesOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListAuditFindings operation in a HTTP client.
 */
public typealias ListAuditFindingsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListAuditMitigationActionsExecutions operation in a HTTP client.
 */
public struct ListAuditMitigationActionsExecutionsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListAuditMitigationActionsExecutionsOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListAuditMitigationActionsExecutionsRequest) {
        self.queryEncodable = encodable.asIotModelListAuditMitigationActionsExecutionsOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListAuditMitigationActionsTasks operation in a HTTP client.
 */
public struct ListAuditMitigationActionsTasksOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListAuditMitigationActionsTasksOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListAuditMitigationActionsTasksRequest) {
        self.queryEncodable = encodable.asIotModelListAuditMitigationActionsTasksOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListAuditTasks operation in a HTTP client.
 */
public struct ListAuditTasksOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListAuditTasksOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListAuditTasksRequest) {
        self.queryEncodable = encodable.asIotModelListAuditTasksOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListAuthorizers operation in a HTTP client.
 */
public struct ListAuthorizersOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListAuthorizersOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListAuthorizersRequest) {
        self.queryEncodable = encodable.asIotModelListAuthorizersOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListBillingGroups operation in a HTTP client.
 */
public struct ListBillingGroupsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListBillingGroupsOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListBillingGroupsRequest) {
        self.queryEncodable = encodable.asIotModelListBillingGroupsOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListCACertificates operation in a HTTP client.
 */
public struct ListCACertificatesOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListCACertificatesOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListCACertificatesRequest) {
        self.queryEncodable = encodable.asIotModelListCACertificatesOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListCertificates operation in a HTTP client.
 */
public struct ListCertificatesOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListCertificatesOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListCertificatesRequest) {
        self.queryEncodable = encodable.asIotModelListCertificatesOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListCertificatesByCA operation in a HTTP client.
 */
public struct ListCertificatesByCAOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListCertificatesByCAOperationInputQuery?
    public let pathEncodable: ListCertificatesByCAOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListCertificatesByCARequest) {
        self.queryEncodable = encodable.asIotModelListCertificatesByCAOperationInputQuery()
        self.pathEncodable = encodable.asIotModelListCertificatesByCAOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListIndices operation in a HTTP client.
 */
public struct ListIndicesOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListIndicesOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListIndicesRequest) {
        self.queryEncodable = encodable.asIotModelListIndicesOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListJobExecutionsForJob operation in a HTTP client.
 */
public struct ListJobExecutionsForJobOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListJobExecutionsForJobOperationInputQuery?
    public let pathEncodable: ListJobExecutionsForJobOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListJobExecutionsForJobRequest) {
        self.queryEncodable = encodable.asIotModelListJobExecutionsForJobOperationInputQuery()
        self.pathEncodable = encodable.asIotModelListJobExecutionsForJobOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListJobExecutionsForThing operation in a HTTP client.
 */
public struct ListJobExecutionsForThingOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListJobExecutionsForThingOperationInputQuery?
    public let pathEncodable: ListJobExecutionsForThingOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListJobExecutionsForThingRequest) {
        self.queryEncodable = encodable.asIotModelListJobExecutionsForThingOperationInputQuery()
        self.pathEncodable = encodable.asIotModelListJobExecutionsForThingOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListJobs operation in a HTTP client.
 */
public struct ListJobsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListJobsOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListJobsRequest) {
        self.queryEncodable = encodable.asIotModelListJobsOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListMitigationActions operation in a HTTP client.
 */
public struct ListMitigationActionsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListMitigationActionsOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListMitigationActionsRequest) {
        self.queryEncodable = encodable.asIotModelListMitigationActionsOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListOTAUpdates operation in a HTTP client.
 */
public struct ListOTAUpdatesOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListOTAUpdatesOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListOTAUpdatesRequest) {
        self.queryEncodable = encodable.asIotModelListOTAUpdatesOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListOutgoingCertificates operation in a HTTP client.
 */
public struct ListOutgoingCertificatesOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListOutgoingCertificatesOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListOutgoingCertificatesRequest) {
        self.queryEncodable = encodable.asIotModelListOutgoingCertificatesOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListPolicies operation in a HTTP client.
 */
public struct ListPoliciesOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListPoliciesOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListPoliciesRequest) {
        self.queryEncodable = encodable.asIotModelListPoliciesOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListPolicyPrincipals operation in a HTTP client.
 */
public struct ListPolicyPrincipalsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListPolicyPrincipalsOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: ListPolicyPrincipalsOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: ListPolicyPrincipalsRequest) {
        self.queryEncodable = encodable.asIotModelListPolicyPrincipalsOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asIotModelListPolicyPrincipalsOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListPolicyVersions operation in a HTTP client.
 */
public struct ListPolicyVersionsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: ListPolicyVersionsOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListPolicyVersionsRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelListPolicyVersionsOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListPrincipalPolicies operation in a HTTP client.
 */
public struct ListPrincipalPoliciesOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListPrincipalPoliciesOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: ListPrincipalPoliciesOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: ListPrincipalPoliciesRequest) {
        self.queryEncodable = encodable.asIotModelListPrincipalPoliciesOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asIotModelListPrincipalPoliciesOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListPrincipalThings operation in a HTTP client.
 */
public struct ListPrincipalThingsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListPrincipalThingsOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: ListPrincipalThingsOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: ListPrincipalThingsRequest) {
        self.queryEncodable = encodable.asIotModelListPrincipalThingsOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asIotModelListPrincipalThingsOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListRoleAliases operation in a HTTP client.
 */
public struct ListRoleAliasesOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListRoleAliasesOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListRoleAliasesRequest) {
        self.queryEncodable = encodable.asIotModelListRoleAliasesOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListScheduledAudits operation in a HTTP client.
 */
public struct ListScheduledAuditsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListScheduledAuditsOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListScheduledAuditsRequest) {
        self.queryEncodable = encodable.asIotModelListScheduledAuditsOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListSecurityProfiles operation in a HTTP client.
 */
public struct ListSecurityProfilesOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListSecurityProfilesOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListSecurityProfilesRequest) {
        self.queryEncodable = encodable.asIotModelListSecurityProfilesOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListSecurityProfilesForTarget operation in a HTTP client.
 */
public struct ListSecurityProfilesForTargetOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListSecurityProfilesForTargetOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListSecurityProfilesForTargetRequest) {
        self.queryEncodable = encodable.asIotModelListSecurityProfilesForTargetOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListStreams operation in a HTTP client.
 */
public struct ListStreamsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListStreamsOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListStreamsRequest) {
        self.queryEncodable = encodable.asIotModelListStreamsOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListTagsForResource operation in a HTTP client.
 */
public struct ListTagsForResourceOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListTagsForResourceOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListTagsForResourceRequest) {
        self.queryEncodable = encodable.asIotModelListTagsForResourceOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListTargetsForPolicy operation in a HTTP client.
 */
public struct ListTargetsForPolicyOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListTargetsForPolicyOperationInputQuery?
    public let pathEncodable: ListTargetsForPolicyOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListTargetsForPolicyRequest) {
        self.queryEncodable = encodable.asIotModelListTargetsForPolicyOperationInputQuery()
        self.pathEncodable = encodable.asIotModelListTargetsForPolicyOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListTargetsForSecurityProfile operation in a HTTP client.
 */
public struct ListTargetsForSecurityProfileOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListTargetsForSecurityProfileOperationInputQuery?
    public let pathEncodable: ListTargetsForSecurityProfileOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListTargetsForSecurityProfileRequest) {
        self.queryEncodable = encodable.asIotModelListTargetsForSecurityProfileOperationInputQuery()
        self.pathEncodable = encodable.asIotModelListTargetsForSecurityProfileOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListThingGroups operation in a HTTP client.
 */
public struct ListThingGroupsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListThingGroupsOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListThingGroupsRequest) {
        self.queryEncodable = encodable.asIotModelListThingGroupsOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListThingGroupsForThing operation in a HTTP client.
 */
public struct ListThingGroupsForThingOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListThingGroupsForThingOperationInputQuery?
    public let pathEncodable: ListThingGroupsForThingOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListThingGroupsForThingRequest) {
        self.queryEncodable = encodable.asIotModelListThingGroupsForThingOperationInputQuery()
        self.pathEncodable = encodable.asIotModelListThingGroupsForThingOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListThingPrincipals operation in a HTTP client.
 */
public struct ListThingPrincipalsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: ListThingPrincipalsOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListThingPrincipalsRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelListThingPrincipalsOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListThingRegistrationTaskReports operation in a HTTP client.
 */
public struct ListThingRegistrationTaskReportsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListThingRegistrationTaskReportsOperationInputQuery?
    public let pathEncodable: ListThingRegistrationTaskReportsOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListThingRegistrationTaskReportsRequest) {
        self.queryEncodable = encodable.asIotModelListThingRegistrationTaskReportsOperationInputQuery()
        self.pathEncodable = encodable.asIotModelListThingRegistrationTaskReportsOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListThingRegistrationTasks operation in a HTTP client.
 */
public struct ListThingRegistrationTasksOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListThingRegistrationTasksOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListThingRegistrationTasksRequest) {
        self.queryEncodable = encodable.asIotModelListThingRegistrationTasksOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListThingTypes operation in a HTTP client.
 */
public struct ListThingTypesOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListThingTypesOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListThingTypesRequest) {
        self.queryEncodable = encodable.asIotModelListThingTypesOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListThings operation in a HTTP client.
 */
public struct ListThingsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListThingsOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListThingsRequest) {
        self.queryEncodable = encodable.asIotModelListThingsOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListThingsInBillingGroup operation in a HTTP client.
 */
public struct ListThingsInBillingGroupOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListThingsInBillingGroupOperationInputQuery?
    public let pathEncodable: ListThingsInBillingGroupOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListThingsInBillingGroupRequest) {
        self.queryEncodable = encodable.asIotModelListThingsInBillingGroupOperationInputQuery()
        self.pathEncodable = encodable.asIotModelListThingsInBillingGroupOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListThingsInThingGroup operation in a HTTP client.
 */
public struct ListThingsInThingGroupOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListThingsInThingGroupOperationInputQuery?
    public let pathEncodable: ListThingsInThingGroupOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListThingsInThingGroupRequest) {
        self.queryEncodable = encodable.asIotModelListThingsInThingGroupOperationInputQuery()
        self.pathEncodable = encodable.asIotModelListThingsInThingGroupOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListTopicRules operation in a HTTP client.
 */
public struct ListTopicRulesOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListTopicRulesOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListTopicRulesRequest) {
        self.queryEncodable = encodable.asIotModelListTopicRulesOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListV2LoggingLevels operation in a HTTP client.
 */
public struct ListV2LoggingLevelsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListV2LoggingLevelsOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListV2LoggingLevelsRequest) {
        self.queryEncodable = encodable.asIotModelListV2LoggingLevelsOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListViolationEvents operation in a HTTP client.
 */
public struct ListViolationEventsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListViolationEventsOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListViolationEventsRequest) {
        self.queryEncodable = encodable.asIotModelListViolationEventsOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the RegisterCACertificate operation in a HTTP client.
 */
public struct RegisterCACertificateOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: RegisterCACertificateOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: RegisterCACertificateOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: RegisterCACertificateRequest) {
        self.queryEncodable = encodable.asIotModelRegisterCACertificateOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = encodable.asIotModelRegisterCACertificateOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the RegisterCertificate operation in a HTTP client.
 */
public typealias RegisterCertificateOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the RegisterThing operation in a HTTP client.
 */
public typealias RegisterThingOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the RejectCertificateTransfer operation in a HTTP client.
 */
public struct RejectCertificateTransferOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: RejectCertificateTransferOperationInputPath?
    public let bodyEncodable: RejectCertificateTransferOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: RejectCertificateTransferRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelRejectCertificateTransferOperationInputPath()
        self.bodyEncodable = encodable.asIotModelRejectCertificateTransferOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the RemoveThingFromBillingGroup operation in a HTTP client.
 */
public typealias RemoveThingFromBillingGroupOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the RemoveThingFromThingGroup operation in a HTTP client.
 */
public typealias RemoveThingFromThingGroupOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ReplaceTopicRule operation in a HTTP client.
 */
public struct ReplaceTopicRuleOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: ReplaceTopicRuleOperationInputPath?
    public let bodyEncodable: TopicRulePayload?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ReplaceTopicRuleRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelReplaceTopicRuleOperationInputPath()
        self.bodyEncodable = encodable.topicRulePayload
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the SearchIndex operation in a HTTP client.
 */
public typealias SearchIndexOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the SetDefaultAuthorizer operation in a HTTP client.
 */
public typealias SetDefaultAuthorizerOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the SetDefaultPolicyVersion operation in a HTTP client.
 */
public struct SetDefaultPolicyVersionOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: SetDefaultPolicyVersionOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: SetDefaultPolicyVersionRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelSetDefaultPolicyVersionOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the SetLoggingOptions operation in a HTTP client.
 */
public typealias SetLoggingOptionsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the SetV2LoggingLevel operation in a HTTP client.
 */
public typealias SetV2LoggingLevelOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the SetV2LoggingOptions operation in a HTTP client.
 */
public typealias SetV2LoggingOptionsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the StartAuditMitigationActionsTask operation in a HTTP client.
 */
public struct StartAuditMitigationActionsTaskOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: StartAuditMitigationActionsTaskOperationInputPath?
    public let bodyEncodable: StartAuditMitigationActionsTaskOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: StartAuditMitigationActionsTaskRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelStartAuditMitigationActionsTaskOperationInputPath()
        self.bodyEncodable = encodable.asIotModelStartAuditMitigationActionsTaskOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the StartOnDemandAuditTask operation in a HTTP client.
 */
public typealias StartOnDemandAuditTaskOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the StartThingRegistrationTask operation in a HTTP client.
 */
public typealias StartThingRegistrationTaskOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the StopThingRegistrationTask operation in a HTTP client.
 */
public struct StopThingRegistrationTaskOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: StopThingRegistrationTaskOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: StopThingRegistrationTaskRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelStopThingRegistrationTaskOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the TagResource operation in a HTTP client.
 */
public typealias TagResourceOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the TestAuthorization operation in a HTTP client.
 */
public struct TestAuthorizationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: TestAuthorizationOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: TestAuthorizationOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: TestAuthorizationRequest) {
        self.queryEncodable = encodable.asIotModelTestAuthorizationOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = encodable.asIotModelTestAuthorizationOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the TestInvokeAuthorizer operation in a HTTP client.
 */
public struct TestInvokeAuthorizerOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: TestInvokeAuthorizerOperationInputPath?
    public let bodyEncodable: TestInvokeAuthorizerOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: TestInvokeAuthorizerRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelTestInvokeAuthorizerOperationInputPath()
        self.bodyEncodable = encodable.asIotModelTestInvokeAuthorizerOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the TransferCertificate operation in a HTTP client.
 */
public struct TransferCertificateOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: TransferCertificateOperationInputQuery?
    public let pathEncodable: TransferCertificateOperationInputPath?
    public let bodyEncodable: TransferCertificateOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: TransferCertificateRequest) {
        self.queryEncodable = encodable.asIotModelTransferCertificateOperationInputQuery()
        self.pathEncodable = encodable.asIotModelTransferCertificateOperationInputPath()
        self.bodyEncodable = encodable.asIotModelTransferCertificateOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the UntagResource operation in a HTTP client.
 */
public typealias UntagResourceOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UpdateAccountAuditConfiguration operation in a HTTP client.
 */
public typealias UpdateAccountAuditConfigurationOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UpdateAuthorizer operation in a HTTP client.
 */
public struct UpdateAuthorizerOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: UpdateAuthorizerOperationInputPath?
    public let bodyEncodable: UpdateAuthorizerOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: UpdateAuthorizerRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelUpdateAuthorizerOperationInputPath()
        self.bodyEncodable = encodable.asIotModelUpdateAuthorizerOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the UpdateBillingGroup operation in a HTTP client.
 */
public struct UpdateBillingGroupOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: UpdateBillingGroupOperationInputPath?
    public let bodyEncodable: UpdateBillingGroupOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: UpdateBillingGroupRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelUpdateBillingGroupOperationInputPath()
        self.bodyEncodable = encodable.asIotModelUpdateBillingGroupOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the UpdateCACertificate operation in a HTTP client.
 */
public struct UpdateCACertificateOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: UpdateCACertificateOperationInputQuery?
    public let pathEncodable: UpdateCACertificateOperationInputPath?
    public let bodyEncodable: UpdateCACertificateOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: UpdateCACertificateRequest) {
        self.queryEncodable = encodable.asIotModelUpdateCACertificateOperationInputQuery()
        self.pathEncodable = encodable.asIotModelUpdateCACertificateOperationInputPath()
        self.bodyEncodable = encodable.asIotModelUpdateCACertificateOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the UpdateCertificate operation in a HTTP client.
 */
public struct UpdateCertificateOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: UpdateCertificateOperationInputQuery?
    public let pathEncodable: UpdateCertificateOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: UpdateCertificateRequest) {
        self.queryEncodable = encodable.asIotModelUpdateCertificateOperationInputQuery()
        self.pathEncodable = encodable.asIotModelUpdateCertificateOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the UpdateDynamicThingGroup operation in a HTTP client.
 */
public struct UpdateDynamicThingGroupOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: UpdateDynamicThingGroupOperationInputPath?
    public let bodyEncodable: UpdateDynamicThingGroupOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: UpdateDynamicThingGroupRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelUpdateDynamicThingGroupOperationInputPath()
        self.bodyEncodable = encodable.asIotModelUpdateDynamicThingGroupOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the UpdateEventConfigurations operation in a HTTP client.
 */
public typealias UpdateEventConfigurationsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UpdateIndexingConfiguration operation in a HTTP client.
 */
public typealias UpdateIndexingConfigurationOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UpdateJob operation in a HTTP client.
 */
public struct UpdateJobOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: UpdateJobOperationInputPath?
    public let bodyEncodable: UpdateJobOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: UpdateJobRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelUpdateJobOperationInputPath()
        self.bodyEncodable = encodable.asIotModelUpdateJobOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the UpdateMitigationAction operation in a HTTP client.
 */
public struct UpdateMitigationActionOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: UpdateMitigationActionOperationInputPath?
    public let bodyEncodable: UpdateMitigationActionOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: UpdateMitigationActionRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelUpdateMitigationActionOperationInputPath()
        self.bodyEncodable = encodable.asIotModelUpdateMitigationActionOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the UpdateRoleAlias operation in a HTTP client.
 */
public struct UpdateRoleAliasOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: UpdateRoleAliasOperationInputPath?
    public let bodyEncodable: UpdateRoleAliasOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: UpdateRoleAliasRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelUpdateRoleAliasOperationInputPath()
        self.bodyEncodable = encodable.asIotModelUpdateRoleAliasOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the UpdateScheduledAudit operation in a HTTP client.
 */
public struct UpdateScheduledAuditOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: UpdateScheduledAuditOperationInputPath?
    public let bodyEncodable: UpdateScheduledAuditOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: UpdateScheduledAuditRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelUpdateScheduledAuditOperationInputPath()
        self.bodyEncodable = encodable.asIotModelUpdateScheduledAuditOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the UpdateSecurityProfile operation in a HTTP client.
 */
public struct UpdateSecurityProfileOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: UpdateSecurityProfileOperationInputQuery?
    public let pathEncodable: UpdateSecurityProfileOperationInputPath?
    public let bodyEncodable: UpdateSecurityProfileOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: UpdateSecurityProfileRequest) {
        self.queryEncodable = encodable.asIotModelUpdateSecurityProfileOperationInputQuery()
        self.pathEncodable = encodable.asIotModelUpdateSecurityProfileOperationInputPath()
        self.bodyEncodable = encodable.asIotModelUpdateSecurityProfileOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the UpdateStream operation in a HTTP client.
 */
public struct UpdateStreamOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: UpdateStreamOperationInputPath?
    public let bodyEncodable: UpdateStreamOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: UpdateStreamRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelUpdateStreamOperationInputPath()
        self.bodyEncodable = encodable.asIotModelUpdateStreamOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the UpdateThing operation in a HTTP client.
 */
public struct UpdateThingOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: UpdateThingOperationInputPath?
    public let bodyEncodable: UpdateThingOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: UpdateThingRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelUpdateThingOperationInputPath()
        self.bodyEncodable = encodable.asIotModelUpdateThingOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the UpdateThingGroup operation in a HTTP client.
 */
public struct UpdateThingGroupOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: UpdateThingGroupOperationInputPath?
    public let bodyEncodable: UpdateThingGroupOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: UpdateThingGroupRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asIotModelUpdateThingGroupOperationInputPath()
        self.bodyEncodable = encodable.asIotModelUpdateThingGroupOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the UpdateThingGroupsForThing operation in a HTTP client.
 */
public typealias UpdateThingGroupsForThingOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ValidateSecurityProfileBehaviors operation in a HTTP client.
 */
public typealias ValidateSecurityProfileBehaviorsOperationHTTPRequestInput = BodyHTTPRequestInput
