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
// IotModelTypes.swift
// IotModel
//

import Foundation

/**
 Enumeration restricting the values of the AbortAction field.
 */
public enum AbortAction: String, Codable, CustomStringConvertible {
    case cancel = "CANCEL"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AbortAction = .cancel
}

/**
 Type definition for the AbortCriteriaList field.
 */
public typealias AbortCriteriaList = [AbortCriteria]

/**
 Type definition for the AbortThresholdPercentage field.
 */
public typealias AbortThresholdPercentage = Double

/**
 Type definition for the ActionList field.
 */
public typealias ActionList = [Action]

/**
 Enumeration restricting the values of the ActionType field.
 */
public enum ActionType: String, Codable, CustomStringConvertible {
    case connect = "CONNECT"
    case publish = "PUBLISH"
    case receive = "RECEIVE"
    case subscribe = "SUBSCRIBE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ActionType = .connect
}

/**
 Type definition for the ActiveViolations field.
 */
public typealias ActiveViolations = [ActiveViolation]

/**
 Type definition for the AdditionalMetricsToRetainList field.
 */
public typealias AdditionalMetricsToRetainList = [BehaviorMetric]

/**
 Type definition for the AdditionalParameterMap field.
 */
public typealias AdditionalParameterMap = [AttributeKey: Value]

/**
 Type definition for the AggregationField field.
 */
public typealias AggregationField = String

/**
 Type definition for the AlarmName field.
 */
public typealias AlarmName = String

/**
 Type definition for the AlertTargetArn field.
 */
public typealias AlertTargetArn = String

/**
 Enumeration restricting the values of the AlertTargetType field.
 */
public enum AlertTargetType: String, Codable, CustomStringConvertible {
    case sns = "SNS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AlertTargetType = .sns
}

/**
 Type definition for the AlertTargets field.
 */
public typealias AlertTargets = [AlertTargetType: AlertTarget]

/**
 Type definition for the AllowAutoRegistration field.
 */
public typealias AllowAutoRegistration = Bool

/**
 Type definition for the ApproximateSecondsBeforeTimedOut field.
 */
public typealias ApproximateSecondsBeforeTimedOut = Int

/**
 Type definition for the AscendingOrder field.
 */
public typealias AscendingOrder = Bool

/**
 Type definition for the AttributeKey field.
 */
public typealias AttributeKey = String

/**
 Type definition for the AttributeName field.
 */
public typealias AttributeName = String

/**
 Type definition for the AttributeValue field.
 */
public typealias AttributeValue = String

/**
 Type definition for the Attributes field.
 */
public typealias Attributes = [AttributeName: AttributeValue]

/**
 Type definition for the AttributesMap field.
 */
public typealias AttributesMap = [AttributeKey: Value]

/**
 Type definition for the AuditCheckConfigurations field.
 */
public typealias AuditCheckConfigurations = [AuditCheckName: AuditCheckConfiguration]

/**
 Type definition for the AuditCheckName field.
 */
public typealias AuditCheckName = String

/**
 Enumeration restricting the values of the AuditCheckRunStatus field.
 */
public enum AuditCheckRunStatus: String, Codable, CustomStringConvertible {
    case canceled = "CANCELED"
    case completedCompliant = "COMPLETED_COMPLIANT"
    case completedNonCompliant = "COMPLETED_NON_COMPLIANT"
    case failed = "FAILED"
    case inProgress = "IN_PROGRESS"
    case waitingForDataCollection = "WAITING_FOR_DATA_COLLECTION"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AuditCheckRunStatus = .canceled
}

/**
 Type definition for the AuditCheckToActionsMapping field.
 */
public typealias AuditCheckToActionsMapping = [AuditCheckName: MitigationActionNameList]

/**
 Type definition for the AuditCheckToReasonCodeFilter field.
 */
public typealias AuditCheckToReasonCodeFilter = [AuditCheckName: ReasonForNonComplianceCodes]

/**
 Type definition for the AuditDetails field.
 */
public typealias AuditDetails = [AuditCheckName: AuditCheckDetails]

/**
 Enumeration restricting the values of the AuditFindingSeverity field.
 */
public enum AuditFindingSeverity: String, Codable, CustomStringConvertible {
    case critical = "CRITICAL"
    case high = "HIGH"
    case low = "LOW"
    case medium = "MEDIUM"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AuditFindingSeverity = .critical
}

/**
 Type definition for the AuditFindings field.
 */
public typealias AuditFindings = [AuditFinding]

/**
 Enumeration restricting the values of the AuditFrequency field.
 */
public enum AuditFrequency: String, Codable, CustomStringConvertible {
    case biweekly = "BIWEEKLY"
    case daily = "DAILY"
    case monthly = "MONTHLY"
    case weekly = "WEEKLY"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AuditFrequency = .biweekly
}

/**
 Type definition for the AuditMitigationActionExecutionMetadataList field.
 */
public typealias AuditMitigationActionExecutionMetadataList = [AuditMitigationActionExecutionMetadata]

/**
 Enumeration restricting the values of the AuditMitigationActionsExecutionStatus field.
 */
public enum AuditMitigationActionsExecutionStatus: String, Codable, CustomStringConvertible {
    case canceled = "CANCELED"
    case completed = "COMPLETED"
    case failed = "FAILED"
    case inProgress = "IN_PROGRESS"
    case pending = "PENDING"
    case skipped = "SKIPPED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AuditMitigationActionsExecutionStatus = .canceled
}

/**
 Type definition for the AuditMitigationActionsTaskId field.
 */
public typealias AuditMitigationActionsTaskId = String

/**
 Type definition for the AuditMitigationActionsTaskMetadataList field.
 */
public typealias AuditMitigationActionsTaskMetadataList = [AuditMitigationActionsTaskMetadata]

/**
 Type definition for the AuditMitigationActionsTaskStatistics field.
 */
public typealias AuditMitigationActionsTaskStatistics = [AuditCheckName: TaskStatisticsForAuditCheck]

/**
 Enumeration restricting the values of the AuditMitigationActionsTaskStatus field.
 */
public enum AuditMitigationActionsTaskStatus: String, Codable, CustomStringConvertible {
    case canceled = "CANCELED"
    case completed = "COMPLETED"
    case failed = "FAILED"
    case inProgress = "IN_PROGRESS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AuditMitigationActionsTaskStatus = .canceled
}

/**
 Type definition for the AuditNotificationTargetConfigurations field.
 */
public typealias AuditNotificationTargetConfigurations = [AuditNotificationType: AuditNotificationTarget]

/**
 Enumeration restricting the values of the AuditNotificationType field.
 */
public enum AuditNotificationType: String, Codable, CustomStringConvertible {
    case sns = "SNS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AuditNotificationType = .sns
}

/**
 Type definition for the AuditTaskId field.
 */
public typealias AuditTaskId = String

/**
 Type definition for the AuditTaskMetadataList field.
 */
public typealias AuditTaskMetadataList = [AuditTaskMetadata]

/**
 Enumeration restricting the values of the AuditTaskStatus field.
 */
public enum AuditTaskStatus: String, Codable, CustomStringConvertible {
    case canceled = "CANCELED"
    case completed = "COMPLETED"
    case failed = "FAILED"
    case inProgress = "IN_PROGRESS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AuditTaskStatus = .canceled
}

/**
 Enumeration restricting the values of the AuditTaskType field.
 */
public enum AuditTaskType: String, Codable, CustomStringConvertible {
    case onDemandAuditTask = "ON_DEMAND_AUDIT_TASK"
    case scheduledAuditTask = "SCHEDULED_AUDIT_TASK"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AuditTaskType = .onDemandAuditTask
}

/**
 Enumeration restricting the values of the AuthDecision field.
 */
public enum AuthDecision: String, Codable, CustomStringConvertible {
    case allowed = "ALLOWED"
    case explicitDeny = "EXPLICIT_DENY"
    case implicitDeny = "IMPLICIT_DENY"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AuthDecision = .allowed
}

/**
 Type definition for the AuthInfos field.
 */
public typealias AuthInfos = [AuthInfo]

/**
 Type definition for the AuthResults field.
 */
public typealias AuthResults = [AuthResult]

/**
 Type definition for the AuthorizerArn field.
 */
public typealias AuthorizerArn = String

/**
 Type definition for the AuthorizerFunctionArn field.
 */
public typealias AuthorizerFunctionArn = String

/**
 Type definition for the AuthorizerName field.
 */
public typealias AuthorizerName = String

/**
 Enumeration restricting the values of the AuthorizerStatus field.
 */
public enum AuthorizerStatus: String, Codable, CustomStringConvertible {
    case active = "ACTIVE"
    case inactive = "INACTIVE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AuthorizerStatus = .active
}

/**
 Type definition for the Authorizers field.
 */
public typealias Authorizers = [AuthorizerSummary]

/**
 Enumeration restricting the values of the AutoRegistrationStatus field.
 */
public enum AutoRegistrationStatus: String, Codable, CustomStringConvertible {
    case disable = "DISABLE"
    case enable = "ENABLE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AutoRegistrationStatus = .disable
}

/**
 Type definition for the AwsAccountId field.
 */
public typealias AwsAccountId = String

/**
 Type definition for the AwsArn field.
 */
public typealias AwsArn = String

/**
 Type definition for the AwsIotJobArn field.
 */
public typealias AwsIotJobArn = String

/**
 Type definition for the AwsIotJobId field.
 */
public typealias AwsIotJobId = String

/**
 Type definition for the AwsIotSqlVersion field.
 */
public typealias AwsIotSqlVersion = String

/**
 Type definition for the BehaviorMetric field.
 */
public typealias BehaviorMetric = String

/**
 Type definition for the BehaviorName field.
 */
public typealias BehaviorName = String

/**
 Type definition for the Behaviors field.
 */
public typealias Behaviors = [Behavior]

/**
 Type definition for the BillingGroupArn field.
 */
public typealias BillingGroupArn = String

/**
 Type definition for the BillingGroupDescription field.
 */
public typealias BillingGroupDescription = String

/**
 Type definition for the BillingGroupId field.
 */
public typealias BillingGroupId = String

/**
 Type definition for the BillingGroupName field.
 */
