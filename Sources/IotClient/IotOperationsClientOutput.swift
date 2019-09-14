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
// IotOperationsClientOutput.swift
// IotClient
//

import Foundation
import SmokeHTTPClient
import IotModel

/**
 Type to handle the output from the AddThingToBillingGroup operation in a HTTP client.
 */
extension AddThingToBillingGroupResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = AddThingToBillingGroupResponse
    public typealias HeadersType = AddThingToBillingGroupResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AddThingToBillingGroupResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the AddThingToThingGroup operation in a HTTP client.
 */
extension AddThingToThingGroupResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = AddThingToThingGroupResponse
    public typealias HeadersType = AddThingToThingGroupResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AddThingToThingGroupResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the AssociateTargetsWithJob operation in a HTTP client.
 */
extension AssociateTargetsWithJobResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = AssociateTargetsWithJobResponse
    public typealias HeadersType = AssociateTargetsWithJobResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AssociateTargetsWithJobResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the AttachSecurityProfile operation in a HTTP client.
 */
extension AttachSecurityProfileResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = AttachSecurityProfileResponse
    public typealias HeadersType = AttachSecurityProfileResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AttachSecurityProfileResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the AttachThingPrincipal operation in a HTTP client.
 */
extension AttachThingPrincipalResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = AttachThingPrincipalResponse
    public typealias HeadersType = AttachThingPrincipalResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AttachThingPrincipalResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CancelAuditMitigationActionsTask operation in a HTTP client.
 */
extension CancelAuditMitigationActionsTaskResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CancelAuditMitigationActionsTaskResponse
    public typealias HeadersType = CancelAuditMitigationActionsTaskResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CancelAuditMitigationActionsTaskResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CancelAuditTask operation in a HTTP client.
 */
extension CancelAuditTaskResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CancelAuditTaskResponse
    public typealias HeadersType = CancelAuditTaskResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CancelAuditTaskResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CancelJob operation in a HTTP client.
 */
extension CancelJobResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CancelJobResponse
    public typealias HeadersType = CancelJobResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CancelJobResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ClearDefaultAuthorizer operation in a HTTP client.
 */
extension ClearDefaultAuthorizerResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ClearDefaultAuthorizerResponse
    public typealias HeadersType = ClearDefaultAuthorizerResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ClearDefaultAuthorizerResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateAuthorizer operation in a HTTP client.
 */
extension CreateAuthorizerResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateAuthorizerResponse
    public typealias HeadersType = CreateAuthorizerResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateAuthorizerResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateBillingGroup operation in a HTTP client.
 */
extension CreateBillingGroupResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateBillingGroupResponse
    public typealias HeadersType = CreateBillingGroupResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateBillingGroupResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateCertificateFromCsr operation in a HTTP client.
 */
extension CreateCertificateFromCsrResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateCertificateFromCsrResponse
    public typealias HeadersType = CreateCertificateFromCsrResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateCertificateFromCsrResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateDynamicThingGroup operation in a HTTP client.
 */
extension CreateDynamicThingGroupResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateDynamicThingGroupResponse
    public typealias HeadersType = CreateDynamicThingGroupResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateDynamicThingGroupResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateJob operation in a HTTP client.
 */
extension CreateJobResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateJobResponse
    public typealias HeadersType = CreateJobResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateJobResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateKeysAndCertificate operation in a HTTP client.
 */
extension CreateKeysAndCertificateResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateKeysAndCertificateResponse
    public typealias HeadersType = CreateKeysAndCertificateResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateKeysAndCertificateResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateMitigationAction operation in a HTTP client.
 */
extension CreateMitigationActionResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateMitigationActionResponse
    public typealias HeadersType = CreateMitigationActionResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateMitigationActionResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateOTAUpdate operation in a HTTP client.
 */
extension CreateOTAUpdateResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateOTAUpdateResponse
    public typealias HeadersType = CreateOTAUpdateResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateOTAUpdateResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreatePolicy operation in a HTTP client.
 */
