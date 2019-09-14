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
// IotModelErrors.swift
// IotModel
//

import Foundation
import LoggerAPI

private let certificateConflictIdentity = "CertificateConflictException"
private let certificateStateIdentity = "CertificateStateException"
private let certificateValidationIdentity = "CertificateValidationException"
private let conflictingResourceUpdateIdentity = "ConflictingResourceUpdateException"
private let deleteConflictIdentity = "DeleteConflictException"
private let indexNotReadyIdentity = "IndexNotReadyException"
private let internalIdentity = "InternalException"
private let internalFailureIdentity = "InternalFailureException"
private let invalidAggregationIdentity = "InvalidAggregationException"
private let invalidQueryIdentity = "InvalidQueryException"
private let invalidRequestIdentity = "InvalidRequestException"
private let invalidResponseIdentity = "InvalidResponseException"
private let invalidStateTransitionIdentity = "InvalidStateTransitionException"
private let limitExceededIdentity = "LimitExceededException"
private let malformedPolicyIdentity = "MalformedPolicyException"
private let notConfiguredIdentity = "NotConfiguredException"
private let registrationCodeValidationIdentity = "RegistrationCodeValidationException"
private let resourceAlreadyExistsIdentity = "ResourceAlreadyExistsException"
private let resourceNotFoundIdentity = "ResourceNotFoundException"
private let resourceRegistrationFailureIdentity = "ResourceRegistrationFailureException"
private let serviceUnavailableIdentity = "ServiceUnavailableException"
private let sqlParseIdentity = "SqlParseException"
private let taskAlreadyExistsIdentity = "TaskAlreadyExistsException"
private let throttlingIdentity = "ThrottlingException"
private let transferAlreadyCompletedIdentity = "TransferAlreadyCompletedException"
private let transferConflictIdentity = "TransferConflictException"
private let unauthorizedIdentity = "UnauthorizedException"
private let versionConflictIdentity = "VersionConflictException"
private let versionsLimitExceededIdentity = "VersionsLimitExceededException"
private let __accessDeniedIdentity = "AccessDenied"

public enum IotCodingError: Swift.Error {
    case unknownError
    case validationError(reason: String)
    case unrecognizedError(String, String?)
}

public enum IotError: Swift.Error, Decodable {
    case certificateConflict(CertificateConflictException)
    case certificateState(CertificateStateException)
    case certificateValidation(CertificateValidationException)
    case conflictingResourceUpdate(ConflictingResourceUpdateException)
    case deleteConflict(DeleteConflictException)
    case indexNotReady(IndexNotReadyException)
    case `internal`(InternalException)
    case internalFailure(InternalFailureException)
    case invalidAggregation(InvalidAggregationException)
    case invalidQuery(InvalidQueryException)
    case invalidRequest(InvalidRequestException)
    case invalidResponse(InvalidResponseException)
    case invalidStateTransition(InvalidStateTransitionException)
    case limitExceeded(LimitExceededException)
    case malformedPolicy(MalformedPolicyException)
    case notConfigured(NotConfiguredException)
    case registrationCodeValidation(RegistrationCodeValidationException)
    case resourceAlreadyExists(ResourceAlreadyExistsException)
    case resourceNotFound(ResourceNotFoundException)
    case resourceRegistrationFailure(ResourceRegistrationFailureException)
    case serviceUnavailable(ServiceUnavailableException)
    case sqlParse(SqlParseException)
    case taskAlreadyExists(TaskAlreadyExistsException)
    case throttling(ThrottlingException)
    case transferAlreadyCompleted(TransferAlreadyCompletedException)
    case transferConflict(TransferConflictException)
    case unauthorized(UnauthorizedException)
    case versionConflict(VersionConflictException)
    case versionsLimitExceeded(VersionsLimitExceededException)
    case accessDenied(message: String?)

    enum CodingKeys: String, CodingKey {
        case type = "__type"
        case message = "message"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        var errorReason = try values.decode(String.self, forKey: .type)
        let errorMessage = try values.decodeIfPresent(String.self, forKey: .message)
        
        if let index = errorReason.index(of: "#") {
            errorReason = String(errorReason[errorReason.index(index, offsetBy: 1)...])
        }

