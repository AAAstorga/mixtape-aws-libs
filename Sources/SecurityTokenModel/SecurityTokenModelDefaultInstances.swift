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
// SecurityTokenModelDefaultInstances.swift
// SecurityTokenModel
//

import Foundation

public extension AssumeRoleRequest {
    /**
     Default instance of the AssumeRoleRequest structure.
     */
    public static let __default: SecurityTokenModel.AssumeRoleRequest = {
        let defaultInstance = SecurityTokenModel.AssumeRoleRequest(
            durationSeconds: nil,
            externalId: nil,
            policy: nil,
            policyArns: nil,
            roleArn: "01234567890123456789",
            roleSessionName: "01",
            serialNumber: nil,
            tokenCode: nil)

        return defaultInstance
    }()
}

public extension AssumeRoleResponse {
    /**
     Default instance of the AssumeRoleResponse structure.
     */
    public static let __default: SecurityTokenModel.AssumeRoleResponse = {
        let defaultInstance = SecurityTokenModel.AssumeRoleResponse(
            assumedRoleUser: nil,
            credentials: nil,
            packedPolicySize: nil)

        return defaultInstance
    }()
}

public extension AssumeRoleResponseForAssumeRole {
    /**
     Default instance of the AssumeRoleResponseForAssumeRole structure.
     */
    public static let __default: SecurityTokenModel.AssumeRoleResponseForAssumeRole = {
        let defaultInstance = SecurityTokenModel.AssumeRoleResponseForAssumeRole(
            assumeRoleResult: AssumeRoleResponse.__default)

        return defaultInstance
    }()
}

public extension AssumeRoleWithSAMLRequest {
    /**
     Default instance of the AssumeRoleWithSAMLRequest structure.
     */
    public static let __default: SecurityTokenModel.AssumeRoleWithSAMLRequest = {
        let defaultInstance = SecurityTokenModel.AssumeRoleWithSAMLRequest(
            durationSeconds: nil,
            policy: nil,
            policyArns: nil,
            principalArn: "01234567890123456789",
            roleArn: "01234567890123456789",
            sAMLAssertion: "0123")

        return defaultInstance
    }()
}

public extension AssumeRoleWithSAMLResponse {
    /**
     Default instance of the AssumeRoleWithSAMLResponse structure.
     */
    public static let __default: SecurityTokenModel.AssumeRoleWithSAMLResponse = {
        let defaultInstance = SecurityTokenModel.AssumeRoleWithSAMLResponse(
            assumedRoleUser: nil,
            audience: nil,
            credentials: nil,
            issuer: nil,
            nameQualifier: nil,
            packedPolicySize: nil,
            subject: nil,
            subjectType: nil)

        return defaultInstance
    }()
}

public extension AssumeRoleWithSAMLResponseForAssumeRoleWithSAML {
    /**
     Default instance of the AssumeRoleWithSAMLResponseForAssumeRoleWithSAML structure.
     */
    public static let __default: SecurityTokenModel.AssumeRoleWithSAMLResponseForAssumeRoleWithSAML = {
        let defaultInstance = SecurityTokenModel.AssumeRoleWithSAMLResponseForAssumeRoleWithSAML(
            assumeRoleWithSAMLResult: AssumeRoleWithSAMLResponse.__default)

        return defaultInstance
    }()
}

public extension AssumeRoleWithWebIdentityRequest {
    /**
     Default instance of the AssumeRoleWithWebIdentityRequest structure.
     */
    public static let __default: SecurityTokenModel.AssumeRoleWithWebIdentityRequest = {
        let defaultInstance = SecurityTokenModel.AssumeRoleWithWebIdentityRequest(
            durationSeconds: nil,
            policy: nil,
            policyArns: nil,
            providerId: nil,
            roleArn: "01234567890123456789",
            roleSessionName: "01",
            webIdentityToken: "0123")

        return defaultInstance
    }()
}

public extension AssumeRoleWithWebIdentityResponse {
    /**
     Default instance of the AssumeRoleWithWebIdentityResponse structure.
     */
    public static let __default: SecurityTokenModel.AssumeRoleWithWebIdentityResponse = {
        let defaultInstance = SecurityTokenModel.AssumeRoleWithWebIdentityResponse(
            assumedRoleUser: nil,
            audience: nil,
            credentials: nil,
            packedPolicySize: nil,
            provider: nil,
            subjectFromWebIdentityToken: nil)

        return defaultInstance
    }()
}