extension CreatePolicyResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CreatePolicyResponse
    public typealias HeadersType = CreatePolicyResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreatePolicyResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreatePolicyVersion operation in a HTTP client.
 */
extension CreatePolicyVersionResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CreatePolicyVersionResponse
    public typealias HeadersType = CreatePolicyVersionResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreatePolicyVersionResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateRoleAlias operation in a HTTP client.
 */
extension CreateRoleAliasResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateRoleAliasResponse
    public typealias HeadersType = CreateRoleAliasResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateRoleAliasResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateScheduledAudit operation in a HTTP client.
 */
extension CreateScheduledAuditResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateScheduledAuditResponse
    public typealias HeadersType = CreateScheduledAuditResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateScheduledAuditResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateSecurityProfile operation in a HTTP client.
 */
extension CreateSecurityProfileResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateSecurityProfileResponse
    public typealias HeadersType = CreateSecurityProfileResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateSecurityProfileResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateStream operation in a HTTP client.
 */
extension CreateStreamResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateStreamResponse
    public typealias HeadersType = CreateStreamResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateStreamResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateThing operation in a HTTP client.
 */
extension CreateThingResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateThingResponse
    public typealias HeadersType = CreateThingResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateThingResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateThingGroup operation in a HTTP client.
 */
extension CreateThingGroupResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateThingGroupResponse
    public typealias HeadersType = CreateThingGroupResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateThingGroupResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateThingType operation in a HTTP client.
 */
extension CreateThingTypeResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateThingTypeResponse
    public typealias HeadersType = CreateThingTypeResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateThingTypeResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteAccountAuditConfiguration operation in a HTTP client.
 */
extension DeleteAccountAuditConfigurationResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteAccountAuditConfigurationResponse
    public typealias HeadersType = DeleteAccountAuditConfigurationResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteAccountAuditConfigurationResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteAuthorizer operation in a HTTP client.
 */
extension DeleteAuthorizerResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteAuthorizerResponse
    public typealias HeadersType = DeleteAuthorizerResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteAuthorizerResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteBillingGroup operation in a HTTP client.
 */
extension DeleteBillingGroupResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteBillingGroupResponse
    public typealias HeadersType = DeleteBillingGroupResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteBillingGroupResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteCACertificate operation in a HTTP client.
 */
extension DeleteCACertificateResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteCACertificateResponse
    public typealias HeadersType = DeleteCACertificateResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteCACertificateResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteDynamicThingGroup operation in a HTTP client.
 */
extension DeleteDynamicThingGroupResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteDynamicThingGroupResponse
    public typealias HeadersType = DeleteDynamicThingGroupResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteDynamicThingGroupResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteMitigationAction operation in a HTTP client.
 */
extension DeleteMitigationActionResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteMitigationActionResponse
    public typealias HeadersType = DeleteMitigationActionResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteMitigationActionResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteOTAUpdate operation in a HTTP client.
 */
extension DeleteOTAUpdateResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteOTAUpdateResponse
    public typealias HeadersType = DeleteOTAUpdateResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteOTAUpdateResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteRegistrationCode operation in a HTTP client.
 */
extension DeleteRegistrationCodeResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteRegistrationCodeResponse
    public typealias HeadersType = DeleteRegistrationCodeResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteRegistrationCodeResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteRoleAlias operation in a HTTP client.
 */
extension DeleteRoleAliasResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteRoleAliasResponse
    public typealias HeadersType = DeleteRoleAliasResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteRoleAliasResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteScheduledAudit operation in a HTTP client.
 */
extension DeleteScheduledAuditResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteScheduledAuditResponse
    public typealias HeadersType = DeleteScheduledAuditResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteScheduledAuditResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteSecurityProfile operation in a HTTP client.
 */
extension DeleteSecurityProfileResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteSecurityProfileResponse
    public typealias HeadersType = DeleteSecurityProfileResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteSecurityProfileResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteStream operation in a HTTP client.
 */