        switch errorReason {
        case certificateConflictIdentity:
            let errorPayload = try CertificateConflictException(from: decoder)
            self = IotError.certificateConflict(errorPayload)
        case certificateStateIdentity:
            let errorPayload = try CertificateStateException(from: decoder)
            self = IotError.certificateState(errorPayload)
        case certificateValidationIdentity:
            let errorPayload = try CertificateValidationException(from: decoder)
            self = IotError.certificateValidation(errorPayload)
        case conflictingResourceUpdateIdentity:
            let errorPayload = try ConflictingResourceUpdateException(from: decoder)
            self = IotError.conflictingResourceUpdate(errorPayload)
        case deleteConflictIdentity:
            let errorPayload = try DeleteConflictException(from: decoder)
            self = IotError.deleteConflict(errorPayload)
        case indexNotReadyIdentity:
            let errorPayload = try IndexNotReadyException(from: decoder)
            self = IotError.indexNotReady(errorPayload)
        case internalIdentity:
            let errorPayload = try InternalException(from: decoder)
            self = IotError.internal(errorPayload)
        case internalFailureIdentity:
            let errorPayload = try InternalFailureException(from: decoder)
            self = IotError.internalFailure(errorPayload)
        case invalidAggregationIdentity:
            let errorPayload = try InvalidAggregationException(from: decoder)
            self = IotError.invalidAggregation(errorPayload)
        case invalidQueryIdentity:
            let errorPayload = try InvalidQueryException(from: decoder)
            self = IotError.invalidQuery(errorPayload)
        case invalidRequestIdentity:
            let errorPayload = try InvalidRequestException(from: decoder)
            self = IotError.invalidRequest(errorPayload)
        case invalidResponseIdentity:
            let errorPayload = try InvalidResponseException(from: decoder)
            self = IotError.invalidResponse(errorPayload)
        case invalidStateTransitionIdentity:
            let errorPayload = try InvalidStateTransitionException(from: decoder)
            self = IotError.invalidStateTransition(errorPayload)
        case limitExceededIdentity:
            let errorPayload = try LimitExceededException(from: decoder)
            self = IotError.limitExceeded(errorPayload)
        case malformedPolicyIdentity:
            let errorPayload = try MalformedPolicyException(from: decoder)
            self = IotError.malformedPolicy(errorPayload)
        case notConfiguredIdentity:
            let errorPayload = try NotConfiguredException(from: decoder)
            self = IotError.notConfigured(errorPayload)
        case registrationCodeValidationIdentity:
            let errorPayload = try RegistrationCodeValidationException(from: decoder)
            self = IotError.registrationCodeValidation(errorPayload)
        case resourceAlreadyExistsIdentity:
            let errorPayload = try ResourceAlreadyExistsException(from: decoder)
            self = IotError.resourceAlreadyExists(errorPayload)
        case resourceNotFoundIdentity:
            let errorPayload = try ResourceNotFoundException(from: decoder)
            self = IotError.resourceNotFound(errorPayload)
        case resourceRegistrationFailureIdentity:
            let errorPayload = try ResourceRegistrationFailureException(from: decoder)
            self = IotError.resourceRegistrationFailure(errorPayload)
        case serviceUnavailableIdentity:
            let errorPayload = try ServiceUnavailableException(from: decoder)
            self = IotError.serviceUnavailable(errorPayload)
        case sqlParseIdentity:
            let errorPayload = try SqlParseException(from: decoder)
            self = IotError.sqlParse(errorPayload)
        case taskAlreadyExistsIdentity:
            let errorPayload = try TaskAlreadyExistsException(from: decoder)
            self = IotError.taskAlreadyExists(errorPayload)
        case throttlingIdentity:
            let errorPayload = try ThrottlingException(from: decoder)
            self = IotError.throttling(errorPayload)
        case transferAlreadyCompletedIdentity:
            let errorPayload = try TransferAlreadyCompletedException(from: decoder)
            self = IotError.transferAlreadyCompleted(errorPayload)
        case transferConflictIdentity:
            let errorPayload = try TransferConflictException(from: decoder)
            self = IotError.transferConflict(errorPayload)
        case unauthorizedIdentity:
            let errorPayload = try UnauthorizedException(from: decoder)
            self = IotError.unauthorized(errorPayload)
        case versionConflictIdentity:
            let errorPayload = try VersionConflictException(from: decoder)
            self = IotError.versionConflict(errorPayload)
        case versionsLimitExceededIdentity:
            let errorPayload = try VersionsLimitExceededException(from: decoder)
            self = IotError.versionsLimitExceeded(errorPayload)
        case __accessDeniedIdentity:
            self = .accessDenied(message: errorMessage)
        default:
            throw IotCodingError.unrecognizedError(errorReason, errorMessage)
        }
    }
    
}