public extension AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity {
    /**
     Default instance of the AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity structure.
     */
    public static let __default: SecurityTokenModel.AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity = {
        let defaultInstance = SecurityTokenModel.AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity(
            assumeRoleWithWebIdentityResult: AssumeRoleWithWebIdentityResponse.__default)

        return defaultInstance
    }()
}

public extension AssumedRoleUser {
    /**
     Default instance of the AssumedRoleUser structure.
     */
    public static let __default: SecurityTokenModel.AssumedRoleUser = {
        let defaultInstance = SecurityTokenModel.AssumedRoleUser(
            arn: "01234567890123456789",
            assumedRoleId: "01")

        return defaultInstance
    }()
}

public extension Credentials {
    /**
     Default instance of the Credentials structure.
     */
    public static let __default: SecurityTokenModel.Credentials = {
        let defaultInstance = SecurityTokenModel.Credentials(
            accessKeyId: "0123456789012345",
            expiration: "2013-02-18T17:00:00Z",
            secretAccessKey: "value",
            sessionToken: "value")

        return defaultInstance
    }()
}

public extension DecodeAuthorizationMessageRequest {
    /**
     Default instance of the DecodeAuthorizationMessageRequest structure.
     */
    public static let __default: SecurityTokenModel.DecodeAuthorizationMessageRequest = {
        let defaultInstance = SecurityTokenModel.DecodeAuthorizationMessageRequest(
            encodedMessage: "0")

        return defaultInstance
    }()
}

public extension DecodeAuthorizationMessageResponse {
    /**
     Default instance of the DecodeAuthorizationMessageResponse structure.
     */
    public static let __default: SecurityTokenModel.DecodeAuthorizationMessageResponse = {
        let defaultInstance = SecurityTokenModel.DecodeAuthorizationMessageResponse(
            decodedMessage: nil)

        return defaultInstance
    }()
}

public extension DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage {
    /**
     Default instance of the DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage structure.
     */
    public static let __default: SecurityTokenModel.DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage = {
        let defaultInstance = SecurityTokenModel.DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage(
            decodeAuthorizationMessageResult: DecodeAuthorizationMessageResponse.__default)

        return defaultInstance
    }()
}

public extension ExpiredTokenException {
    /**
     Default instance of the ExpiredTokenException structure.
     */
    public static let __default: SecurityTokenModel.ExpiredTokenException = {
        let defaultInstance = SecurityTokenModel.ExpiredTokenException(
            message: nil)

        return defaultInstance
    }()
}

public extension FederatedUser {
    /**
     Default instance of the FederatedUser structure.
     */
    public static let __default: SecurityTokenModel.FederatedUser = {
        let defaultInstance = SecurityTokenModel.FederatedUser(
            arn: "01234567890123456789",
            federatedUserId: "01")

        return defaultInstance
    }()
}

public extension GetCallerIdentityRequest {
    /**
     Default instance of the GetCallerIdentityRequest structure.
     */
    public static let __default: SecurityTokenModel.GetCallerIdentityRequest = {
        let defaultInstance = SecurityTokenModel.GetCallerIdentityRequest()

        return defaultInstance
    }()
}

public extension GetCallerIdentityResponse {
    /**
     Default instance of the GetCallerIdentityResponse structure.
     */
    public static let __default: SecurityTokenModel.GetCallerIdentityResponse = {
        let defaultInstance = SecurityTokenModel.GetCallerIdentityResponse(
            account: nil,
            arn: nil,
            userId: nil)

        return defaultInstance
    }()
}

public extension GetCallerIdentityResponseForGetCallerIdentity {
    /**
     Default instance of the GetCallerIdentityResponseForGetCallerIdentity structure.
     */
    public static let __default: SecurityTokenModel.GetCallerIdentityResponseForGetCallerIdentity = {
        let defaultInstance = SecurityTokenModel.GetCallerIdentityResponseForGetCallerIdentity(
            getCallerIdentityResult: GetCallerIdentityResponse.__default)

        return defaultInstance
    }()
}

public extension GetFederationTokenRequest {
    /**
     Default instance of the GetFederationTokenRequest structure.
     */
    public static let __default: SecurityTokenModel.GetFederationTokenRequest = {
        let defaultInstance = SecurityTokenModel.GetFederationTokenRequest(
            durationSeconds: nil,
            name: "01",
            policy: nil,
            policyArns: nil)

        return defaultInstance
    }()
}