extension DeleteStreamResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteStreamResponse
    public typealias HeadersType = DeleteStreamResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteStreamResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteThing operation in a HTTP client.
 */
extension DeleteThingResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteThingResponse
    public typealias HeadersType = DeleteThingResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteThingResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteThingGroup operation in a HTTP client.
 */
extension DeleteThingGroupResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteThingGroupResponse
    public typealias HeadersType = DeleteThingGroupResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteThingGroupResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteThingType operation in a HTTP client.
 */
extension DeleteThingTypeResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteThingTypeResponse
    public typealias HeadersType = DeleteThingTypeResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteThingTypeResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeprecateThingType operation in a HTTP client.
 */
extension DeprecateThingTypeResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeprecateThingTypeResponse
    public typealias HeadersType = DeprecateThingTypeResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeprecateThingTypeResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeAccountAuditConfiguration operation in a HTTP client.
 */
extension DescribeAccountAuditConfigurationResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeAccountAuditConfigurationResponse
    public typealias HeadersType = DescribeAccountAuditConfigurationResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeAccountAuditConfigurationResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeAuditFinding operation in a HTTP client.
 */
extension DescribeAuditFindingResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeAuditFindingResponse
    public typealias HeadersType = DescribeAuditFindingResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeAuditFindingResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeAuditMitigationActionsTask operation in a HTTP client.
 */
extension DescribeAuditMitigationActionsTaskResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeAuditMitigationActionsTaskResponse
    public typealias HeadersType = DescribeAuditMitigationActionsTaskResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeAuditMitigationActionsTaskResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeAuditTask operation in a HTTP client.
 */
extension DescribeAuditTaskResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeAuditTaskResponse
    public typealias HeadersType = DescribeAuditTaskResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeAuditTaskResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeAuthorizer operation in a HTTP client.
 */
extension DescribeAuthorizerResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeAuthorizerResponse
    public typealias HeadersType = DescribeAuthorizerResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeAuthorizerResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeBillingGroup operation in a HTTP client.
 */
extension DescribeBillingGroupResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeBillingGroupResponse
    public typealias HeadersType = DescribeBillingGroupResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeBillingGroupResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeCACertificate operation in a HTTP client.
 */
extension DescribeCACertificateResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeCACertificateResponse
    public typealias HeadersType = DescribeCACertificateResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeCACertificateResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeCertificate operation in a HTTP client.
 */
extension DescribeCertificateResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeCertificateResponse
    public typealias HeadersType = DescribeCertificateResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeCertificateResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeDefaultAuthorizer operation in a HTTP client.
 */
extension DescribeDefaultAuthorizerResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeDefaultAuthorizerResponse
    public typealias HeadersType = DescribeDefaultAuthorizerResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeDefaultAuthorizerResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeEndpoint operation in a HTTP client.
 */
extension DescribeEndpointResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeEndpointResponse
    public typealias HeadersType = DescribeEndpointResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeEndpointResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeEventConfigurations operation in a HTTP client.
 */
extension DescribeEventConfigurationsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeEventConfigurationsResponse
    public typealias HeadersType = DescribeEventConfigurationsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeEventConfigurationsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeIndex operation in a HTTP client.
 */
extension DescribeIndexResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeIndexResponse
    public typealias HeadersType = DescribeIndexResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeIndexResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeJob operation in a HTTP client.
 */
extension DescribeJobResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeJobResponse
    public typealias HeadersType = DescribeJobResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeJobResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeJobExecution operation in a HTTP client.
 */
extension DescribeJobExecutionResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeJobExecutionResponse
    public typealias HeadersType = DescribeJobExecutionResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeJobExecutionResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeMitigationAction operation in a HTTP client.
 */
extension DescribeMitigationActionResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeMitigationActionResponse
    public typealias HeadersType = DescribeMitigationActionResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeMitigationActionResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeRoleAlias operation in a HTTP client.
 */