public typealias BillingGroupName = String

/**
 Type definition for the BillingGroupNameAndArnList field.
 */
public typealias BillingGroupNameAndArnList = [GroupNameAndArn]

/**
 Type definition for the Boolean field.
 */
public typealias Boolean = Bool

/**
 Type definition for the BucketName field.
 */
public typealias BucketName = String

/**
 Enumeration restricting the values of the CACertificateStatus field.
 */
public enum CACertificateStatus: String, Codable, CustomStringConvertible {
    case active = "ACTIVE"
    case inactive = "INACTIVE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: CACertificateStatus = .active
}

/**
 Enumeration restricting the values of the CACertificateUpdateAction field.
 */
public enum CACertificateUpdateAction: String, Codable, CustomStringConvertible {
    case deactivate = "DEACTIVATE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: CACertificateUpdateAction = .deactivate
}

/**
 Type definition for the CACertificates field.
 */
public typealias CACertificates = [CACertificate]

/**
 Type definition for the CanceledChecksCount field.
 */
public typealias CanceledChecksCount = Int

/**
 Type definition for the CanceledFindingsCount field.
 */
public typealias CanceledFindingsCount = Int

/**
 Type definition for the CanceledThings field.
 */
public typealias CanceledThings = Int

/**
 Enumeration restricting the values of the CannedAccessControlList field.
 */
public enum CannedAccessControlList: String, Codable, CustomStringConvertible {
    case authenticatedRead = "authenticated-read"
    case awsExecRead = "aws-exec-read"
    case bucketOwnerFullControl = "bucket-owner-full-control"
    case bucketOwnerRead = "bucket-owner-read"
    case logDeliveryWrite = "log-delivery-write"
    case `private` = "private"
    case publicRead = "public-read"
    case publicReadWrite = "public-read-write"

    public var description: String {
        return rawValue
    }
    
    public static let __default: CannedAccessControlList = .authenticatedRead
}

/**
 Type definition for the CertificateArn field.
 */
public typealias CertificateArn = String

/**
 Type definition for the CertificateId field.
 */
public typealias CertificateId = String

/**
 Type definition for the CertificateName field.
 */
public typealias CertificateName = String

/**
 Type definition for the CertificatePathOnDevice field.
 */
public typealias CertificatePathOnDevice = String

/**
 Type definition for the CertificatePem field.
 */
public typealias CertificatePem = String

/**
 Type definition for the CertificateSigningRequest field.
 */
public typealias CertificateSigningRequest = String

/**
 Enumeration restricting the values of the CertificateStatus field.
 */
public enum CertificateStatus: String, Codable, CustomStringConvertible {
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case pendingActivation = "PENDING_ACTIVATION"
    case pendingTransfer = "PENDING_TRANSFER"
    case registerInactive = "REGISTER_INACTIVE"
    case revoked = "REVOKED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: CertificateStatus = .active
}

/**
 Type definition for the Certificates field.
 */
public typealias Certificates = [Certificate]

/**
 Type definition for the ChannelName field.
 */
public typealias ChannelName = String

/**
 Type definition for the CheckCompliant field.
 */
public typealias CheckCompliant = Bool

/**
 Type definition for the Cidr field.
 */
public typealias Cidr = String

/**
 Type definition for the Cidrs field.
 */
public typealias Cidrs = [Cidr]

/**
 Type definition for the ClientId field.
 */
public typealias ClientId = String

/**
 Type definition for the ClientRequestToken field.
 */
public typealias ClientRequestToken = String

/**
 Type definition for the Code field.
 */
public typealias Code = String

/**
 Type definition for the CognitoIdentityPoolId field.
 */
public typealias CognitoIdentityPoolId = String

/**
 Type definition for the Comment field.
 */
public typealias Comment = String

/**
 Enumeration restricting the values of the ComparisonOperator field.
 */
public enum ComparisonOperator: String, Codable, CustomStringConvertible {
    case greaterThan = "greater-than"
    case greaterThanEquals = "greater-than-equals"
    case inCidrSet = "in-cidr-set"
    case inPortSet = "in-port-set"
    case lessThan = "less-than"
    case lessThanEquals = "less-than-equals"
    case notInCidrSet = "not-in-cidr-set"
    case notInPortSet = "not-in-port-set"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ComparisonOperator = .greaterThan
}

/**
 Type definition for the CompliantChecksCount field.
 */
public typealias CompliantChecksCount = Int

/**
 Type definition for the ConnectivityTimestamp field.
 */
public typealias ConnectivityTimestamp = Int

/**
 Type definition for the ConsecutiveDatapointsToAlarm field.
 */
public typealias ConsecutiveDatapointsToAlarm = Int

/**
 Type definition for the ConsecutiveDatapointsToClear field.
 */
public typealias ConsecutiveDatapointsToClear = Int

/**
 Type definition for the Count field.
 */
public typealias Count = Int

/**
 Type definition for the CreatedAtDate field.
 */
public typealias CreatedAtDate = String

/**
 Type definition for the CreationDate field.
 */
public typealias CreationDate = String

/**
 Type definition for the CredentialDurationSeconds field.
 */
public typealias CredentialDurationSeconds = Int

/**
 Type definition for the CustomerVersion field.
 */
public typealias CustomerVersion = Int

/**
 Type definition for the DateType field.
 */
public typealias DateType = String

/**
 Type definition for the DayOfMonth field.
 */
public typealias DayOfMonth = String

/**
 Enumeration restricting the values of the DayOfWeek field.
 */
public enum DayOfWeek: String, Codable, CustomStringConvertible {
    case fri = "FRI"
    case mon = "MON"
    case sat = "SAT"
    case sun = "SUN"
    case thu = "THU"
    case tue = "TUE"
    case wed = "WED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: DayOfWeek = .fri
}

/**
 Type definition for the DeleteAdditionalMetricsToRetain field.
 */
public typealias DeleteAdditionalMetricsToRetain = Bool

/**
 Type definition for the DeleteAlertTargets field.
 */
public typealias DeleteAlertTargets = Bool

/**
 Type definition for the DeleteBehaviors field.
 */
public typealias DeleteBehaviors = Bool

/**
 Type definition for the DeleteScheduledAudits field.
 */
public typealias DeleteScheduledAudits = Bool

/**
 Type definition for the DeleteStream field.
 */
public typealias DeleteStream = Bool

/**
 Type definition for the DeliveryStreamName field.
 */
public typealias DeliveryStreamName = String

/**
 Type definition for the DeprecationDate field.
 */
public typealias DeprecationDate = String

/**
 Type definition for the Description field.
 */
public typealias Description = String

/**
 Type definition for the DetailsKey field.
 */
public typealias DetailsKey = String

/**
 Type definition for the DetailsMap field.
 */
public typealias DetailsMap = [DetailsKey: DetailsValue]

/**
 Type definition for the DetailsValue field.
 */
public typealias DetailsValue = String

/**
 Enumeration restricting the values of the DeviceCertificateUpdateAction field.
 */
public enum DeviceCertificateUpdateAction: String, Codable, CustomStringConvertible {
    case deactivate = "DEACTIVATE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: DeviceCertificateUpdateAction = .deactivate
}

/**
 Type definition for the DeviceDefenderThingName field.
 */
public typealias DeviceDefenderThingName = String

/**
 Type definition for the DisableAllLogs field.
 */
public typealias DisableAllLogs = Bool

/**
 Type definition for the DurationSeconds field.
 */
public typealias DurationSeconds = Int

/**
 Enumeration restricting the values of the DynamicGroupStatus field.
 */
public enum DynamicGroupStatus: String, Codable, CustomStringConvertible {
    case active = "ACTIVE"
    case building = "BUILDING"
    case rebuilding = "REBUILDING"

    public var description: String {
        return rawValue
    }
    
    public static let __default: DynamicGroupStatus = .active
}

/**
 Enumeration restricting the values of the DynamoKeyType field.
 */
public enum DynamoKeyType: String, Codable, CustomStringConvertible {
    case number = "NUMBER"
    case string = "STRING"

    public var description: String {
        return rawValue
    }
    
    public static let __default: DynamoKeyType = .number
}

/**
 Type definition for the DynamoOperation field.
 */
public typealias DynamoOperation = String

/**
 Type definition for the EffectivePolicies field.
 */
public typealias EffectivePolicies = [EffectivePolicy]

/**
 Type definition for the ElasticsearchEndpoint field.
 */
public typealias ElasticsearchEndpoint = String

/**
 Type definition for the ElasticsearchId field.
 */
public typealias ElasticsearchId = String

/**
 Type definition for the ElasticsearchIndex field.
 */
public typealias ElasticsearchIndex = String

/**
 Type definition for the ElasticsearchType field.
 */
public typealias ElasticsearchType = String

/**
 Type definition for the Enabled field.
 */
public typealias Enabled = Bool

/**
 Type definition for the EndpointAddress field.
 */
public typealias EndpointAddress = String

/**
 Type definition for the EndpointType field.
 */
public typealias EndpointType = String

/**
 Type definition for the ErrorCode field.
 */
public typealias ErrorCode = String

/**
 Type definition for the ErrorMessage2 field.
 */
public typealias ErrorMessage2 = String

/**
 Type definition for the EvaluationStatistic field.
 */
public typealias EvaluationStatistic = String

/**
 Type definition for the EventConfigurations field.
 */
public typealias EventConfigurations = [EventType: Configuration]

/**
 Enumeration restricting the values of the EventType field.
 */
public enum EventType: String, Codable, CustomStringConvertible {
    case caCertificate = "CA_CERTIFICATE"
    case certificate = "CERTIFICATE"
    case job = "JOB"
    case jobExecution = "JOB_EXECUTION"
    case policy = "POLICY"
    case thing = "THING"
    case thingGroup = "THING_GROUP"
    case thingGroupHierarchy = "THING_GROUP_HIERARCHY"
    case thingGroupMembership = "THING_GROUP_MEMBERSHIP"
    case thingType = "THING_TYPE"
    case thingTypeAssociation = "THING_TYPE_ASSOCIATION"

    public var description: String {
        return rawValue
    }
    
