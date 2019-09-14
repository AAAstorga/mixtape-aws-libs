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
// IotDataModelErrors.swift
// IotDataModel
//

import Foundation
import LoggerAPI

private let conflictIdentity = "ConflictException"
private let internalFailureIdentity = "InternalFailureException"
private let invalidRequestIdentity = "InvalidRequestException"
private let methodNotAllowedIdentity = "MethodNotAllowedException"
private let requestEntityTooLargeIdentity = "RequestEntityTooLargeException"
private let resourceNotFoundIdentity = "ResourceNotFoundException"
private let serviceUnavailableIdentity = "ServiceUnavailableException"
private let throttlingIdentity = "ThrottlingException"
private let unauthorizedIdentity = "UnauthorizedException"
private let unsupportedDocumentEncodingIdentity = "UnsupportedDocumentEncodingException"
private let __accessDeniedIdentity = "AccessDenied"

public enum IotDataCodingError: Swift.Error {
    case unknownError
    case validationError(reason: String)
    case unrecognizedError(String, String?)
}

public enum IotDataError: Swift.Error, Decodable {
    case conflict(ConflictException)
    case internalFailure(InternalFailureException)
    case invalidRequest(InvalidRequestException)
    case methodNotAllowed(MethodNotAllowedException)
    case requestEntityTooLarge(RequestEntityTooLargeException)
    case resourceNotFound(ResourceNotFoundException)
    case serviceUnavailable(ServiceUnavailableException)
    case throttling(ThrottlingException)
    case unauthorized(UnauthorizedException)
    case unsupportedDocumentEncoding(UnsupportedDocumentEncodingException)
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
        case conflictIdentity:
            let errorPayload = try ConflictException(from: decoder)
            self = IotDataError.conflict(errorPayload)
        case internalFailureIdentity:
            let errorPayload = try InternalFailureException(from: decoder)
            self = IotDataError.internalFailure(errorPayload)
        case invalidRequestIdentity:
            let errorPayload = try InvalidRequestException(from: decoder)
            self = IotDataError.invalidRequest(errorPayload)
        case methodNotAllowedIdentity:
            let errorPayload = try MethodNotAllowedException(from: decoder)
            self = IotDataError.methodNotAllowed(errorPayload)
        case requestEntityTooLargeIdentity:
            let errorPayload = try RequestEntityTooLargeException(from: decoder)
            self = IotDataError.requestEntityTooLarge(errorPayload)
        case resourceNotFoundIdentity:
            let errorPayload = try ResourceNotFoundException(from: decoder)
            self = IotDataError.resourceNotFound(errorPayload)
        case serviceUnavailableIdentity:
            let errorPayload = try ServiceUnavailableException(from: decoder)
            self = IotDataError.serviceUnavailable(errorPayload)
        case throttlingIdentity:
            let errorPayload = try ThrottlingException(from: decoder)
            self = IotDataError.throttling(errorPayload)
        case unauthorizedIdentity:
            let errorPayload = try UnauthorizedException(from: decoder)
            self = IotDataError.unauthorized(errorPayload)
        case unsupportedDocumentEncodingIdentity:
            let errorPayload = try UnsupportedDocumentEncodingException(from: decoder)
            self = IotDataError.unsupportedDocumentEncoding(errorPayload)
        case __accessDeniedIdentity:
            self = .accessDenied(message: errorMessage)
        default:
            throw IotDataCodingError.unrecognizedError(errorReason, errorMessage)
        }
    }
    
}