extension DescribeRoleAliasResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeRoleAliasResponse
    public typealias HeadersType = DescribeRoleAliasResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeRoleAliasResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeScheduledAudit operation in a HTTP client.
 */
extension DescribeScheduledAuditResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeScheduledAuditResponse
    public typealias HeadersType = DescribeScheduledAuditResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeScheduledAuditResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeSecurityProfile operation in a HTTP client.
 */
extension DescribeSecurityProfileResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeSecurityProfileResponse
    public typealias HeadersType = DescribeSecurityProfileResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeSecurityProfileResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeStream operation in a HTTP client.
 */
extension DescribeStreamResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeStreamResponse
    public typealias HeadersType = DescribeStreamResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeStreamResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeThing operation in a HTTP client.
 */
extension DescribeThingResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeThingResponse
    public typealias HeadersType = DescribeThingResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeThingResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeThingGroup operation in a HTTP client.
 */
extension DescribeThingGroupResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeThingGroupResponse
    public typealias HeadersType = DescribeThingGroupResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeThingGroupResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeThingRegistrationTask operation in a HTTP client.
 */
extension DescribeThingRegistrationTaskResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeThingRegistrationTaskResponse
    public typealias HeadersType = DescribeThingRegistrationTaskResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeThingRegistrationTaskResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeThingType operation in a HTTP client.
 */
extension DescribeThingTypeResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeThingTypeResponse
    public typealias HeadersType = DescribeThingTypeResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeThingTypeResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DetachSecurityProfile operation in a HTTP client.
 */
extension DetachSecurityProfileResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DetachSecurityProfileResponse
    public typealias HeadersType = DetachSecurityProfileResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DetachSecurityProfileResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DetachThingPrincipal operation in a HTTP client.
 */
extension DetachThingPrincipalResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DetachThingPrincipalResponse
    public typealias HeadersType = DetachThingPrincipalResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DetachThingPrincipalResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetEffectivePolicies operation in a HTTP client.
 */
extension GetEffectivePoliciesResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = GetEffectivePoliciesResponse
    public typealias HeadersType = GetEffectivePoliciesResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetEffectivePoliciesResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetIndexingConfiguration operation in a HTTP client.
 */
extension GetIndexingConfigurationResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = GetIndexingConfigurationResponse
    public typealias HeadersType = GetIndexingConfigurationResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetIndexingConfigurationResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetJobDocument operation in a HTTP client.
 */
extension GetJobDocumentResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = GetJobDocumentResponse
    public typealias HeadersType = GetJobDocumentResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetJobDocumentResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetLoggingOptions operation in a HTTP client.
 */
extension GetLoggingOptionsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = GetLoggingOptionsResponse
    public typealias HeadersType = GetLoggingOptionsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetLoggingOptionsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetOTAUpdate operation in a HTTP client.
 */
extension GetOTAUpdateResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = GetOTAUpdateResponse
    public typealias HeadersType = GetOTAUpdateResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetOTAUpdateResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetPolicy operation in a HTTP client.
 */
extension GetPolicyResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = GetPolicyResponse
    public typealias HeadersType = GetPolicyResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetPolicyResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetPolicyVersion operation in a HTTP client.
 */
extension GetPolicyVersionResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = GetPolicyVersionResponse
    public typealias HeadersType = GetPolicyVersionResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetPolicyVersionResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetRegistrationCode operation in a HTTP client.
 */
extension GetRegistrationCodeResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = GetRegistrationCodeResponse
    public typealias HeadersType = GetRegistrationCodeResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetRegistrationCodeResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetStatistics operation in a HTTP client.
 */
extension GetStatisticsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = GetStatisticsResponse
    public typealias HeadersType = GetStatisticsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetStatisticsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetTopicRule operation in a HTTP client.
 */
extension GetTopicRuleResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = GetTopicRuleResponse
    public typealias HeadersType = GetTopicRuleResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetTopicRuleResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetV2LoggingOptions operation in a HTTP client.
 */