    public static let __default: EventType = .caCertificate
}

/**
 Type definition for the ExecutionNamePrefix field.
 */
public typealias ExecutionNamePrefix = String

/**
 Type definition for the ExecutionNumber field.
 */
public typealias ExecutionNumber = Int

/**
 Type definition for the ExpectedVersion field.
 */
public typealias ExpectedVersion = Int

/**
 Type definition for the ExpiresInSec field.
 */
public typealias ExpiresInSec = Int

/**
 Type definition for the FailedChecksCount field.
 */
public typealias FailedChecksCount = Int

/**
 Type definition for the FailedFindingsCount field.
 */
public typealias FailedFindingsCount = Int

/**
 Type definition for the FailedThings field.
 */
public typealias FailedThings = Int

/**
 Type definition for the FileId field.
 */
public typealias FileId = Int

/**
 Type definition for the FileName field.
 */
public typealias FileName = String

/**
 Type definition for the FindingId field.
 */
public typealias FindingId = String

/**
 Type definition for the FindingIds field.
 */
public typealias FindingIds = [FindingId]

/**
 Type definition for the FirehoseSeparator field.
 */
public typealias FirehoseSeparator = String

/**
 Type definition for the Flag field.
 */
public typealias Flag = Bool

/**
 Type definition for the ForceDelete field.
 */
public typealias ForceDelete = Bool

/**
 Type definition for the ForceDeleteAWSJob field.
 */
public typealias ForceDeleteAWSJob = Bool

/**
 Type definition for the ForceFlag field.
 */
public typealias ForceFlag = Bool

/**
 Type definition for the Forced field.
 */
public typealias Forced = Bool

/**
 Type definition for the FunctionArn field.
 */
public typealias FunctionArn = String

/**
 Type definition for the GEMaxResults field.
 */
public typealias GEMaxResults = Int

/**
 Type definition for the GenerationId field.
 */
public typealias GenerationId = String

/**
 Type definition for the HashAlgorithm field.
 */
public typealias HashAlgorithm = String

/**
 Type definition for the HashKeyField field.
 */
public typealias HashKeyField = String

/**
 Type definition for the HashKeyValue field.
 */
public typealias HashKeyValue = String

/**
 Type definition for the InProgressChecksCount field.
 */
public typealias InProgressChecksCount = Int

/**
 Type definition for the InProgressThings field.
 */
public typealias InProgressThings = Int

/**
 Type definition for the InProgressTimeoutInMinutes field.
 */
public typealias InProgressTimeoutInMinutes = Int

/**
 Type definition for the IncrementFactor field.
 */
public typealias IncrementFactor = Double

/**
 Type definition for the IndexName field.
 */
public typealias IndexName = String

/**
 Type definition for the IndexNamesList field.
 */
public typealias IndexNamesList = [IndexName]

/**
 Type definition for the IndexSchema field.
 */
public typealias IndexSchema = String

/**
 Enumeration restricting the values of the IndexStatus field.
 */
public enum IndexStatus: String, Codable, CustomStringConvertible {
    case active = "ACTIVE"
    case building = "BUILDING"
    case rebuilding = "REBUILDING"

    public var description: String {
        return rawValue
    }
    
    public static let __default: IndexStatus = .active
}

/**
 Type definition for the InlineDocument field.
 */
public typealias InlineDocument = String

/**
 Type definition for the InputName field.
 */
public typealias InputName = String

/**
 Type definition for the IsAuthenticated field.
 */
public typealias IsAuthenticated = Bool

/**
 Type definition for the IsDefaultVersion field.
 */
public typealias IsDefaultVersion = Bool

/**
 Type definition for the IsDisabled field.
 */
public typealias IsDisabled = Bool

/**
 Type definition for the JobArn field.
 */
public typealias JobArn = String

/**
 Type definition for the JobDescription field.
 */
public typealias JobDescription = String

/**
 Type definition for the JobDocument field.
 */
public typealias JobDocument = String

/**
 Type definition for the JobDocumentSource field.
 */
public typealias JobDocumentSource = String

/**
 Enumeration restricting the values of the JobExecutionFailureType field.
 */
public enum JobExecutionFailureType: String, Codable, CustomStringConvertible {
    case all = "ALL"
    case failed = "FAILED"
    case rejected = "REJECTED"
    case timedOut = "TIMED_OUT"

    public var description: String {
        return rawValue
    }
    
    public static let __default: JobExecutionFailureType = .all
}

/**
 Enumeration restricting the values of the JobExecutionStatus field.
 */
public enum JobExecutionStatus: String, Codable, CustomStringConvertible {
    case canceled = "CANCELED"
    case failed = "FAILED"
    case inProgress = "IN_PROGRESS"
    case queued = "QUEUED"
    case rejected = "REJECTED"
    case removed = "REMOVED"
    case succeeded = "SUCCEEDED"
    case timedOut = "TIMED_OUT"

    public var description: String {
        return rawValue
    }
    
    public static let __default: JobExecutionStatus = .canceled
}

/**
 Type definition for the JobExecutionSummaryForJobList field.
 */
public typealias JobExecutionSummaryForJobList = [JobExecutionSummaryForJob]

/**
 Type definition for the JobExecutionSummaryForThingList field.
 */
public typealias JobExecutionSummaryForThingList = [JobExecutionSummaryForThing]

/**
 Type definition for the JobId field.
 */
public typealias JobId = String

/**
 Enumeration restricting the values of the JobStatus field.
 */
public enum JobStatus: String, Codable, CustomStringConvertible {
    case canceled = "CANCELED"
    case completed = "COMPLETED"
    case deletionInProgress = "DELETION_IN_PROGRESS"
    case inProgress = "IN_PROGRESS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: JobStatus = .canceled
}

/**
 Type definition for the JobSummaryList field.
 */
public typealias JobSummaryList = [JobSummary]

/**
 Type definition for the JobTargets field.
 */
public typealias JobTargets = [TargetArn]

/**
 Type definition for the JsonDocument field.
 */
public typealias JsonDocument = String

/**
 Type definition for the Key field.
 */
public typealias Key = String

/**
 Type definition for the KeyName field.
 */
public typealias KeyName = String

/**
 Type definition for the KeyValue field.
 */
public typealias KeyValue = String

/**
 Type definition for the LaserMaxResults field.
 */
public typealias LaserMaxResults = Int

/**
 Type definition for the LastModifiedDate field.
 */
public typealias LastModifiedDate = String

/**
 Enumeration restricting the values of the LogLevel field.
 */
public enum LogLevel: String, Codable, CustomStringConvertible {
    case debug = "DEBUG"
    case disabled = "DISABLED"
    case error = "ERROR"
    case info = "INFO"
    case warn = "WARN"

    public var description: String {
        return rawValue
    }
    
    public static let __default: LogLevel = .debug
}

/**
 Type definition for the LogTargetConfigurations field.
 */
public typealias LogTargetConfigurations = [LogTargetConfiguration]

/**
 Type definition for the LogTargetName field.
 */
public typealias LogTargetName = String

/**
 Enumeration restricting the values of the LogTargetType field.
 */
public enum LogTargetType: String, Codable, CustomStringConvertible {
    case `default` = "DEFAULT"
    case thingGroup = "THING_GROUP"

    public var description: String {
        return rawValue
    }
    
    public static let __default: LogTargetType = .`default`
}

/**
 Type definition for the Marker field.
 */
public typealias Marker = String

/**
 Type definition for the MaxJobExecutionsPerMin field.
 */
public typealias MaxJobExecutionsPerMin = Int

/**
 Type definition for the MaxResults field.
 */
public typealias MaxResults = Int

/**
 Type definition for the MaximumPerMinute field.
 */
public typealias MaximumPerMinute = Int

/**
 Type definition for the Message field.
 */
public typealias Message = String

/**
 Enumeration restricting the values of the MessageFormat field.
 */
public enum MessageFormat: String, Codable, CustomStringConvertible {
    case json = "JSON"
    case raw = "RAW"

    public var description: String {
        return rawValue
    }
    
    public static let __default: MessageFormat = .json
}

/**
 Type definition for the MessageId field.
 */
public typealias MessageId = String

/**
 Type definition for the MinimumNumberOfExecutedThings field.
 */
public typealias MinimumNumberOfExecutedThings = Int

/**
 Type definition for the MissingContextValue field.
 */
public typealias MissingContextValue = String

/**
 Type definition for the MissingContextValues field.
 */
public typealias MissingContextValues = [MissingContextValue]

/**
 Type definition for the MitigationActionArn field.
 */
public typealias MitigationActionArn = String

/**
 Type definition for the MitigationActionId field.
 */
public typealias MitigationActionId = String

/**
 Type definition for the MitigationActionIdentifierList field.
 */
public typealias MitigationActionIdentifierList = [MitigationActionIdentifier]

/**
 Type definition for the MitigationActionList field.
 */
public typealias MitigationActionList = [MitigationAction]

/**
 Type definition for the MitigationActionName field.
 */
public typealias MitigationActionName = String

/**
 Type definition for the MitigationActionNameList field.
 */
public typealias MitigationActionNameList = [MitigationActionName]

/**
 Enumeration restricting the values of the MitigationActionType field.
 */
public enum MitigationActionType: String, Codable, CustomStringConvertible {
    case addThingsToThingGroup = "ADD_THINGS_TO_THING_GROUP"
    case enableIotLogging = "ENABLE_IOT_LOGGING"
    case publishFindingToSns = "PUBLISH_FINDING_TO_SNS"
    case replaceDefaultPolicyVersion = "REPLACE_DEFAULT_POLICY_VERSION"
    case updateCaCertificate = "UPDATE_CA_CERTIFICATE"
    case updateDeviceCertificate = "UPDATE_DEVICE_CERTIFICATE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: MitigationActionType = .addThingsToThingGroup
}

/**
 Type definition for the NextToken field.
 */
public typealias NextToken = String

/**
 Type definition for the NonCompliantChecksCount field.
 */
public typealias NonCompliantChecksCount = Int

/**
 Type definition for the NonCompliantResourcesCount field.
 */
public typealias NonCompliantResourcesCount = Int

/**
 Type definition for the NumberOfThings field.
 */
