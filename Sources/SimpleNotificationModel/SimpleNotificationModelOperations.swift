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
// SimpleNotificationModelOperations.swift
// SimpleNotificationModel
//

import Foundation

/**
 Operation enumeration for the SimpleNotificationModel.
 */
public enum SimpleNotificationModelOperations: String {
    case addPermission = "AddPermission"
    case checkIfPhoneNumberIsOptedOut = "CheckIfPhoneNumberIsOptedOut"
    case confirmSubscription = "ConfirmSubscription"
    case createPlatformApplication = "CreatePlatformApplication"
    case createPlatformEndpoint = "CreatePlatformEndpoint"
    case createTopic = "CreateTopic"
    case deleteEndpoint = "DeleteEndpoint"
    case deletePlatformApplication = "DeletePlatformApplication"
    case deleteTopic = "DeleteTopic"
    case getEndpointAttributes = "GetEndpointAttributes"
    case getPlatformApplicationAttributes = "GetPlatformApplicationAttributes"
    case getSMSAttributes = "GetSMSAttributes"
    case getSubscriptionAttributes = "GetSubscriptionAttributes"
    case getTopicAttributes = "GetTopicAttributes"
    case listEndpointsByPlatformApplication = "ListEndpointsByPlatformApplication"
    case listPhoneNumbersOptedOut = "ListPhoneNumbersOptedOut"
    case listPlatformApplications = "ListPlatformApplications"
    case listSubscriptions = "ListSubscriptions"
    case listSubscriptionsByTopic = "ListSubscriptionsByTopic"
    case listTagsForResource = "ListTagsForResource"
    case listTopics = "ListTopics"
    case optInPhoneNumber = "OptInPhoneNumber"
    case publish = "Publish"
    case removePermission = "RemovePermission"
    case setEndpointAttributes = "SetEndpointAttributes"
    case setPlatformApplicationAttributes = "SetPlatformApplicationAttributes"
    case setSMSAttributes = "SetSMSAttributes"
    case setSubscriptionAttributes = "SetSubscriptionAttributes"
    case setTopicAttributes = "SetTopicAttributes"
    case subscribe = "Subscribe"
    case tagResource = "TagResource"
    case unsubscribe = "Unsubscribe"
    case untagResource = "UntagResource"

    public var operationPath: String {
        switch self {
        case .addPermission:
            return "/"
        case .checkIfPhoneNumberIsOptedOut:
            return "/"
        case .confirmSubscription:
            return "/"
        case .createPlatformApplication:
            return "/"
        case .createPlatformEndpoint:
            return "/"
        case .createTopic:
            return "/"
        case .deleteEndpoint:
            return "/"
        case .deletePlatformApplication:
            return "/"
        case .deleteTopic:
            return "/"
        case .getEndpointAttributes:
            return "/"
        case .getPlatformApplicationAttributes:
            return "/"
        case .getSMSAttributes:
            return "/"
        case .getSubscriptionAttributes:
            return "/"
        case .getTopicAttributes:
            return "/"
        case .listEndpointsByPlatformApplication:
            return "/"
        case .listPhoneNumbersOptedOut:
            return "/"
        case .listPlatformApplications:
            return "/"
        case .listSubscriptions:
            return "/"
        case .listSubscriptionsByTopic:
            return "/"
        case .listTagsForResource:
            return "/"
        case .listTopics:
            return "/"
        case .optInPhoneNumber:
            return "/"
        case .publish:
            return "/"
        case .removePermission:
            return "/"
        case .setEndpointAttributes:
            return "/"
        case .setPlatformApplicationAttributes:
            return "/"
        case .setSMSAttributes:
            return "/"
        case .setSubscriptionAttributes:
            return "/"
        case .setTopicAttributes:
            return "/"
        case .subscribe:
            return "/"
        case .tagResource:
            return "/"
        case .unsubscribe:
            return "/"
        case .untagResource:
            return "/"
        }
    }
}