extension GetV2LoggingOptionsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = GetV2LoggingOptionsResponse
    public typealias HeadersType = GetV2LoggingOptionsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetV2LoggingOptionsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListActiveViolations operation in a HTTP client.
 */
extension ListActiveViolationsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListActiveViolationsResponse
    public typealias HeadersType = ListActiveViolationsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListActiveViolationsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListAttachedPolicies operation in a HTTP client.
 */
extension ListAttachedPoliciesResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListAttachedPoliciesResponse
    public typealias HeadersType = ListAttachedPoliciesResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListAttachedPoliciesResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListAuditFindings operation in a HTTP client.
 */
extension ListAuditFindingsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListAuditFindingsResponse
    public typealias HeadersType = ListAuditFindingsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListAuditFindingsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListAuditMitigationActionsExecutions operation in a HTTP client.
 */
extension ListAuditMitigationActionsExecutionsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListAuditMitigationActionsExecutionsResponse
    public typealias HeadersType = ListAuditMitigationActionsExecutionsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListAuditMitigationActionsExecutionsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListAuditMitigationActionsTasks operation in a HTTP client.
 */
extension ListAuditMitigationActionsTasksResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListAuditMitigationActionsTasksResponse
    public typealias HeadersType = ListAuditMitigationActionsTasksResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListAuditMitigationActionsTasksResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListAuditTasks operation in a HTTP client.
 */
extension ListAuditTasksResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListAuditTasksResponse
    public typealias HeadersType = ListAuditTasksResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListAuditTasksResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListAuthorizers operation in a HTTP client.
 */
extension ListAuthorizersResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListAuthorizersResponse
    public typealias HeadersType = ListAuthorizersResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListAuthorizersResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListBillingGroups operation in a HTTP client.
 */
extension ListBillingGroupsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListBillingGroupsResponse
    public typealias HeadersType = ListBillingGroupsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListBillingGroupsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListCACertificates operation in a HTTP client.
 */
extension ListCACertificatesResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListCACertificatesResponse
    public typealias HeadersType = ListCACertificatesResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListCACertificatesResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListCertificates operation in a HTTP client.
 */
extension ListCertificatesResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListCertificatesResponse
    public typealias HeadersType = ListCertificatesResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListCertificatesResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListCertificatesByCA operation in a HTTP client.
 */
extension ListCertificatesByCAResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListCertificatesByCAResponse
    public typealias HeadersType = ListCertificatesByCAResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListCertificatesByCAResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListIndices operation in a HTTP client.
 */
extension ListIndicesResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListIndicesResponse
    public typealias HeadersType = ListIndicesResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListIndicesResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListJobExecutionsForJob operation in a HTTP client.
 */
extension ListJobExecutionsForJobResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListJobExecutionsForJobResponse
    public typealias HeadersType = ListJobExecutionsForJobResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListJobExecutionsForJobResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListJobExecutionsForThing operation in a HTTP client.
 */
extension ListJobExecutionsForThingResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListJobExecutionsForThingResponse
    public typealias HeadersType = ListJobExecutionsForThingResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListJobExecutionsForThingResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListJobs operation in a HTTP client.
 */
extension ListJobsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListJobsResponse
    public typealias HeadersType = ListJobsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListJobsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListMitigationActions operation in a HTTP client.
 */
extension ListMitigationActionsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListMitigationActionsResponse
    public typealias HeadersType = ListMitigationActionsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListMitigationActionsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListOTAUpdates operation in a HTTP client.
 */
extension ListOTAUpdatesResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListOTAUpdatesResponse
    public typealias HeadersType = ListOTAUpdatesResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListOTAUpdatesResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListOutgoingCertificates operation in a HTTP client.
 */
extension ListOutgoingCertificatesResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListOutgoingCertificatesResponse
    public typealias HeadersType = ListOutgoingCertificatesResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListOutgoingCertificatesResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListPolicies operation in a HTTP client.
 */