public typealias NumberOfThings = Int

/**
 Type definition for the OTAUpdateArn field.
 */
public typealias OTAUpdateArn = String

/**
 Type definition for the OTAUpdateDescription field.
 */
public typealias OTAUpdateDescription = String

/**
 Type definition for the OTAUpdateErrorMessage field.
 */
public typealias OTAUpdateErrorMessage = String

/**
 Type definition for the OTAUpdateFileVersion field.
 */
public typealias OTAUpdateFileVersion = String

/**
 Type definition for the OTAUpdateFiles field.
 */
public typealias OTAUpdateFiles = [OTAUpdateFile]

/**
 Type definition for the OTAUpdateId field.
 */
public typealias OTAUpdateId = String

/**
 Enumeration restricting the values of the OTAUpdateStatus field.
 */
public enum OTAUpdateStatus: String, Codable, CustomStringConvertible {
    case createComplete = "CREATE_COMPLETE"
    case createFailed = "CREATE_FAILED"
    case createInProgress = "CREATE_IN_PROGRESS"
    case createPending = "CREATE_PENDING"

    public var description: String {
        return rawValue
    }
    
    public static let __default: OTAUpdateStatus = .createComplete
}

/**
 Type definition for the OTAUpdatesSummary field.
 */
public typealias OTAUpdatesSummary = [OTAUpdateSummary]

/**
 Type definition for the OptionalVersion field.
 */
public typealias OptionalVersion = Int

/**
 Type definition for the OutgoingCertificates field.
 */
public typealias OutgoingCertificates = [OutgoingCertificate]

/**
 Type definition for the OverrideDynamicGroups field.
 */
public typealias OverrideDynamicGroups = Bool

/**
 Type definition for the PageSize field.
 */
public typealias PageSize = Int

/**
 Type definition for the Parameter field.
 */
public typealias Parameter = String

/**
 Type definition for the Parameters field.
 */
public typealias Parameters = [Parameter: Value]

/**
 Type definition for the PartitionKey field.
 */
public typealias PartitionKey = String

/**
 Type definition for the PayloadField field.
 */
public typealias PayloadField = String

/**
 Type definition for the Percentage field.
 */
public typealias Percentage = Int

/**
 Type definition for the Platform field.
 */
public typealias Platform = String

/**
 Type definition for the Policies field.
 */
public typealias Policies = [Policy]

/**
 Type definition for the PolicyArn field.
 */
public typealias PolicyArn = String

/**
 Type definition for the PolicyDocument field.
 */
public typealias PolicyDocument = String

/**
 Type definition for the PolicyDocuments field.
 */
public typealias PolicyDocuments = [PolicyDocument]

/**
 Type definition for the PolicyName field.
 */
public typealias PolicyName = String

/**
 Type definition for the PolicyNames field.
 */
public typealias PolicyNames = [PolicyName]

/**
 Type definition for the PolicyTarget field.
 */
public typealias PolicyTarget = String

/**
 Type definition for the PolicyTargets field.
 */
public typealias PolicyTargets = [PolicyTarget]

/**
 Enumeration restricting the values of the PolicyTemplateName field.
 */
public enum PolicyTemplateName: String, Codable, CustomStringConvertible {
    case blankPolicy = "BLANK_POLICY"

    public var description: String {
        return rawValue
    }
    
    public static let __default: PolicyTemplateName = .blankPolicy
}

/**
 Type definition for the PolicyVersionId field.
 */
public typealias PolicyVersionId = String

/**
 Type definition for the PolicyVersions field.
 */
public typealias PolicyVersions = [PolicyVersion]

/**
 Type definition for the Port field.
 */
public typealias Port = Int

/**
 Type definition for the Ports field.
 */
public typealias Ports = [Port]

/**
 Type definition for the Prefix field.
 */
public typealias Prefix = String

/**
 Type definition for the Principal field.
 */
public typealias Principal = String

/**
 Type definition for the PrincipalArn field.
 */
public typealias PrincipalArn = String

/**
 Type definition for the PrincipalId field.
 */
public typealias PrincipalId = String

/**
 Type definition for the Principals field.
 */
public typealias Principals = [PrincipalArn]

/**
 Type definition for the PrivateKey field.
 */
public typealias PrivateKey = String

/**
 Type definition for the ProcessingTargetName field.
 */
public typealias ProcessingTargetName = String

/**
 Type definition for the ProcessingTargetNameList field.
 */
public typealias ProcessingTargetNameList = [ProcessingTargetName]

/**
 Type definition for the PublicKey field.
 */
public typealias PublicKey = String

/**
 Type definition for the PublicKeyMap field.
 */
public typealias PublicKeyMap = [KeyName: KeyValue]

/**
 Type definition for the Qos field.
 */
public typealias Qos = Int

/**
 Type definition for the QueryMaxResults field.
 */
public typealias QueryMaxResults = Int

/**
 Type definition for the QueryString field.
 */
public typealias QueryString = String

/**
 Type definition for the QueryVersion field.
 */
public typealias QueryVersion = String

/**
 Type definition for the QueueUrl field.
 */
public typealias QueueUrl = String

/**
 Type definition for the QueuedThings field.
 */
public typealias QueuedThings = Int

/**
 Type definition for the RangeKeyField field.
 */
public typealias RangeKeyField = String

/**
 Type definition for the RangeKeyValue field.
 */
public typealias RangeKeyValue = String

/**
 Type definition for the ReasonCode field.
 */
public typealias ReasonCode = String

/**
 Type definition for the ReasonForNonCompliance field.
 */
public typealias ReasonForNonCompliance = String

/**
 Type definition for the ReasonForNonComplianceCode field.
 */
public typealias ReasonForNonComplianceCode = String

/**
 Type definition for the ReasonForNonComplianceCodes field.
 */
public typealias ReasonForNonComplianceCodes = [ReasonForNonComplianceCode]

/**
 Type definition for the Recursive field.
 */
public typealias Recursive = Bool

/**
 Type definition for the RecursiveWithoutDefault field.
 */
public typealias RecursiveWithoutDefault = Bool

/**
 Type definition for the RegistrationCode field.
 */
public typealias RegistrationCode = String

/**
 Type definition for the RegistryMaxResults field.
 */
public typealias RegistryMaxResults = Int

/**
 Type definition for the RegistryS3BucketName field.
 */
public typealias RegistryS3BucketName = String

/**
 Type definition for the RegistryS3KeyName field.
 */
public typealias RegistryS3KeyName = String

/**
 Type definition for the RejectedThings field.
 */
public typealias RejectedThings = Int

/**
 Type definition for the RelatedResources field.
 */
public typealias RelatedResources = [RelatedResource]

/**
 Type definition for the RemoveAutoRegistration field.
 */
public typealias RemoveAutoRegistration = Bool

/**
 Type definition for the RemoveThingType field.
 */
public typealias RemoveThingType = Bool

/**
 Type definition for the RemovedThings field.
 */
public typealias RemovedThings = Int

/**
 Enumeration restricting the values of the ReportType field.
 */
public enum ReportType: String, Codable, CustomStringConvertible {
    case errors = "ERRORS"
    case results = "RESULTS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ReportType = .errors
}

/**
 Type definition for the Resource field.
 */
public typealias Resource = String

/**
 Type definition for the ResourceArn2 field.
 */
public typealias ResourceArn2 = String

/**
 Type definition for the ResourceArns field.
 */
public typealias ResourceArns = [ResourceLogicalId: ResourceArn2]

/**
 Type definition for the ResourceLogicalId field.
 */
public typealias ResourceLogicalId = String

/**
 Enumeration restricting the values of the ResourceType field.
 */
public enum ResourceType: String, Codable, CustomStringConvertible {
    case accountSettings = "ACCOUNT_SETTINGS"
    case caCertificate = "CA_CERTIFICATE"
    case clientId = "CLIENT_ID"
    case cognitoIdentityPool = "COGNITO_IDENTITY_POOL"
    case deviceCertificate = "DEVICE_CERTIFICATE"
    case iotPolicy = "IOT_POLICY"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ResourceType = .accountSettings
}

/**
 Type definition for the Resources field.
 */
public typealias Resources = [Resource]

/**
 Type definition for the RoleAlias field.
 */
public typealias RoleAlias = String

/**
 Type definition for the RoleAliasArn field.
 */
public typealias RoleAliasArn = String

/**
 Type definition for the RoleAliases field.
 */
public typealias RoleAliases = [RoleAlias]

/**
 Type definition for the RoleArn field.
 */
public typealias RoleArn = String

/**
 Type definition for the RolloutRatePerMinute field.
 */
public typealias RolloutRatePerMinute = Int

/**
 Type definition for the RuleArn field.
 */
public typealias RuleArn = String

/**
 Type definition for the RuleName field.
 */
public typealias RuleName = String

/**
 Type definition for the S3Bucket field.
 */
public typealias S3Bucket = String

/**
 Type definition for the S3FileUrl field.
 */
public typealias S3FileUrl = String

/**
 Type definition for the S3FileUrlList field.
 */
public typealias S3FileUrlList = [S3FileUrl]

/**
 Type definition for the S3Key field.
 */
public typealias S3Key = String

/**
 Type definition for the S3Version field.
 */
public typealias S3Version = String

/**
 Type definition for the SQL field.
 */
public typealias SQL = String

/**
 Type definition for the SalesforceEndpoint field.
 */
public typealias SalesforceEndpoint = String

/**
 Type definition for the SalesforceToken field.
 */
public typealias SalesforceToken = String

/**
 Type definition for the ScheduledAuditArn field.
 */
public typealias ScheduledAuditArn = String

/**
 Type definition for the ScheduledAuditMetadataList field.
 */
public typealias ScheduledAuditMetadataList = [ScheduledAuditMetadata]

/**
 Type definition for the ScheduledAuditName field.
 */
public typealias ScheduledAuditName = String

/**
 Type definition for the SearchableAttributes field.
 */
public typealias SearchableAttributes = [AttributeName]

/**
 Type definition for the Seconds field.
 */
public typealias Seconds = Int

/**
 Type definition for the SecurityProfileArn field.
 */
public typealias SecurityProfileArn = String