public extension GetFederationTokenResponse {
    /**
     Default instance of the GetFederationTokenResponse structure.
     */
    public static let __default: SecurityTokenModel.GetFederationTokenResponse = {
        let defaultInstance = SecurityTokenModel.GetFederationTokenResponse(
            credentials: nil,
            federatedUser: nil,
            packedPolicySize: nil)

        return defaultInstance
    }()
}

public extension GetFederationTokenResponseForGetFederationToken {
    /**
     Default instance of the GetFederationTokenResponseForGetFederationToken structure.
     */
    public static let __default: SecurityTokenModel.GetFederationTokenResponseForGetFederationToken = {
        let defaultInstance = SecurityTokenModel.GetFederationTokenResponseForGetFederationToken(
            getFederationTokenResult: GetFederationTokenResponse.__default)

        return defaultInstance
    }()
}

public extension GetSessionTokenRequest {
    /**
     Default instance of the GetSessionTokenRequest structure.
     */
    public static let __default: SecurityTokenModel.GetSessionTokenRequest = {
        let defaultInstance = SecurityTokenModel.GetSessionTokenRequest(
            durationSeconds: nil,
            serialNumber: nil,
            tokenCode: nil)

        return defaultInstance
    }()
}

public extension GetSessionTokenResponse {
    /**
     Default instance of the GetSessionTokenResponse structure.
     */
    public static let __default: SecurityTokenModel.GetSessionTokenResponse = {
        let defaultInstance = SecurityTokenModel.GetSessionTokenResponse(
            credentials: nil)

        return defaultInstance
    }()
}

public extension GetSessionTokenResponseForGetSessionToken {
    /**
     Default instance of the GetSessionTokenResponseForGetSessionToken structure.
     */
    public static let __default: SecurityTokenModel.GetSessionTokenResponseForGetSessionToken = {
        let defaultInstance = SecurityTokenModel.GetSessionTokenResponseForGetSessionToken(
            getSessionTokenResult: GetSessionTokenResponse.__default)

        return defaultInstance
    }()
}

public extension IDPCommunicationErrorException {
    /**
     Default instance of the IDPCommunicationErrorException structure.
     */
    public static let __default: SecurityTokenModel.IDPCommunicationErrorException = {
        let defaultInstance = SecurityTokenModel.IDPCommunicationErrorException(
            message: nil)

        return defaultInstance
    }()
}

public extension IDPRejectedClaimException {
    /**
     Default instance of the IDPRejectedClaimException structure.
     */
    public static let __default: SecurityTokenModel.IDPRejectedClaimException = {
        let defaultInstance = SecurityTokenModel.IDPRejectedClaimException(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidAuthorizationMessageException {
    /**
     Default instance of the InvalidAuthorizationMessageException structure.
     */
    public static let __default: SecurityTokenModel.InvalidAuthorizationMessageException = {
        let defaultInstance = SecurityTokenModel.InvalidAuthorizationMessageException(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidIdentityTokenException {
    /**
     Default instance of the InvalidIdentityTokenException structure.
     */
    public static let __default: SecurityTokenModel.InvalidIdentityTokenException = {
        let defaultInstance = SecurityTokenModel.InvalidIdentityTokenException(
            message: nil)

        return defaultInstance
    }()
}

public extension MalformedPolicyDocumentException {
    /**
     Default instance of the MalformedPolicyDocumentException structure.
     */
    public static let __default: SecurityTokenModel.MalformedPolicyDocumentException = {
        let defaultInstance = SecurityTokenModel.MalformedPolicyDocumentException(
            message: nil)

        return defaultInstance
    }()
}

public extension PackedPolicyTooLargeException {
    /**
     Default instance of the PackedPolicyTooLargeException structure.
     */
    public static let __default: SecurityTokenModel.PackedPolicyTooLargeException = {
        let defaultInstance = SecurityTokenModel.PackedPolicyTooLargeException(
            message: nil)

        return defaultInstance
    }()
}

public extension PolicyDescriptorType {
    /**
     Default instance of the PolicyDescriptorType structure.
     */
    public static let __default: SecurityTokenModel.PolicyDescriptorType = {
        let defaultInstance = SecurityTokenModel.PolicyDescriptorType(
            arn: nil)

        return defaultInstance
    }()
}

public extension RegionDisabledException {
    /**
     Default instance of the RegionDisabledException structure.
     */
    public static let __default: SecurityTokenModel.RegionDisabledException = {
        let defaultInstance = SecurityTokenModel.RegionDisabledException(
            message: nil)

        return defaultInstance
    }()
}