extension ListPoliciesResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListPoliciesResponse
    public typealias HeadersType = ListPoliciesResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListPoliciesResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListPolicyPrincipals operation in a HTTP client.
 */
extension ListPolicyPrincipalsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListPolicyPrincipalsResponse
    public typealias HeadersType = ListPolicyPrincipalsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListPolicyPrincipalsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListPolicyVersions operation in a HTTP client.
 */
extension ListPolicyVersionsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListPolicyVersionsResponse
    public typealias HeadersType = ListPolicyVersionsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListPolicyVersionsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListPrincipalPolicies operation in a HTTP client.
 */
extension ListPrincipalPoliciesResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListPrincipalPoliciesResponse
    public typealias HeadersType = ListPrincipalPoliciesResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListPrincipalPoliciesResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListPrincipalThings operation in a HTTP client.
 */
extension ListPrincipalThingsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListPrincipalThingsResponse
    public typealias HeadersType = ListPrincipalThingsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListPrincipalThingsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListRoleAliases operation in a HTTP client.
 */
extension ListRoleAliasesResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListRoleAliasesResponse
    public typealias HeadersType = ListRoleAliasesResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListRoleAliasesResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListScheduledAudits operation in a HTTP client.
 */
extension ListScheduledAuditsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListScheduledAuditsResponse
    public typealias HeadersType = ListScheduledAuditsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListScheduledAuditsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListSecurityProfiles operation in a HTTP client.
 */
extension ListSecurityProfilesResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListSecurityProfilesResponse
    public typealias HeadersType = ListSecurityProfilesResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListSecurityProfilesResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListSecurityProfilesForTarget operation in a HTTP client.
 */
extension ListSecurityProfilesForTargetResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListSecurityProfilesForTargetResponse
    public typealias HeadersType = ListSecurityProfilesForTargetResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListSecurityProfilesForTargetResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListStreams operation in a HTTP client.
 */
extension ListStreamsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListStreamsResponse
    public typealias HeadersType = ListStreamsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListStreamsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListTagsForResource operation in a HTTP client.
 */
extension ListTagsForResourceResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListTagsForResourceResponse
    public typealias HeadersType = ListTagsForResourceResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListTagsForResourceResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListTargetsForPolicy operation in a HTTP client.
 */
extension ListTargetsForPolicyResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListTargetsForPolicyResponse
    public typealias HeadersType = ListTargetsForPolicyResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListTargetsForPolicyResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListTargetsForSecurityProfile operation in a HTTP client.
 */
extension ListTargetsForSecurityProfileResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListTargetsForSecurityProfileResponse
    public typealias HeadersType = ListTargetsForSecurityProfileResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListTargetsForSecurityProfileResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListThingGroups operation in a HTTP client.
 */
extension ListThingGroupsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListThingGroupsResponse
    public typealias HeadersType = ListThingGroupsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListThingGroupsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListThingGroupsForThing operation in a HTTP client.
 */
extension ListThingGroupsForThingResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListThingGroupsForThingResponse
    public typealias HeadersType = ListThingGroupsForThingResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListThingGroupsForThingResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListThingPrincipals operation in a HTTP client.
 */
extension ListThingPrincipalsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListThingPrincipalsResponse
    public typealias HeadersType = ListThingPrincipalsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListThingPrincipalsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListThingRegistrationTaskReports operation in a HTTP client.
 */
extension ListThingRegistrationTaskReportsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListThingRegistrationTaskReportsResponse
    public typealias HeadersType = ListThingRegistrationTaskReportsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListThingRegistrationTaskReportsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListThingRegistrationTasks operation in a HTTP client.
 */
extension ListThingRegistrationTasksResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListThingRegistrationTasksResponse
    public typealias HeadersType = ListThingRegistrationTasksResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListThingRegistrationTasksResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListThingTypes operation in a HTTP client.
 */
extension ListThingTypesResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListThingTypesResponse
    public typealias HeadersType = ListThingTypesResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListThingTypesResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListThings operation in a HTTP client.
 */