/**
 Type definition for the SecurityProfileDescription field.
 */
public typealias SecurityProfileDescription = String

/**
 Type definition for the SecurityProfileIdentifiers field.
 */
public typealias SecurityProfileIdentifiers = [SecurityProfileIdentifier]

/**
 Type definition for the SecurityProfileName field.
 */
public typealias SecurityProfileName = String

/**
 Type definition for the SecurityProfileTargetArn field.
 */
public typealias SecurityProfileTargetArn = String

/**
 Type definition for the SecurityProfileTargetMappings field.
 */
public typealias SecurityProfileTargetMappings = [SecurityProfileTargetMapping]

/**
 Type definition for the SecurityProfileTargets field.
 */
public typealias SecurityProfileTargets = [SecurityProfileTarget]

/**
 Type definition for the SetAsActive field.
 */
public typealias SetAsActive = Bool

/**
 Type definition for the SetAsActiveFlag field.
 */
public typealias SetAsActiveFlag = Bool

/**
 Type definition for the SetAsDefault field.
 */
public typealias SetAsDefault = Bool

/**
 Type definition for the Signature field.
 */
public typealias Signature = Data

/**
 Type definition for the SignatureAlgorithm field.
 */
public typealias SignatureAlgorithm = String

/**
 Type definition for the SigningJobId field.
 */
public typealias SigningJobId = String

/**
 Type definition for the SigningProfileName field.
 */
public typealias SigningProfileName = String

/**
 Type definition for the SkippedFindingsCount field.
 */
public typealias SkippedFindingsCount = Int

/**
 Type definition for the SkyfallMaxResults field.
 */
public typealias SkyfallMaxResults = Int

/**
 Type definition for the SnsTopicArn field.
 */
public typealias SnsTopicArn = String

/**
 Type definition for the StateMachineName field.
 */
public typealias StateMachineName = String

/**
 Type definition for the StateReason field.
 */
public typealias StateReason = String

/**
 Type definition for the StateValue field.
 */
public typealias StateValue = String

/**
 Enumeration restricting the values of the Status field.
 */
public enum Status: String, Codable, CustomStringConvertible {
    case cancelled = "Cancelled"
    case cancelling = "Cancelling"
    case completed = "Completed"
    case failed = "Failed"
    case inprogress = "InProgress"

    public var description: String {
        return rawValue
    }
    
    public static let __default: Status = .cancelled
}

/**
 Type definition for the StreamArn field.
 */
public typealias StreamArn = String

/**
 Type definition for the StreamDescription field.
 */
public typealias StreamDescription = String

/**
 Type definition for the StreamFiles field.
 */
public typealias StreamFiles = [StreamFile]

/**
 Type definition for the StreamId field.
 */
public typealias StreamId = String

/**
 Type definition for the StreamName field.
 */
public typealias StreamName = String

/**
 Type definition for the StreamVersion field.
 */
public typealias StreamVersion = Int

/**
 Type definition for the StreamsSummary field.
 */
public typealias StreamsSummary = [StreamSummary]

/**
 Type definition for the StringMap field.
 */
public typealias StringMap = [String: String]

/**
 Type definition for the SucceededFindingsCount field.
 */
public typealias SucceededFindingsCount = Int

/**
 Type definition for the SucceededThings field.
 */
public typealias SucceededThings = Int

/**
 Type definition for the TableName field.
 */
public typealias TableName = String

/**
 Type definition for the TagKey field.
 */
public typealias TagKey = String

/**
 Type definition for the TagKeyList field.
 */
public typealias TagKeyList = [TagKey]

/**
 Type definition for the TagList field.
 */
public typealias TagList = [Tag]

/**
 Type definition for the TagValue field.
 */
public typealias TagValue = String

/**
 Type definition for the Target field.
 */
public typealias Target = String

/**
 Type definition for the TargetArn field.
 */
public typealias TargetArn = String

/**
 Type definition for the TargetAuditCheckNames field.
 */
public typealias TargetAuditCheckNames = [AuditCheckName]

/**
 Enumeration restricting the values of the TargetSelection field.
 */
public enum TargetSelection: String, Codable, CustomStringConvertible {
    case continuous = "CONTINUOUS"
    case snapshot = "SNAPSHOT"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TargetSelection = .continuous
}

/**
 Type definition for the Targets field.
 */
public typealias Targets = [Target]

/**
 Type definition for the TaskId field.
 */
public typealias TaskId = String

/**
 Type definition for the TaskIdList field.
 */
public typealias TaskIdList = [TaskId]

/**
 Type definition for the TemplateBody field.
 */
public typealias TemplateBody = String

/**
 Type definition for the ThingArn field.
 */
public typealias ThingArn = String

/**
 Type definition for the ThingAttributeList field.
 */
public typealias ThingAttributeList = [ThingAttribute]

/**
 Enumeration restricting the values of the ThingConnectivityIndexingMode field.
 */
public enum ThingConnectivityIndexingMode: String, Codable, CustomStringConvertible {
    case off = "OFF"
    case status = "STATUS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ThingConnectivityIndexingMode = .off
}

/**
 Type definition for the ThingDocumentList field.
 */
public typealias ThingDocumentList = [ThingDocument]

/**
 Type definition for the ThingGroupArn field.
 */
public typealias ThingGroupArn = String

/**
 Type definition for the ThingGroupDescription field.
 */
public typealias ThingGroupDescription = String

/**
 Type definition for the ThingGroupDocumentList field.
 */
public typealias ThingGroupDocumentList = [ThingGroupDocument]

/**
 Type definition for the ThingGroupId field.
 */
public typealias ThingGroupId = String

/**
 Enumeration restricting the values of the ThingGroupIndexingMode field.
 */
public enum ThingGroupIndexingMode: String, Codable, CustomStringConvertible {
    case off = "OFF"
    case on = "ON"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ThingGroupIndexingMode = .off
}

/**
 Type definition for the ThingGroupList field.
 */
public typealias ThingGroupList = [ThingGroupName]

/**
 Type definition for the ThingGroupName field.
 */
public typealias ThingGroupName = String

/**
 Type definition for the ThingGroupNameAndArnList field.
 */
public typealias ThingGroupNameAndArnList = [GroupNameAndArn]

/**
 Type definition for the ThingGroupNameList field.
 */
public typealias ThingGroupNameList = [ThingGroupName]

/**
 Type definition for the ThingGroupNames field.
 */
public typealias ThingGroupNames = [ThingGroupName]

/**
 Type definition for the ThingId field.
 */
public typealias ThingId = String

/**
 Enumeration restricting the values of the ThingIndexingMode field.
 */
public enum ThingIndexingMode: String, Codable, CustomStringConvertible {
    case off = "OFF"
    case registry = "REGISTRY"
    case registryAndShadow = "REGISTRY_AND_SHADOW"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ThingIndexingMode = .off
}

/**
 Type definition for the ThingName field.
 */
public typealias ThingName = String

/**
 Type definition for the ThingNameList field.
 */
public typealias ThingNameList = [ThingName]

/**
 Type definition for the ThingTypeArn field.
 */
public typealias ThingTypeArn = String

/**
 Type definition for the ThingTypeDescription field.
 */
public typealias ThingTypeDescription = String

/**
 Type definition for the ThingTypeId field.
 */
public typealias ThingTypeId = String

/**
 Type definition for the ThingTypeList field.
 */
public typealias ThingTypeList = [ThingTypeDefinition]

/**
 Type definition for the ThingTypeName field.
 */
public typealias ThingTypeName = String

/**
 Type definition for the TimedOutThings field.
 */
public typealias TimedOutThings = Int

/**
 Type definition for the Timestamp field.
 */
public typealias Timestamp = String

/**
 Type definition for the Token field.
 */
public typealias Token = String

/**
 Type definition for the TokenKeyName field.
 */
public typealias TokenKeyName = String

/**
 Type definition for the TokenSignature field.
 */
public typealias TokenSignature = String

/**
 Type definition for the Topic field.
 */
public typealias Topic = String

/**
 Type definition for the TopicPattern field.
 */
public typealias TopicPattern = String

/**
 Type definition for the TopicRuleList field.
 */
public typealias TopicRuleList = [TopicRuleListItem]

/**
 Type definition for the TotalChecksCount field.
 */
public typealias TotalChecksCount = Int

/**
 Type definition for the TotalFindingsCount field.
 */
public typealias TotalFindingsCount = Int

/**
 Type definition for the TotalResourcesCount field.
 */
public typealias TotalResourcesCount = Int

/**
 Type definition for the UndoDeprecate field.
 */
public typealias UndoDeprecate = Bool

/**
 Type definition for the UnsignedLong field.
 */
public typealias UnsignedLong = Int

/**
 Type definition for the UseBase64 field.
 */
public typealias UseBase64 = Bool

/**
 Type definition for the Valid field.
 */
public typealias Valid = Bool

/**
 Type definition for the ValidationErrors field.
 */
public typealias ValidationErrors = [ValidationError]

/**
 Type definition for the Value field.
 */
public typealias Value = String

/**
 Type definition for the Version field.
 */
public typealias Version = Int

/**
 Type definition for the VersionNumber field.
 */
public typealias VersionNumber = Int

/**
 Enumeration restricting the values of the ViolationEventType field.
 */
public enum ViolationEventType: String, Codable, CustomStringConvertible {
    case alarmCleared = "alarm-cleared"
    case alarmInvalidated = "alarm-invalidated"
    case inAlarm = "in-alarm"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ViolationEventType = .alarmCleared
}

/**
 Type definition for the ViolationEvents field.
 */
public typealias ViolationEvents = [ViolationEvent]

/**
 Type definition for the ViolationId field.
 */
public typealias ViolationId = String

/**
 Type definition for the WaitingForDataCollectionChecksCount field.
 */
public typealias WaitingForDataCollectionChecksCount = Int

/**
 Type definition for the ErrorMessage1 field.
 */
public typealias ErrorMessage1 = String

/**
 Type definition for the ResourceArn1 field.
 */
public typealias ResourceArn1 = String

/**
 Type definition for the ResourceId field.
 */
public typealias ResourceId = String