extension ListThingsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListThingsResponse
    public typealias HeadersType = ListThingsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListThingsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListThingsInBillingGroup operation in a HTTP client.
 */
extension ListThingsInBillingGroupResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListThingsInBillingGroupResponse
    public typealias HeadersType = ListThingsInBillingGroupResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListThingsInBillingGroupResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListThingsInThingGroup operation in a HTTP client.
 */
extension ListThingsInThingGroupResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListThingsInThingGroupResponse
    public typealias HeadersType = ListThingsInThingGroupResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListThingsInThingGroupResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListTopicRules operation in a HTTP client.
 */
extension ListTopicRulesResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListTopicRulesResponse
    public typealias HeadersType = ListTopicRulesResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListTopicRulesResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListV2LoggingLevels operation in a HTTP client.
 */
extension ListV2LoggingLevelsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListV2LoggingLevelsResponse
    public typealias HeadersType = ListV2LoggingLevelsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListV2LoggingLevelsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListViolationEvents operation in a HTTP client.
 */
extension ListViolationEventsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListViolationEventsResponse
    public typealias HeadersType = ListViolationEventsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListViolationEventsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RegisterCACertificate operation in a HTTP client.
 */
extension RegisterCACertificateResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = RegisterCACertificateResponse
    public typealias HeadersType = RegisterCACertificateResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RegisterCACertificateResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RegisterCertificate operation in a HTTP client.
 */
extension RegisterCertificateResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = RegisterCertificateResponse
    public typealias HeadersType = RegisterCertificateResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RegisterCertificateResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RegisterThing operation in a HTTP client.
 */
extension RegisterThingResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = RegisterThingResponse
    public typealias HeadersType = RegisterThingResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RegisterThingResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RemoveThingFromBillingGroup operation in a HTTP client.
 */
extension RemoveThingFromBillingGroupResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = RemoveThingFromBillingGroupResponse
    public typealias HeadersType = RemoveThingFromBillingGroupResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RemoveThingFromBillingGroupResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RemoveThingFromThingGroup operation in a HTTP client.
 */
extension RemoveThingFromThingGroupResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = RemoveThingFromThingGroupResponse
    public typealias HeadersType = RemoveThingFromThingGroupResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RemoveThingFromThingGroupResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the SearchIndex operation in a HTTP client.
 */
extension SearchIndexResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = SearchIndexResponse
    public typealias HeadersType = SearchIndexResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> SearchIndexResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the SetDefaultAuthorizer operation in a HTTP client.
 */
extension SetDefaultAuthorizerResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = SetDefaultAuthorizerResponse
    public typealias HeadersType = SetDefaultAuthorizerResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> SetDefaultAuthorizerResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the StartAuditMitigationActionsTask operation in a HTTP client.
 */
extension StartAuditMitigationActionsTaskResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = StartAuditMitigationActionsTaskResponse
    public typealias HeadersType = StartAuditMitigationActionsTaskResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> StartAuditMitigationActionsTaskResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the StartOnDemandAuditTask operation in a HTTP client.
 */
extension StartOnDemandAuditTaskResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = StartOnDemandAuditTaskResponse
    public typealias HeadersType = StartOnDemandAuditTaskResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> StartOnDemandAuditTaskResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the StartThingRegistrationTask operation in a HTTP client.
 */
extension StartThingRegistrationTaskResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = StartThingRegistrationTaskResponse
    public typealias HeadersType = StartThingRegistrationTaskResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> StartThingRegistrationTaskResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the StopThingRegistrationTask operation in a HTTP client.
 */
extension StopThingRegistrationTaskResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = StopThingRegistrationTaskResponse
    public typealias HeadersType = StopThingRegistrationTaskResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> StopThingRegistrationTaskResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the TagResource operation in a HTTP client.
 */
extension TagResourceResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = TagResourceResponse
    public typealias HeadersType = TagResourceResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> TagResourceResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the TestAuthorization operation in a HTTP client.
 */
extension TestAuthorizationResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = TestAuthorizationResponse
    public typealias HeadersType = TestAuthorizationResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> TestAuthorizationResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the TestInvokeAuthorizer operation in a HTTP client.
 */
extension TestInvokeAuthorizerResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = TestInvokeAuthorizerResponse
    public typealias HeadersType = TestInvokeAuthorizerResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> TestInvokeAuthorizerResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the TransferCertificate operation in a HTTP client.
 */
extension TransferCertificateResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = TransferCertificateResponse
    public typealias HeadersType = TransferCertificateResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> TransferCertificateResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UntagResource operation in a HTTP client.
 */
extension UntagResourceResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = UntagResourceResponse
    public typealias HeadersType = UntagResourceResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UntagResourceResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateAccountAuditConfiguration operation in a HTTP client.
 */
extension UpdateAccountAuditConfigurationResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateAccountAuditConfigurationResponse
    public typealias HeadersType = UpdateAccountAuditConfigurationResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateAccountAuditConfigurationResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateAuthorizer operation in a HTTP client.
 */
extension UpdateAuthorizerResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateAuthorizerResponse
    public typealias HeadersType = UpdateAuthorizerResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateAuthorizerResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateBillingGroup operation in a HTTP client.
 */
extension UpdateBillingGroupResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateBillingGroupResponse
    public typealias HeadersType = UpdateBillingGroupResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateBillingGroupResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateDynamicThingGroup operation in a HTTP client.
 */
extension UpdateDynamicThingGroupResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateDynamicThingGroupResponse
    public typealias HeadersType = UpdateDynamicThingGroupResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateDynamicThingGroupResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateEventConfigurations operation in a HTTP client.
 */
extension UpdateEventConfigurationsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateEventConfigurationsResponse
    public typealias HeadersType = UpdateEventConfigurationsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateEventConfigurationsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateIndexingConfiguration operation in a HTTP client.
 */
extension UpdateIndexingConfigurationResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateIndexingConfigurationResponse
    public typealias HeadersType = UpdateIndexingConfigurationResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateIndexingConfigurationResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateMitigationAction operation in a HTTP client.
 */
extension UpdateMitigationActionResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateMitigationActionResponse
    public typealias HeadersType = UpdateMitigationActionResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateMitigationActionResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateRoleAlias operation in a HTTP client.
 */
extension UpdateRoleAliasResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateRoleAliasResponse
    public typealias HeadersType = UpdateRoleAliasResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateRoleAliasResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateScheduledAudit operation in a HTTP client.
 */
extension UpdateScheduledAuditResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateScheduledAuditResponse
    public typealias HeadersType = UpdateScheduledAuditResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateScheduledAuditResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateSecurityProfile operation in a HTTP client.
 */
extension UpdateSecurityProfileResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateSecurityProfileResponse
    public typealias HeadersType = UpdateSecurityProfileResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateSecurityProfileResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateStream operation in a HTTP client.
 */
extension UpdateStreamResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateStreamResponse
    public typealias HeadersType = UpdateStreamResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateStreamResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateThing operation in a HTTP client.
 */
extension UpdateThingResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateThingResponse
    public typealias HeadersType = UpdateThingResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateThingResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateThingGroup operation in a HTTP client.
 */
extension UpdateThingGroupResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateThingGroupResponse
    public typealias HeadersType = UpdateThingGroupResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateThingGroupResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateThingGroupsForThing operation in a HTTP client.
 */
extension UpdateThingGroupsForThingResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateThingGroupsForThingResponse
    public typealias HeadersType = UpdateThingGroupsForThingResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateThingGroupsForThingResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ValidateSecurityProfileBehaviors operation in a HTTP client.
 */
extension ValidateSecurityProfileBehaviorsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ValidateSecurityProfileBehaviorsResponse
    public typealias HeadersType = ValidateSecurityProfileBehaviorsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ValidateSecurityProfileBehaviorsResponse {
        return try bodyDecodableProvider()
    }
}