/**
 Validation for the AbortCriteriaList field.
*/
extension Array where Element == IotModel.AbortCriteria {
    public func validateAsAbortCriteriaList() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to AbortCriteriaList violated the minimum length constraint.")
        }

    }
}

/**
 Validation for the AbortThresholdPercentage field.
*/
extension IotModel.AbortThresholdPercentage {
    public func validateAsAbortThresholdPercentage() throws {

        if self > 100.0 {
            throw IotCodingError.validationError(reason: "The provided value to AbortThresholdPercentage violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the ActionList field.
*/
extension Array where Element == IotModel.Action {
    public func validateAsActionList() throws {
        if self.count < 0 {
            throw IotCodingError.validationError(reason: "The provided value to ActionList violated the minimum length constraint.")
        }

        if self.count > 10 {
            throw IotCodingError.validationError(reason: "The provided value to ActionList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the AggregationField field.
*/
extension IotModel.AggregationField {
    public func validateAsAggregationField() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to AggregationField violated the minimum length constraint.")
        }

    }
}

/**
 Validation for the AttributeName field.
*/
extension IotModel.AttributeName {
    public func validateAsAttributeName() throws {

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to AttributeName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9_.,@/:#-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to AttributeName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the AttributeValue field.
*/
extension IotModel.AttributeValue {
    public func validateAsAttributeValue() throws {

        if self.count > 800 {
            throw IotCodingError.validationError(reason: "The provided value to AttributeValue violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9_.,@/:#-]*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to AttributeValue violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the AuditMitigationActionsTaskId field.
*/
extension IotModel.AuditMitigationActionsTaskId {
    public func validateAsAuditMitigationActionsTaskId() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to AuditMitigationActionsTaskId violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to AuditMitigationActionsTaskId violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9_-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to AuditMitigationActionsTaskId violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the AuditTaskId field.
*/
extension IotModel.AuditTaskId {
    public func validateAsAuditTaskId() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to AuditTaskId violated the minimum length constraint.")
        }

        if self.count > 40 {
            throw IotCodingError.validationError(reason: "The provided value to AuditTaskId violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9\\-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to AuditTaskId violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the AuthInfos field.
*/
extension Array where Element == IotModel.AuthInfo {
    public func validateAsAuthInfos() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to AuthInfos violated the minimum length constraint.")
        }

        if self.count > 10 {
            throw IotCodingError.validationError(reason: "The provided value to AuthInfos violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the AuthorizerName field.
*/
extension IotModel.AuthorizerName {
    public func validateAsAuthorizerName() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to AuthorizerName violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to AuthorizerName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[\\w=,@-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to AuthorizerName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the AwsAccountId field.
*/
extension IotModel.AwsAccountId {
    public func validateAsAwsAccountId() throws {
        if self.count < 12 {
            throw IotCodingError.validationError(reason: "The provided value to AwsAccountId violated the minimum length constraint.")
        }

        if self.count > 12 {
            throw IotCodingError.validationError(reason: "The provided value to AwsAccountId violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[0-9]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to AwsAccountId violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the BehaviorName field.
*/
extension IotModel.BehaviorName {
    public func validateAsBehaviorName() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to BehaviorName violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to BehaviorName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9:_-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to BehaviorName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the Behaviors field.
*/
extension Array where Element == IotModel.Behavior {
    public func validateAsBehaviors() throws {

        if self.count > 100 {
            throw IotCodingError.validationError(reason: "The provided value to Behaviors violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the BillingGroupDescription field.
*/
extension IotModel.BillingGroupDescription {
    public func validateAsBillingGroupDescription() throws {

        if self.count > 2028 {
            throw IotCodingError.validationError(reason: "The provided value to BillingGroupDescription violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[\\p{Graph}\\x20]*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to BillingGroupDescription violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the BillingGroupId field.
*/
extension IotModel.BillingGroupId {
    public func validateAsBillingGroupId() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to BillingGroupId violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to BillingGroupId violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9\\-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to BillingGroupId violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the BillingGroupName field.
*/
extension IotModel.BillingGroupName {
    public func validateAsBillingGroupName() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to BillingGroupName violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to BillingGroupName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9:_-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to BillingGroupName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the CertificateId field.
*/
extension IotModel.CertificateId {
    public func validateAsCertificateId() throws {
        if self.count < 64 {
            throw IotCodingError.validationError(reason: "The provided value to CertificateId violated the minimum length constraint.")
        }

        if self.count > 64 {
            throw IotCodingError.validationError(reason: "The provided value to CertificateId violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "(0x)?[a-fA-F0-9]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to CertificateId violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the CertificatePem field.
*/
extension IotModel.CertificatePem {
    public func validateAsCertificatePem() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to CertificatePem violated the minimum length constraint.")
        }

        if self.count > 65536 {
            throw IotCodingError.validationError(reason: "The provided value to CertificatePem violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the CertificateSigningRequest field.
*/
extension IotModel.CertificateSigningRequest {
    public func validateAsCertificateSigningRequest() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to CertificateSigningRequest violated the minimum length constraint.")
        }

    }
}

/**
 Validation for the Cidr field.
*/
extension IotModel.Cidr {
    public func validateAsCidr() throws {
        if self.count < 2 {
            throw IotCodingError.validationError(reason: "The provided value to Cidr violated the minimum length constraint.")
        }

        if self.count > 43 {
            throw IotCodingError.validationError(reason: "The provided value to Cidr violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-fA-F0-9:\\.\\/]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to Cidr violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ClientRequestToken field.
*/
extension IotModel.ClientRequestToken {
    public func validateAsClientRequestToken() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to ClientRequestToken violated the minimum length constraint.")
        }

        if self.count > 64 {
            throw IotCodingError.validationError(reason: "The provided value to ClientRequestToken violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^[a-zA-Z0-9-_]+$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to ClientRequestToken violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the Comment field.
*/
extension IotModel.Comment {
    public func validateAsComment() throws {

        if self.count > 2028 {
            throw IotCodingError.validationError(reason: "The provided value to Comment violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[^\\p{C}]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to Comment violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ConsecutiveDatapointsToAlarm field.
*/
extension IotModel.ConsecutiveDatapointsToAlarm {
    public func validateAsConsecutiveDatapointsToAlarm() throws {
        if self < 1 {
            throw IotCodingError.validationError(reason: "The provided value to ConsecutiveDatapointsToAlarm violated the minimum range constraint.")
        }

        if self > 10 {
            throw IotCodingError.validationError(reason: "The provided value to ConsecutiveDatapointsToAlarm violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the ConsecutiveDatapointsToClear field.
*/
extension IotModel.ConsecutiveDatapointsToClear {
    public func validateAsConsecutiveDatapointsToClear() throws {
        if self < 1 {
            throw IotCodingError.validationError(reason: "The provided value to ConsecutiveDatapointsToClear violated the minimum range constraint.")
        }

        if self > 10 {
            throw IotCodingError.validationError(reason: "The provided value to ConsecutiveDatapointsToClear violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the CredentialDurationSeconds field.
*/
extension IotModel.CredentialDurationSeconds {
    public func validateAsCredentialDurationSeconds() throws {
        if self < 900 {
            throw IotCodingError.validationError(reason: "The provided value to CredentialDurationSeconds violated the minimum range constraint.")
        }

        if self > 3600 {
            throw IotCodingError.validationError(reason: "The provided value to CredentialDurationSeconds violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the CustomerVersion field.
*/
extension IotModel.CustomerVersion {
    public func validateAsCustomerVersion() throws {
        if self < 1 {
            throw IotCodingError.validationError(reason: "The provided value to CustomerVersion violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the DayOfMonth field.
*/
extension IotModel.DayOfMonth {
    public func validateAsDayOfMonth() throws {
        guard let matchingRange = self.range(of: "^([1-9]|[12][0-9]|3[01])$|^LAST$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to DayOfMonth violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the DetailsKey field.
*/
extension IotModel.DetailsKey {
    public func validateAsDetailsKey() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to DetailsKey violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to DetailsKey violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9:_-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to DetailsKey violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the DetailsValue field.
*/
extension IotModel.DetailsValue {
    public func validateAsDetailsValue() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to DetailsValue violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw IotCodingError.validationError(reason: "The provided value to DetailsValue violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[^\\p{C}]*+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to DetailsValue violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the DeviceDefenderThingName field.
*/
extension IotModel.DeviceDefenderThingName {
    public func validateAsDeviceDefenderThingName() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to DeviceDefenderThingName violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to DeviceDefenderThingName violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ElasticsearchEndpoint field.
*/
extension IotModel.ElasticsearchEndpoint {
    public func validateAsElasticsearchEndpoint() throws {
        guard let matchingRange = self.range(of: "https?://.*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to ElasticsearchEndpoint violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ErrorMessage2 field.
*/
extension IotModel.ErrorMessage2 {
    public func validateAsErrorMessage2() throws {

        if self.count > 2048 {
            throw IotCodingError.validationError(reason: "The provided value to ErrorMessage violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the EvaluationStatistic field.
*/
extension IotModel.EvaluationStatistic {
    public func validateAsEvaluationStatistic() throws {
        guard let matchingRange = self.range(of: "(p0|p0\\.1|p0\\.01|p1|p10|p50|p90|p99|p99\\.9|p99\\.99|p100)", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to EvaluationStatistic violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ExpiresInSec field.
*/
extension IotModel.ExpiresInSec {
    public func validateAsExpiresInSec() throws {
        if self < 60 {
            throw IotCodingError.validationError(reason: "The provided value to ExpiresInSec violated the minimum range constraint.")
        }

        if self > 3600 {
            throw IotCodingError.validationError(reason: "The provided value to ExpiresInSec violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the FileId field.
*/
extension IotModel.FileId {
    public func validateAsFileId() throws {
        if self < 0 {
            throw IotCodingError.validationError(reason: "The provided value to FileId violated the minimum range constraint.")
        }

        if self > 255 {
            throw IotCodingError.validationError(reason: "The provided value to FileId violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the FindingId field.
*/
extension IotModel.FindingId {
    public func validateAsFindingId() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to FindingId violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to FindingId violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9_-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to FindingId violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the FindingIds field.
*/
extension Array where Element == IotModel.FindingId {
    public func validateAsFindingIds() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to FindingIds violated the minimum length constraint.")
        }

        if self.count > 25 {
            throw IotCodingError.validationError(reason: "The provided value to FindingIds violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the FirehoseSeparator field.
*/
extension IotModel.FirehoseSeparator {
    public func validateAsFirehoseSeparator() throws {
        guard let matchingRange = self.range(of: "([\\n\\t])|(\\r\\n)|(,)", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to FirehoseSeparator violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the GEMaxResults field.
*/
extension IotModel.GEMaxResults {
    public func validateAsGEMaxResults() throws {
        if self < 1 {
            throw IotCodingError.validationError(reason: "The provided value to GEMaxResults violated the minimum range constraint.")
        }

        if self > 10000 {
            throw IotCodingError.validationError(reason: "The provided value to GEMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the IncrementFactor field.
*/
extension IotModel.IncrementFactor {
    public func validateAsIncrementFactor() throws {
        if self < 1.0 {
            throw IotCodingError.validationError(reason: "The provided value to IncrementFactor violated the minimum range constraint.")
        }

        if self > 5.0 {
            throw IotCodingError.validationError(reason: "The provided value to IncrementFactor violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the IndexName field.
*/
extension IotModel.IndexName {
    public func validateAsIndexName() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to IndexName violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to IndexName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9:_-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to IndexName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the InputName field.
*/
extension IotModel.InputName {
    public func validateAsInputName() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to InputName violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to InputName violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the JobDescription field.
*/
extension IotModel.JobDescription {
    public func validateAsJobDescription() throws {

        if self.count > 2028 {
            throw IotCodingError.validationError(reason: "The provided value to JobDescription violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[^\\p{C}]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to JobDescription violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the JobDocument field.
*/
extension IotModel.JobDocument {
    public func validateAsJobDocument() throws {

        if self.count > 32768 {
            throw IotCodingError.validationError(reason: "The provided value to JobDocument violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the JobDocumentSource field.
*/
extension IotModel.JobDocumentSource {
    public func validateAsJobDocumentSource() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to JobDocumentSource violated the minimum length constraint.")
        }

        if self.count > 1350 {
            throw IotCodingError.validationError(reason: "The provided value to JobDocumentSource violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the JobId field.
*/
extension IotModel.JobId {
    public func validateAsJobId() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to JobId violated the minimum length constraint.")
        }

        if self.count > 64 {
            throw IotCodingError.validationError(reason: "The provided value to JobId violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9_-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to JobId violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the JobTargets field.
*/
extension Array where Element == IotModel.TargetArn {
    public func validateAsJobTargets() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to JobTargets violated the minimum length constraint.")
        }

    }
}

/**
 Validation for the KeyName field.
*/
extension IotModel.KeyName {
    public func validateAsKeyName() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to KeyName violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to KeyName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9:_-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to KeyName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the KeyValue field.
*/
extension IotModel.KeyValue {
    public func validateAsKeyValue() throws {

        if self.count > 5120 {
            throw IotCodingError.validationError(reason: "The provided value to KeyValue violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the LaserMaxResults field.
*/
extension IotModel.LaserMaxResults {
    public func validateAsLaserMaxResults() throws {
        if self < 1 {
            throw IotCodingError.validationError(reason: "The provided value to LaserMaxResults violated the minimum range constraint.")
        }

        if self > 250 {
            throw IotCodingError.validationError(reason: "The provided value to LaserMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the Marker field.
*/
extension IotModel.Marker {
    public func validateAsMarker() throws {
        guard let matchingRange = self.range(of: "[A-Za-z0-9+/]+={0,2}", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to Marker violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the MaxJobExecutionsPerMin field.
*/
extension IotModel.MaxJobExecutionsPerMin {
    public func validateAsMaxJobExecutionsPerMin() throws {
        if self < 1 {
            throw IotCodingError.validationError(reason: "The provided value to MaxJobExecutionsPerMin violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the MaxResults field.
*/
extension IotModel.MaxResults {
    public func validateAsMaxResults() throws {
        if self < 1 {
            throw IotCodingError.validationError(reason: "The provided value to MaxResults violated the minimum range constraint.")
        }

        if self > 250 {
            throw IotCodingError.validationError(reason: "The provided value to MaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the MaximumPerMinute field.
*/
extension IotModel.MaximumPerMinute {
    public func validateAsMaximumPerMinute() throws {
        if self < 1 {
            throw IotCodingError.validationError(reason: "The provided value to MaximumPerMinute violated the minimum range constraint.")
        }

        if self > 1000 {
            throw IotCodingError.validationError(reason: "The provided value to MaximumPerMinute violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the Message field.
*/
extension IotModel.Message {
    public func validateAsMessage() throws {

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to Message violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the MessageId field.
*/
extension IotModel.MessageId {
    public func validateAsMessageId() throws {

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to MessageId violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the MinimumNumberOfExecutedThings field.
*/
extension IotModel.MinimumNumberOfExecutedThings {
    public func validateAsMinimumNumberOfExecutedThings() throws {
        if self < 1 {
            throw IotCodingError.validationError(reason: "The provided value to MinimumNumberOfExecutedThings violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the MitigationActionName field.
*/
extension IotModel.MitigationActionName {
    public func validateAsMitigationActionName() throws {

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to MitigationActionName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9_-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to MitigationActionName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the MitigationActionNameList field.
*/
extension Array where Element == IotModel.MitigationActionName {
    public func validateAsMitigationActionNameList() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to MitigationActionNameList violated the minimum length constraint.")
        }

        if self.count > 5 {
            throw IotCodingError.validationError(reason: "The provided value to MitigationActionNameList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the NumberOfThings field.
*/
extension IotModel.NumberOfThings {
    public func validateAsNumberOfThings() throws {
        if self < 1 {
            throw IotCodingError.validationError(reason: "The provided value to NumberOfThings violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the OTAUpdateDescription field.
*/
extension IotModel.OTAUpdateDescription {
    public func validateAsOTAUpdateDescription() throws {

        if self.count > 2028 {
            throw IotCodingError.validationError(reason: "The provided value to OTAUpdateDescription violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[^\\p{C}]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to OTAUpdateDescription violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the OTAUpdateFiles field.
*/
extension Array where Element == IotModel.OTAUpdateFile {
    public func validateAsOTAUpdateFiles() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to OTAUpdateFiles violated the minimum length constraint.")
        }

        if self.count > 50 {
            throw IotCodingError.validationError(reason: "The provided value to OTAUpdateFiles violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the OTAUpdateId field.
*/
extension IotModel.OTAUpdateId {
    public func validateAsOTAUpdateId() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to OTAUpdateId violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to OTAUpdateId violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9_-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to OTAUpdateId violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the PageSize field.
*/
extension IotModel.PageSize {
    public func validateAsPageSize() throws {
        if self < 1 {
            throw IotCodingError.validationError(reason: "The provided value to PageSize violated the minimum range constraint.")
        }

        if self > 250 {
            throw IotCodingError.validationError(reason: "The provided value to PageSize violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the Percentage field.
*/
extension IotModel.Percentage {
    public func validateAsPercentage() throws {
        if self < 0 {
            throw IotCodingError.validationError(reason: "The provided value to Percentage violated the minimum range constraint.")
        }

        if self > 100 {
            throw IotCodingError.validationError(reason: "The provided value to Percentage violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the PolicyName field.
*/
extension IotModel.PolicyName {
    public func validateAsPolicyName() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to PolicyName violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to PolicyName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[\\w+=,.@-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to PolicyName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the PolicyVersionId field.
*/
extension IotModel.PolicyVersionId {
    public func validateAsPolicyVersionId() throws {
        guard let matchingRange = self.range(of: "[0-9]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to PolicyVersionId violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the Port field.
*/
extension IotModel.Port {
    public func validateAsPort() throws {
        if self < 0 {
            throw IotCodingError.validationError(reason: "The provided value to Port violated the minimum range constraint.")
        }

        if self > 65535 {
            throw IotCodingError.validationError(reason: "The provided value to Port violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the PrincipalId field.
*/
extension IotModel.PrincipalId {
    public func validateAsPrincipalId() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to PrincipalId violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to PrincipalId violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to PrincipalId violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the PrivateKey field.
*/
extension IotModel.PrivateKey {
    public func validateAsPrivateKey() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to PrivateKey violated the minimum length constraint.")
        }

    }
}

/**
 Validation for the PublicKey field.
*/
extension IotModel.PublicKey {
    public func validateAsPublicKey() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to PublicKey violated the minimum length constraint.")
        }

    }
}

/**
 Validation for the Qos field.
*/
extension IotModel.Qos {
    public func validateAsQos() throws {
        if self < 0 {
            throw IotCodingError.validationError(reason: "The provided value to Qos violated the minimum range constraint.")
        }

        if self > 1 {
            throw IotCodingError.validationError(reason: "The provided value to Qos violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the QueryMaxResults field.
*/
extension IotModel.QueryMaxResults {
    public func validateAsQueryMaxResults() throws {
        if self < 1 {
            throw IotCodingError.validationError(reason: "The provided value to QueryMaxResults violated the minimum range constraint.")
        }

        if self > 500 {
            throw IotCodingError.validationError(reason: "The provided value to QueryMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the QueryString field.
*/
extension IotModel.QueryString {
    public func validateAsQueryString() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to QueryString violated the minimum length constraint.")
        }

    }
}

/**
 Validation for the ReasonCode field.
*/
extension IotModel.ReasonCode {
    public func validateAsReasonCode() throws {

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to ReasonCode violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[\\p{Upper}\\p{Digit}_]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to ReasonCode violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ReasonForNonComplianceCodes field.
*/
extension Array where Element == IotModel.ReasonForNonComplianceCode {
    public func validateAsReasonForNonComplianceCodes() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to ReasonForNonComplianceCodes violated the minimum length constraint.")
        }

        if self.count > 25 {
            throw IotCodingError.validationError(reason: "The provided value to ReasonForNonComplianceCodes violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the RegistrationCode field.
*/
extension IotModel.RegistrationCode {
    public func validateAsRegistrationCode() throws {
        if self.count < 64 {
            throw IotCodingError.validationError(reason: "The provided value to RegistrationCode violated the minimum length constraint.")
        }

        if self.count > 64 {
            throw IotCodingError.validationError(reason: "The provided value to RegistrationCode violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "(0x)?[a-fA-F0-9]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to RegistrationCode violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the RegistryMaxResults field.
*/
extension IotModel.RegistryMaxResults {
    public func validateAsRegistryMaxResults() throws {
        if self < 1 {
            throw IotCodingError.validationError(reason: "The provided value to RegistryMaxResults violated the minimum range constraint.")
        }

        if self > 250 {
            throw IotCodingError.validationError(reason: "The provided value to RegistryMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the RegistryS3BucketName field.
*/
extension IotModel.RegistryS3BucketName {
    public func validateAsRegistryS3BucketName() throws {
        if self.count < 3 {
            throw IotCodingError.validationError(reason: "The provided value to RegistryS3BucketName violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw IotCodingError.validationError(reason: "The provided value to RegistryS3BucketName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9._-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to RegistryS3BucketName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the RegistryS3KeyName field.
*/
extension IotModel.RegistryS3KeyName {
    public func validateAsRegistryS3KeyName() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to RegistryS3KeyName violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw IotCodingError.validationError(reason: "The provided value to RegistryS3KeyName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9!_.*'()-\\/]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to RegistryS3KeyName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the RoleAlias field.
*/
extension IotModel.RoleAlias {
    public func validateAsRoleAlias() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to RoleAlias violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to RoleAlias violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[\\w=,@-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to RoleAlias violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the RoleArn field.
*/
extension IotModel.RoleArn {
    public func validateAsRoleArn() throws {
        if self.count < 20 {
            throw IotCodingError.validationError(reason: "The provided value to RoleArn violated the minimum length constraint.")
        }

        if self.count > 2048 {
            throw IotCodingError.validationError(reason: "The provided value to RoleArn violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the RolloutRatePerMinute field.
*/
extension IotModel.RolloutRatePerMinute {
    public func validateAsRolloutRatePerMinute() throws {
        if self < 1 {
            throw IotCodingError.validationError(reason: "The provided value to RolloutRatePerMinute violated the minimum range constraint.")
        }

        if self > 1000 {
            throw IotCodingError.validationError(reason: "The provided value to RolloutRatePerMinute violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the RuleName field.
*/
extension IotModel.RuleName {
    public func validateAsRuleName() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to RuleName violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to RuleName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^[a-zA-Z0-9_]+$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to RuleName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the S3Bucket field.
*/
extension IotModel.S3Bucket {
    public func validateAsS3Bucket() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to S3Bucket violated the minimum length constraint.")
        }

    }
}

/**
 Validation for the S3FileUrl field.
*/
extension IotModel.S3FileUrl {
    public func validateAsS3FileUrl() throws {

        if self.count > 65535 {
            throw IotCodingError.validationError(reason: "The provided value to S3FileUrl violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the S3Key field.
*/
extension IotModel.S3Key {
    public func validateAsS3Key() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to S3Key violated the minimum length constraint.")
        }

    }
}

/**
 Validation for the SalesforceEndpoint field.
*/
extension IotModel.SalesforceEndpoint {
    public func validateAsSalesforceEndpoint() throws {

        if self.count > 2000 {
            throw IotCodingError.validationError(reason: "The provided value to SalesforceEndpoint violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "https://ingestion-[a-zA-Z0-9]{1,12}\\.[a-zA-Z0-9]+\\.((sfdc-matrix\\.net)|(sfdcnow\\.com))/streams/\\w{1,20}/\\w{1,20}/event", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to SalesforceEndpoint violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the SalesforceToken field.
*/
extension IotModel.SalesforceToken {
    public func validateAsSalesforceToken() throws {
        if self.count < 40 {
            throw IotCodingError.validationError(reason: "The provided value to SalesforceToken violated the minimum length constraint.")
        }

    }
}

/**
 Validation for the ScheduledAuditName field.
*/
extension IotModel.ScheduledAuditName {
    public func validateAsScheduledAuditName() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to ScheduledAuditName violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to ScheduledAuditName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9_-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to ScheduledAuditName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the SecurityProfileDescription field.
*/
extension IotModel.SecurityProfileDescription {
    public func validateAsSecurityProfileDescription() throws {

        if self.count > 1000 {
            throw IotCodingError.validationError(reason: "The provided value to SecurityProfileDescription violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[\\p{Graph}\\x20]*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to SecurityProfileDescription violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the SecurityProfileName field.
*/
extension IotModel.SecurityProfileName {
    public func validateAsSecurityProfileName() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to SecurityProfileName violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to SecurityProfileName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9:_-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to SecurityProfileName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the SkyfallMaxResults field.
*/
extension IotModel.SkyfallMaxResults {
    public func validateAsSkyfallMaxResults() throws {
        if self < 1 {
            throw IotCodingError.validationError(reason: "The provided value to SkyfallMaxResults violated the minimum range constraint.")
        }

        if self > 250 {
            throw IotCodingError.validationError(reason: "The provided value to SkyfallMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the SnsTopicArn field.
*/
extension IotModel.SnsTopicArn {
    public func validateAsSnsTopicArn() throws {

        if self.count > 350 {
            throw IotCodingError.validationError(reason: "The provided value to SnsTopicArn violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the StreamDescription field.
*/
extension IotModel.StreamDescription {
    public func validateAsStreamDescription() throws {

        if self.count > 2028 {
            throw IotCodingError.validationError(reason: "The provided value to StreamDescription violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[^\\p{C}]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to StreamDescription violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the StreamFiles field.
*/
extension Array where Element == IotModel.StreamFile {
    public func validateAsStreamFiles() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to StreamFiles violated the minimum length constraint.")
        }

        if self.count > 50 {
            throw IotCodingError.validationError(reason: "The provided value to StreamFiles violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the StreamId field.
*/
extension IotModel.StreamId {
    public func validateAsStreamId() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to StreamId violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to StreamId violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9_-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to StreamId violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the StreamVersion field.
*/
extension IotModel.StreamVersion {
    public func validateAsStreamVersion() throws {
        if self < 0 {
            throw IotCodingError.validationError(reason: "The provided value to StreamVersion violated the minimum range constraint.")
        }

        if self > 65535 {
            throw IotCodingError.validationError(reason: "The provided value to StreamVersion violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the Targets field.
*/
extension Array where Element == IotModel.Target {
    public func validateAsTargets() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to Targets violated the minimum length constraint.")
        }

    }
}

/**
 Validation for the TaskId field.
*/
extension IotModel.TaskId {
    public func validateAsTaskId() throws {

        if self.count > 40 {
            throw IotCodingError.validationError(reason: "The provided value to TaskId violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ThingGroupDescription field.
*/
extension IotModel.ThingGroupDescription {
    public func validateAsThingGroupDescription() throws {

        if self.count > 2028 {
            throw IotCodingError.validationError(reason: "The provided value to ThingGroupDescription violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[\\p{Graph}\\x20]*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to ThingGroupDescription violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ThingGroupId field.
*/
extension IotModel.ThingGroupId {
    public func validateAsThingGroupId() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to ThingGroupId violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to ThingGroupId violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9\\-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to ThingGroupId violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ThingGroupName field.
*/
extension IotModel.ThingGroupName {
    public func validateAsThingGroupName() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to ThingGroupName violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to ThingGroupName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9:_-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to ThingGroupName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ThingGroupNames field.
*/
extension Array where Element == IotModel.ThingGroupName {
    public func validateAsThingGroupNames() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to ThingGroupNames violated the minimum length constraint.")
        }

        if self.count > 10 {
            throw IotCodingError.validationError(reason: "The provided value to ThingGroupNames violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ThingName field.
*/
extension IotModel.ThingName {
    public func validateAsThingName() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to ThingName violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to ThingName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9:_-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to ThingName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ThingTypeDescription field.
*/
extension IotModel.ThingTypeDescription {
    public func validateAsThingTypeDescription() throws {

        if self.count > 2028 {
            throw IotCodingError.validationError(reason: "The provided value to ThingTypeDescription violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[\\p{Graph}\\x20]*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to ThingTypeDescription violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ThingTypeName field.
*/
extension IotModel.ThingTypeName {
    public func validateAsThingTypeName() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to ThingTypeName violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to ThingTypeName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9:_-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to ThingTypeName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the Token field.
*/
extension IotModel.Token {
    public func validateAsToken() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to Token violated the minimum length constraint.")
        }

        if self.count > 6144 {
            throw IotCodingError.validationError(reason: "The provided value to Token violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TokenKeyName field.
*/
extension IotModel.TokenKeyName {
    public func validateAsTokenKeyName() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to TokenKeyName violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to TokenKeyName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9_-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to TokenKeyName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the TokenSignature field.
*/
extension IotModel.TokenSignature {
    public func validateAsTokenSignature() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to TokenSignature violated the minimum length constraint.")
        }

        if self.count > 2560 {
            throw IotCodingError.validationError(reason: "The provided value to TokenSignature violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[A-Za-z0-9+/]+={0,2}", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to TokenSignature violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the UnsignedLong field.
*/
extension IotModel.UnsignedLong {
    public func validateAsUnsignedLong() throws {
        if self < 0 {
            throw IotCodingError.validationError(reason: "The provided value to UnsignedLong violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the ViolationId field.
*/
extension IotModel.ViolationId {
    public func validateAsViolationId() throws {
        if self.count < 1 {
            throw IotCodingError.validationError(reason: "The provided value to ViolationId violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw IotCodingError.validationError(reason: "The provided value to ViolationId violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9\\-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw IotCodingError.validationError(
                    reason: "The provided value to ViolationId violated the regular expression constraint.")
        }
    }
}
