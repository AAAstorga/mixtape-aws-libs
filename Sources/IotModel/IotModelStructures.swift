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
// IotModelStructures.swift
// IotModel
//

import Foundation

public struct AbortConfig: Codable, Equatable {
    public var criteriaList: AbortCriteriaList

    public init(criteriaList: AbortCriteriaList) {
        self.criteriaList = criteriaList
    }

    enum CodingKeys: String, CodingKey {
        case criteriaList
    }

    public func validate() throws {
        try criteriaList.validateAsAbortCriteriaList()
    }
}

public struct AbortCriteria: Codable, Equatable {
    public var action: AbortAction
    public var failureType: JobExecutionFailureType
    public var minNumberOfExecutedThings: MinimumNumberOfExecutedThings
    public var thresholdPercentage: AbortThresholdPercentage

    public init(action: AbortAction,
                failureType: JobExecutionFailureType,
                minNumberOfExecutedThings: MinimumNumberOfExecutedThings,
                thresholdPercentage: AbortThresholdPercentage) {
        self.action = action
        self.failureType = failureType
        self.minNumberOfExecutedThings = minNumberOfExecutedThings
        self.thresholdPercentage = thresholdPercentage
    }

    enum CodingKeys: String, CodingKey {
        case action
        case failureType
        case minNumberOfExecutedThings
        case thresholdPercentage
    }

    public func validate() throws {
        try minNumberOfExecutedThings.validateAsMinimumNumberOfExecutedThings()
        try thresholdPercentage.validateAsAbortThresholdPercentage()
    }
}

public struct AcceptCertificateTransferRequest: Codable, Equatable {
    public var certificateId: CertificateId
    public var setAsActive: SetAsActive?

    public init(certificateId: CertificateId,
                setAsActive: SetAsActive? = nil) {
        self.certificateId = certificateId
        self.setAsActive = setAsActive
    }

    enum CodingKeys: String, CodingKey {
        case certificateId
        case setAsActive
    }

    public func validate() throws {
        try certificateId.validateAsCertificateId()
    }
}

public struct Action: Codable, Equatable {
    public var cloudwatchAlarm: CloudwatchAlarmAction?
    public var cloudwatchMetric: CloudwatchMetricAction?
    public var dynamoDB: DynamoDBAction?
    public var dynamoDBv2: DynamoDBv2Action?
    public var elasticsearch: ElasticsearchAction?
    public var firehose: FirehoseAction?
    public var iotAnalytics: IotAnalyticsAction?
    public var iotEvents: IotEventsAction?
    public var kinesis: KinesisAction?
    public var lambda: LambdaAction?
    public var republish: RepublishAction?
    public var s3: S3Action?
    public var salesforce: SalesforceAction?
    public var sns: SnsAction?
    public var sqs: SqsAction?
    public var stepFunctions: StepFunctionsAction?

    public init(cloudwatchAlarm: CloudwatchAlarmAction? = nil,
                cloudwatchMetric: CloudwatchMetricAction? = nil,
                dynamoDB: DynamoDBAction? = nil,
                dynamoDBv2: DynamoDBv2Action? = nil,
                elasticsearch: ElasticsearchAction? = nil,
                firehose: FirehoseAction? = nil,
                iotAnalytics: IotAnalyticsAction? = nil,
                iotEvents: IotEventsAction? = nil,
                kinesis: KinesisAction? = nil,
                lambda: LambdaAction? = nil,
                republish: RepublishAction? = nil,
                s3: S3Action? = nil,
                salesforce: SalesforceAction? = nil,
                sns: SnsAction? = nil,
                sqs: SqsAction? = nil,
                stepFunctions: StepFunctionsAction? = nil) {
        self.cloudwatchAlarm = cloudwatchAlarm
        self.cloudwatchMetric = cloudwatchMetric
        self.dynamoDB = dynamoDB
        self.dynamoDBv2 = dynamoDBv2
        self.elasticsearch = elasticsearch
        self.firehose = firehose
        self.iotAnalytics = iotAnalytics
        self.iotEvents = iotEvents
        self.kinesis = kinesis
        self.lambda = lambda
        self.republish = republish
        self.s3 = s3
        self.salesforce = salesforce
        self.sns = sns
        self.sqs = sqs
        self.stepFunctions = stepFunctions
    }

    enum CodingKeys: String, CodingKey {
        case cloudwatchAlarm
        case cloudwatchMetric
        case dynamoDB
        case dynamoDBv2
        case elasticsearch
        case firehose
        case iotAnalytics
        case iotEvents
        case kinesis
        case lambda
        case republish
        case s3
        case salesforce
        case sns
        case sqs
        case stepFunctions
    }

    public func validate() throws {
        try cloudwatchAlarm?.validate()
        try cloudwatchMetric?.validate()
        try dynamoDB?.validate()
        try dynamoDBv2?.validate()
        try elasticsearch?.validate()
        try firehose?.validate()
        try iotAnalytics?.validate()
        try iotEvents?.validate()
        try kinesis?.validate()
        try lambda?.validate()
        try republish?.validate()
        try s3?.validate()
        try salesforce?.validate()
        try sns?.validate()
        try sqs?.validate()
        try stepFunctions?.validate()
    }
}

public struct ActiveViolation: Codable, Equatable {
    public var behavior: Behavior?
    public var lastViolationTime: Timestamp?
    public var lastViolationValue: MetricValue?
    public var securityProfileName: SecurityProfileName?
    public var thingName: DeviceDefenderThingName?
    public var violationId: ViolationId?
    public var violationStartTime: Timestamp?

    public init(behavior: Behavior? = nil,
                lastViolationTime: Timestamp? = nil,
                lastViolationValue: MetricValue? = nil,
                securityProfileName: SecurityProfileName? = nil,
                thingName: DeviceDefenderThingName? = nil,
                violationId: ViolationId? = nil,
                violationStartTime: Timestamp? = nil) {
        self.behavior = behavior
        self.lastViolationTime = lastViolationTime
        self.lastViolationValue = lastViolationValue
        self.securityProfileName = securityProfileName
        self.thingName = thingName
        self.violationId = violationId
        self.violationStartTime = violationStartTime
    }

    enum CodingKeys: String, CodingKey {
        case behavior
        case lastViolationTime
        case lastViolationValue
        case securityProfileName
        case thingName
        case violationId
        case violationStartTime
    }

    public func validate() throws {
        try behavior?.validate()
        try lastViolationValue?.validate()
        try securityProfileName?.validateAsSecurityProfileName()
        try thingName?.validateAsDeviceDefenderThingName()
        try violationId?.validateAsViolationId()
    }
}

public struct AddThingToBillingGroupRequest: Codable, Equatable {
    public var billingGroupArn: BillingGroupArn?
    public var billingGroupName: BillingGroupName?
    public var thingArn: ThingArn?
    public var thingName: ThingName?

    public init(billingGroupArn: BillingGroupArn? = nil,
                billingGroupName: BillingGroupName? = nil,
                thingArn: ThingArn? = nil,
                thingName: ThingName? = nil) {
        self.billingGroupArn = billingGroupArn
        self.billingGroupName = billingGroupName
        self.thingArn = thingArn
        self.thingName = thingName
    }

    enum CodingKeys: String, CodingKey {
        case billingGroupArn
        case billingGroupName
        case thingArn
        case thingName
    }

    public func validate() throws {
        try billingGroupName?.validateAsBillingGroupName()
        try thingName?.validateAsThingName()
    }
}

public struct AddThingToBillingGroupResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct AddThingToThingGroupRequest: Codable, Equatable {
    public var overrideDynamicGroups: OverrideDynamicGroups?
    public var thingArn: ThingArn?
    public var thingGroupArn: ThingGroupArn?
    public var thingGroupName: ThingGroupName?
    public var thingName: ThingName?

    public init(overrideDynamicGroups: OverrideDynamicGroups? = nil,
                thingArn: ThingArn? = nil,
                thingGroupArn: ThingGroupArn? = nil,
                thingGroupName: ThingGroupName? = nil,
                thingName: ThingName? = nil) {
        self.overrideDynamicGroups = overrideDynamicGroups
        self.thingArn = thingArn
        self.thingGroupArn = thingGroupArn
        self.thingGroupName = thingGroupName
        self.thingName = thingName
    }

    enum CodingKeys: String, CodingKey {
        case overrideDynamicGroups
        case thingArn
        case thingGroupArn
        case thingGroupName
        case thingName
    }

    public func validate() throws {
        try thingGroupName?.validateAsThingGroupName()
        try thingName?.validateAsThingName()
    }
}

public struct AddThingToThingGroupResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct AddThingsToThingGroupParams: Codable, Equatable {
    public var overrideDynamicGroups: OverrideDynamicGroups?
    public var thingGroupNames: ThingGroupNames

    public init(overrideDynamicGroups: OverrideDynamicGroups? = nil,
                thingGroupNames: ThingGroupNames) {
        self.overrideDynamicGroups = overrideDynamicGroups
        self.thingGroupNames = thingGroupNames
    }

    enum CodingKeys: String, CodingKey {
        case overrideDynamicGroups
        case thingGroupNames
    }

    public func validate() throws {
        try thingGroupNames.validateAsThingGroupNames()
    }
}

public struct AlertTarget: Codable, Equatable {
    public var alertTargetArn: AlertTargetArn
    public var roleArn: RoleArn

    public init(alertTargetArn: AlertTargetArn,
                roleArn: RoleArn) {
        self.alertTargetArn = alertTargetArn
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case alertTargetArn
        case roleArn
    }

    public func validate() throws {
        try roleArn.validateAsRoleArn()
    }
}

public struct Allowed: Codable, Equatable {
    public var policies: Policies?

    public init(policies: Policies? = nil) {
        self.policies = policies
    }

    enum CodingKeys: String, CodingKey {
        case policies
    }

    public func validate() throws {
    }
}

public struct AssociateTargetsWithJobRequest: Codable, Equatable {
    public var comment: Comment?
    public var jobId: JobId
    public var targets: JobTargets

    public init(comment: Comment? = nil,
                jobId: JobId,
                targets: JobTargets) {
        self.comment = comment
        self.jobId = jobId
        self.targets = targets
    }

    enum CodingKeys: String, CodingKey {
        case comment
        case jobId
        case targets
    }

    public func validate() throws {
        try comment?.validateAsComment()
        try jobId.validateAsJobId()
        try targets.validateAsJobTargets()
    }
}

public struct AssociateTargetsWithJobResponse: Codable, Equatable {
    public var description: JobDescription?
    public var jobArn: JobArn?
    public var jobId: JobId?

    public init(description: JobDescription? = nil,
                jobArn: JobArn? = nil,
                jobId: JobId? = nil) {
        self.description = description
        self.jobArn = jobArn
        self.jobId = jobId
    }

    enum CodingKeys: String, CodingKey {
        case description
        case jobArn
        case jobId
    }

    public func validate() throws {
        try description?.validateAsJobDescription()
        try jobId?.validateAsJobId()
    }
}

public struct AttachPolicyRequest: Codable, Equatable {
    public var policyName: PolicyName
    public var target: PolicyTarget

    public init(policyName: PolicyName,
                target: PolicyTarget) {
        self.policyName = policyName
        self.target = target
    }

    enum CodingKeys: String, CodingKey {
        case policyName
        case target
    }

    public func validate() throws {
        try policyName.validateAsPolicyName()
    }
}

public struct AttachPrincipalPolicyRequest: Codable, Equatable {
    public var policyName: PolicyName
    public var principal: Principal

    public init(policyName: PolicyName,
                principal: Principal) {
        self.policyName = policyName
        self.principal = principal
    }

    enum CodingKeys: String, CodingKey {
        case policyName
        case principal = "x-amzn-iot-principal"
    }

    public func validate() throws {
        try policyName.validateAsPolicyName()
    }
}

public struct AttachSecurityProfileRequest: Codable, Equatable {
    public var securityProfileName: SecurityProfileName
    public var securityProfileTargetArn: SecurityProfileTargetArn

    public init(securityProfileName: SecurityProfileName,
                securityProfileTargetArn: SecurityProfileTargetArn) {
        self.securityProfileName = securityProfileName
        self.securityProfileTargetArn = securityProfileTargetArn
    }

    enum CodingKeys: String, CodingKey {
        case securityProfileName
        case securityProfileTargetArn
    }

    public func validate() throws {
        try securityProfileName.validateAsSecurityProfileName()
    }
}

public struct AttachSecurityProfileResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct AttachThingPrincipalRequest: Codable, Equatable {
    public var principal: Principal
    public var thingName: ThingName

    public init(principal: Principal,
                thingName: ThingName) {
        self.principal = principal
        self.thingName = thingName
    }

    enum CodingKeys: String, CodingKey {
        case principal = "x-amzn-principal"
        case thingName
    }

    public func validate() throws {
        try thingName.validateAsThingName()
    }
}

public struct AttachThingPrincipalResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct AttributePayload: Codable, Equatable {
    public var attributes: Attributes?
    public var merge: Flag?

    public init(attributes: Attributes? = nil,
                merge: Flag? = nil) {
        self.attributes = attributes
        self.merge = merge
    }

    enum CodingKeys: String, CodingKey {
        case attributes
        case merge
    }

    public func validate() throws {
    }
}

public struct AuditCheckConfiguration: Codable, Equatable {
    public var enabled: Enabled?

    public init(enabled: Enabled? = nil) {
        self.enabled = enabled
    }

    enum CodingKeys: String, CodingKey {
        case enabled
    }

    public func validate() throws {
    }
}

public struct AuditCheckDetails: Codable, Equatable {
    public var checkCompliant: CheckCompliant?
    public var checkRunStatus: AuditCheckRunStatus?
    public var errorCode: ErrorCode?
    public var message: ErrorMessage2?
    public var nonCompliantResourcesCount: NonCompliantResourcesCount?
    public var totalResourcesCount: TotalResourcesCount?

    public init(checkCompliant: CheckCompliant? = nil,
                checkRunStatus: AuditCheckRunStatus? = nil,
                errorCode: ErrorCode? = nil,
                message: ErrorMessage2? = nil,
                nonCompliantResourcesCount: NonCompliantResourcesCount? = nil,
                totalResourcesCount: TotalResourcesCount? = nil) {
        self.checkCompliant = checkCompliant
        self.checkRunStatus = checkRunStatus
        self.errorCode = errorCode
        self.message = message
        self.nonCompliantResourcesCount = nonCompliantResourcesCount
        self.totalResourcesCount = totalResourcesCount
    }

    enum CodingKeys: String, CodingKey {
        case checkCompliant
        case checkRunStatus
        case errorCode
        case message
        case nonCompliantResourcesCount
        case totalResourcesCount
    }

    public func validate() throws {
        try message?.validateAsErrorMessage2()
    }
}

public struct AuditFinding: Codable, Equatable {
    public var checkName: AuditCheckName?
    public var findingId: FindingId?
    public var findingTime: Timestamp?
    public var nonCompliantResource: NonCompliantResource?
    public var reasonForNonCompliance: ReasonForNonCompliance?
    public var reasonForNonComplianceCode: ReasonForNonComplianceCode?
    public var relatedResources: RelatedResources?
    public var severity: AuditFindingSeverity?
    public var taskId: AuditTaskId?
    public var taskStartTime: Timestamp?

    public init(checkName: AuditCheckName? = nil,
                findingId: FindingId? = nil,
                findingTime: Timestamp? = nil,
                nonCompliantResource: NonCompliantResource? = nil,
                reasonForNonCompliance: ReasonForNonCompliance? = nil,
                reasonForNonComplianceCode: ReasonForNonComplianceCode? = nil,
                relatedResources: RelatedResources? = nil,
                severity: AuditFindingSeverity? = nil,
                taskId: AuditTaskId? = nil,
                taskStartTime: Timestamp? = nil) {
        self.checkName = checkName
        self.findingId = findingId
        self.findingTime = findingTime
        self.nonCompliantResource = nonCompliantResource
        self.reasonForNonCompliance = reasonForNonCompliance
        self.reasonForNonComplianceCode = reasonForNonComplianceCode
        self.relatedResources = relatedResources
        self.severity = severity
        self.taskId = taskId
        self.taskStartTime = taskStartTime
    }

    enum CodingKeys: String, CodingKey {
        case checkName
        case findingId
        case findingTime
        case nonCompliantResource
        case reasonForNonCompliance
        case reasonForNonComplianceCode
        case relatedResources
        case severity
        case taskId
        case taskStartTime
    }

    public func validate() throws {
        try findingId?.validateAsFindingId()
        try nonCompliantResource?.validate()
        try taskId?.validateAsAuditTaskId()
    }
}

public struct AuditMitigationActionExecutionMetadata: Codable, Equatable {
    public var actionId: MitigationActionId?
    public var actionName: MitigationActionName?
    public var endTime: Timestamp?
    public var errorCode: ErrorCode?
    public var findingId: FindingId?
    public var message: ErrorMessage2?
    public var startTime: Timestamp?
    public var status: AuditMitigationActionsExecutionStatus?
    public var taskId: AuditMitigationActionsTaskId?

    public init(actionId: MitigationActionId? = nil,
                actionName: MitigationActionName? = nil,
                endTime: Timestamp? = nil,
                errorCode: ErrorCode? = nil,
                findingId: FindingId? = nil,
                message: ErrorMessage2? = nil,
                startTime: Timestamp? = nil,
                status: AuditMitigationActionsExecutionStatus? = nil,
                taskId: AuditMitigationActionsTaskId? = nil) {
        self.actionId = actionId
        self.actionName = actionName
        self.endTime = endTime
        self.errorCode = errorCode
        self.findingId = findingId
        self.message = message
        self.startTime = startTime
        self.status = status
        self.taskId = taskId
    }

    enum CodingKeys: String, CodingKey {
        case actionId
        case actionName
        case endTime
        case errorCode
        case findingId
        case message
        case startTime
        case status
        case taskId
    }

    public func validate() throws {
        try actionName?.validateAsMitigationActionName()
        try findingId?.validateAsFindingId()
        try message?.validateAsErrorMessage2()
        try taskId?.validateAsAuditMitigationActionsTaskId()
    }
}

public struct AuditMitigationActionsTaskMetadata: Codable, Equatable {
    public var startTime: Timestamp?
    public var taskId: AuditMitigationActionsTaskId?
    public var taskStatus: AuditMitigationActionsTaskStatus?

    public init(startTime: Timestamp? = nil,
                taskId: AuditMitigationActionsTaskId? = nil,
                taskStatus: AuditMitigationActionsTaskStatus? = nil) {
        self.startTime = startTime
        self.taskId = taskId
        self.taskStatus = taskStatus
    }

    enum CodingKeys: String, CodingKey {
        case startTime
        case taskId
        case taskStatus
    }

    public func validate() throws {
        try taskId?.validateAsAuditMitigationActionsTaskId()
    }
}

public struct AuditMitigationActionsTaskTarget: Codable, Equatable {
    public var auditCheckToReasonCodeFilter: AuditCheckToReasonCodeFilter?
    public var auditTaskId: AuditTaskId?
    public var findingIds: FindingIds?

    public init(auditCheckToReasonCodeFilter: AuditCheckToReasonCodeFilter? = nil,
                auditTaskId: AuditTaskId? = nil,
                findingIds: FindingIds? = nil) {
        self.auditCheckToReasonCodeFilter = auditCheckToReasonCodeFilter
        self.auditTaskId = auditTaskId
        self.findingIds = findingIds
    }

    enum CodingKeys: String, CodingKey {
        case auditCheckToReasonCodeFilter
        case auditTaskId
        case findingIds
    }

    public func validate() throws {
        try auditTaskId?.validateAsAuditTaskId()
        try findingIds?.validateAsFindingIds()
    }
}

public struct AuditNotificationTarget: Codable, Equatable {
    public var enabled: Enabled?
    public var roleArn: RoleArn?
    public var targetArn: TargetArn?

    public init(enabled: Enabled? = nil,
                roleArn: RoleArn? = nil,
                targetArn: TargetArn? = nil) {
        self.enabled = enabled
        self.roleArn = roleArn
        self.targetArn = targetArn
    }

    enum CodingKeys: String, CodingKey {
        case enabled
        case roleArn
        case targetArn
    }

    public func validate() throws {
        try roleArn?.validateAsRoleArn()
    }
}

public struct AuditTaskMetadata: Codable, Equatable {
    public var taskId: AuditTaskId?
    public var taskStatus: AuditTaskStatus?
    public var taskType: AuditTaskType?

    public init(taskId: AuditTaskId? = nil,
                taskStatus: AuditTaskStatus? = nil,
                taskType: AuditTaskType? = nil) {
        self.taskId = taskId
        self.taskStatus = taskStatus
        self.taskType = taskType
    }

    enum CodingKeys: String, CodingKey {
        case taskId
        case taskStatus
        case taskType
    }

    public func validate() throws {
        try taskId?.validateAsAuditTaskId()
    }
}

public struct AuthInfo: Codable, Equatable {
    public var actionType: ActionType?
    public var resources: Resources?

    public init(actionType: ActionType? = nil,
                resources: Resources? = nil) {
        self.actionType = actionType
        self.resources = resources
    }

    enum CodingKeys: String, CodingKey {
        case actionType
        case resources
    }

    public func validate() throws {
    }
}

public struct AuthResult: Codable, Equatable {
    public var allowed: Allowed?
    public var authDecision: AuthDecision?
    public var authInfo: AuthInfo?
    public var denied: Denied?
    public var missingContextValues: MissingContextValues?

    public init(allowed: Allowed? = nil,
                authDecision: AuthDecision? = nil,
                authInfo: AuthInfo? = nil,
                denied: Denied? = nil,
                missingContextValues: MissingContextValues? = nil) {
        self.allowed = allowed
        self.authDecision = authDecision
        self.authInfo = authInfo
        self.denied = denied
        self.missingContextValues = missingContextValues
    }

    enum CodingKeys: String, CodingKey {
        case allowed
        case authDecision
        case authInfo
        case denied
        case missingContextValues
    }

    public func validate() throws {
        try allowed?.validate()
        try authInfo?.validate()
        try denied?.validate()
    }
}

public struct AuthorizerDescription: Codable, Equatable {
    public var authorizerArn: AuthorizerArn?
    public var authorizerFunctionArn: AuthorizerFunctionArn?
    public var authorizerName: AuthorizerName?
    public var creationDate: DateType?
    public var lastModifiedDate: DateType?
    public var status: AuthorizerStatus?
    public var tokenKeyName: TokenKeyName?
    public var tokenSigningPublicKeys: PublicKeyMap?

    public init(authorizerArn: AuthorizerArn? = nil,
                authorizerFunctionArn: AuthorizerFunctionArn? = nil,
                authorizerName: AuthorizerName? = nil,
                creationDate: DateType? = nil,
                lastModifiedDate: DateType? = nil,
                status: AuthorizerStatus? = nil,
                tokenKeyName: TokenKeyName? = nil,
                tokenSigningPublicKeys: PublicKeyMap? = nil) {
        self.authorizerArn = authorizerArn
        self.authorizerFunctionArn = authorizerFunctionArn
        self.authorizerName = authorizerName
        self.creationDate = creationDate
        self.lastModifiedDate = lastModifiedDate
        self.status = status
        self.tokenKeyName = tokenKeyName
        self.tokenSigningPublicKeys = tokenSigningPublicKeys
    }

    enum CodingKeys: String, CodingKey {
        case authorizerArn
        case authorizerFunctionArn
        case authorizerName
        case creationDate
        case lastModifiedDate
        case status
        case tokenKeyName
        case tokenSigningPublicKeys
    }

    public func validate() throws {
        try authorizerName?.validateAsAuthorizerName()
        try tokenKeyName?.validateAsTokenKeyName()
    }
}

public struct AuthorizerSummary: Codable, Equatable {
    public var authorizerArn: AuthorizerArn?
    public var authorizerName: AuthorizerName?

    public init(authorizerArn: AuthorizerArn? = nil,
                authorizerName: AuthorizerName? = nil) {
        self.authorizerArn = authorizerArn
        self.authorizerName = authorizerName
    }

    enum CodingKeys: String, CodingKey {
        case authorizerArn
        case authorizerName
    }

    public func validate() throws {
        try authorizerName?.validateAsAuthorizerName()
    }
}

public struct AwsJobExecutionsRolloutConfig: Codable, Equatable {
    public var maximumPerMinute: MaximumPerMinute?

    public init(maximumPerMinute: MaximumPerMinute? = nil) {
        self.maximumPerMinute = maximumPerMinute
    }

    enum CodingKeys: String, CodingKey {
        case maximumPerMinute
    }

    public func validate() throws {
        try maximumPerMinute?.validateAsMaximumPerMinute()
    }
}

public struct Behavior: Codable, Equatable {
    public var criteria: BehaviorCriteria?
    public var metric: BehaviorMetric?
    public var name: BehaviorName

    public init(criteria: BehaviorCriteria? = nil,
                metric: BehaviorMetric? = nil,
                name: BehaviorName) {
        self.criteria = criteria
        self.metric = metric
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case criteria
        case metric
        case name
    }

    public func validate() throws {
        try criteria?.validate()
        try name.validateAsBehaviorName()
    }
}

public struct BehaviorCriteria: Codable, Equatable {
    public var comparisonOperator: ComparisonOperator?
    public var consecutiveDatapointsToAlarm: ConsecutiveDatapointsToAlarm?
    public var consecutiveDatapointsToClear: ConsecutiveDatapointsToClear?
    public var durationSeconds: DurationSeconds?
    public var statisticalThreshold: StatisticalThreshold?
    public var value: MetricValue?

    public init(comparisonOperator: ComparisonOperator? = nil,
                consecutiveDatapointsToAlarm: ConsecutiveDatapointsToAlarm? = nil,
                consecutiveDatapointsToClear: ConsecutiveDatapointsToClear? = nil,
                durationSeconds: DurationSeconds? = nil,
                statisticalThreshold: StatisticalThreshold? = nil,
                value: MetricValue? = nil) {
        self.comparisonOperator = comparisonOperator
        self.consecutiveDatapointsToAlarm = consecutiveDatapointsToAlarm
        self.consecutiveDatapointsToClear = consecutiveDatapointsToClear
        self.durationSeconds = durationSeconds
        self.statisticalThreshold = statisticalThreshold
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case comparisonOperator
        case consecutiveDatapointsToAlarm
        case consecutiveDatapointsToClear
        case durationSeconds
        case statisticalThreshold
        case value
    }

    public func validate() throws {
        try consecutiveDatapointsToAlarm?.validateAsConsecutiveDatapointsToAlarm()
        try consecutiveDatapointsToClear?.validateAsConsecutiveDatapointsToClear()
        try statisticalThreshold?.validate()
        try value?.validate()
    }
}

public struct BillingGroupMetadata: Codable, Equatable {
    public var creationDate: CreationDate?

    public init(creationDate: CreationDate? = nil) {
        self.creationDate = creationDate
    }

    enum CodingKeys: String, CodingKey {
        case creationDate
    }

    public func validate() throws {
    }
}

public struct BillingGroupProperties: Codable, Equatable {
    public var billingGroupDescription: BillingGroupDescription?

    public init(billingGroupDescription: BillingGroupDescription? = nil) {
        self.billingGroupDescription = billingGroupDescription
    }

    enum CodingKeys: String, CodingKey {
        case billingGroupDescription
    }

    public func validate() throws {
        try billingGroupDescription?.validateAsBillingGroupDescription()
    }
}

public struct CACertificate: Codable, Equatable {
    public var certificateArn: CertificateArn?
    public var certificateId: CertificateId?
    public var creationDate: DateType?
    public var status: CACertificateStatus?

    public init(certificateArn: CertificateArn? = nil,
                certificateId: CertificateId? = nil,
                creationDate: DateType? = nil,
                status: CACertificateStatus? = nil) {
        self.certificateArn = certificateArn
        self.certificateId = certificateId
        self.creationDate = creationDate
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case certificateArn
        case certificateId
        case creationDate
        case status
    }

    public func validate() throws {
        try certificateId?.validateAsCertificateId()
    }
}

public struct CACertificateDescription: Codable, Equatable {
    public var autoRegistrationStatus: AutoRegistrationStatus?
    public var certificateArn: CertificateArn?
    public var certificateId: CertificateId?
    public var certificatePem: CertificatePem?
    public var creationDate: DateType?
    public var customerVersion: CustomerVersion?
    public var generationId: GenerationId?
    public var lastModifiedDate: DateType?
    public var ownedBy: AwsAccountId?
    public var status: CACertificateStatus?
    public var validity: CertificateValidity?

    public init(autoRegistrationStatus: AutoRegistrationStatus? = nil,
                certificateArn: CertificateArn? = nil,
                certificateId: CertificateId? = nil,
                certificatePem: CertificatePem? = nil,
                creationDate: DateType? = nil,
                customerVersion: CustomerVersion? = nil,
                generationId: GenerationId? = nil,
                lastModifiedDate: DateType? = nil,
                ownedBy: AwsAccountId? = nil,
                status: CACertificateStatus? = nil,
                validity: CertificateValidity? = nil) {
        self.autoRegistrationStatus = autoRegistrationStatus
        self.certificateArn = certificateArn
        self.certificateId = certificateId
        self.certificatePem = certificatePem
        self.creationDate = creationDate
        self.customerVersion = customerVersion
        self.generationId = generationId
        self.lastModifiedDate = lastModifiedDate
        self.ownedBy = ownedBy
        self.status = status
        self.validity = validity
    }

    enum CodingKeys: String, CodingKey {
        case autoRegistrationStatus
        case certificateArn
        case certificateId
        case certificatePem
        case creationDate
        case customerVersion
        case generationId
        case lastModifiedDate
        case ownedBy
        case status
        case validity
    }

    public func validate() throws {
        try certificateId?.validateAsCertificateId()
        try certificatePem?.validateAsCertificatePem()
        try customerVersion?.validateAsCustomerVersion()
        try ownedBy?.validateAsAwsAccountId()
        try validity?.validate()
    }
}

public struct CancelAuditMitigationActionsTaskRequest: Codable, Equatable {
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

public struct CancelAuditMitigationActionsTaskResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct CancelAuditTaskRequest: Codable, Equatable {
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

public struct CancelAuditTaskResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct CancelCertificateTransferRequest: Codable, Equatable {
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

public struct CancelJobExecutionRequest: Codable, Equatable {
    public var expectedVersion: ExpectedVersion?
    public var force: ForceFlag?
    public var jobId: JobId
    public var statusDetails: DetailsMap?
    public var thingName: ThingName

    public init(expectedVersion: ExpectedVersion? = nil,
                force: ForceFlag? = nil,
                jobId: JobId,
                statusDetails: DetailsMap? = nil,
                thingName: ThingName) {
        self.expectedVersion = expectedVersion
        self.force = force
        self.jobId = jobId
        self.statusDetails = statusDetails
        self.thingName = thingName
    }

    enum CodingKeys: String, CodingKey {
        case expectedVersion
        case force
        case jobId
        case statusDetails
        case thingName
    }

    public func validate() throws {
        try jobId.validateAsJobId()
        try thingName.validateAsThingName()
    }
}

public struct CancelJobRequest: Codable, Equatable {
    public var comment: Comment?
    public var force: ForceFlag?
    public var jobId: JobId
    public var reasonCode: ReasonCode?

    public init(comment: Comment? = nil,
                force: ForceFlag? = nil,
                jobId: JobId,
                reasonCode: ReasonCode? = nil) {
        self.comment = comment
        self.force = force
        self.jobId = jobId
        self.reasonCode = reasonCode
    }

    enum CodingKeys: String, CodingKey {
        case comment
        case force
        case jobId
        case reasonCode
    }

    public func validate() throws {
        try comment?.validateAsComment()
        try jobId.validateAsJobId()
        try reasonCode?.validateAsReasonCode()
    }
}

public struct CancelJobResponse: Codable, Equatable {
    public var description: JobDescription?
    public var jobArn: JobArn?
    public var jobId: JobId?

    public init(description: JobDescription? = nil,
                jobArn: JobArn? = nil,
                jobId: JobId? = nil) {
        self.description = description
        self.jobArn = jobArn
        self.jobId = jobId
    }

    enum CodingKeys: String, CodingKey {
        case description
        case jobArn
        case jobId
    }

    public func validate() throws {
        try description?.validateAsJobDescription()
        try jobId?.validateAsJobId()
    }
}

public struct Certificate: Codable, Equatable {
    public var certificateArn: CertificateArn?
    public var certificateId: CertificateId?
    public var creationDate: DateType?
    public var status: CertificateStatus?

    public init(certificateArn: CertificateArn? = nil,
                certificateId: CertificateId? = nil,
                creationDate: DateType? = nil,
                status: CertificateStatus? = nil) {
        self.certificateArn = certificateArn
        self.certificateId = certificateId
        self.creationDate = creationDate
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case certificateArn
        case certificateId
        case creationDate
        case status
    }

    public func validate() throws {
        try certificateId?.validateAsCertificateId()
    }
}

public struct CertificateConflictException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct CertificateDescription: Codable, Equatable {
    public var caCertificateId: CertificateId?
    public var certificateArn: CertificateArn?
    public var certificateId: CertificateId?
    public var certificatePem: CertificatePem?
    public var creationDate: DateType?
    public var customerVersion: CustomerVersion?
    public var generationId: GenerationId?
    public var lastModifiedDate: DateType?
    public var ownedBy: AwsAccountId?
    public var previousOwnedBy: AwsAccountId?
    public var status: CertificateStatus?
    public var transferData: TransferData?
    public var validity: CertificateValidity?

    public init(caCertificateId: CertificateId? = nil,
                certificateArn: CertificateArn? = nil,
                certificateId: CertificateId? = nil,
                certificatePem: CertificatePem? = nil,
                creationDate: DateType? = nil,
                customerVersion: CustomerVersion? = nil,
                generationId: GenerationId? = nil,
                lastModifiedDate: DateType? = nil,
                ownedBy: AwsAccountId? = nil,
                previousOwnedBy: AwsAccountId? = nil,
                status: CertificateStatus? = nil,
                transferData: TransferData? = nil,
                validity: CertificateValidity? = nil) {
        self.caCertificateId = caCertificateId
        self.certificateArn = certificateArn
        self.certificateId = certificateId
        self.certificatePem = certificatePem
        self.creationDate = creationDate
        self.customerVersion = customerVersion
        self.generationId = generationId
        self.lastModifiedDate = lastModifiedDate
        self.ownedBy = ownedBy
        self.previousOwnedBy = previousOwnedBy
        self.status = status
        self.transferData = transferData
        self.validity = validity
    }

    enum CodingKeys: String, CodingKey {
        case caCertificateId
        case certificateArn
        case certificateId
        case certificatePem
        case creationDate
        case customerVersion
        case generationId
        case lastModifiedDate
        case ownedBy
        case previousOwnedBy
        case status
        case transferData
        case validity
    }

    public func validate() throws {
        try caCertificateId?.validateAsCertificateId()
        try certificateId?.validateAsCertificateId()
        try certificatePem?.validateAsCertificatePem()
        try customerVersion?.validateAsCustomerVersion()
        try ownedBy?.validateAsAwsAccountId()
        try previousOwnedBy?.validateAsAwsAccountId()
        try transferData?.validate()
        try validity?.validate()
    }
}

public struct CertificateStateException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct CertificateValidationException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct CertificateValidity: Codable, Equatable {
    public var notAfter: DateType?
    public var notBefore: DateType?

    public init(notAfter: DateType? = nil,
                notBefore: DateType? = nil) {
        self.notAfter = notAfter
        self.notBefore = notBefore
    }

    enum CodingKeys: String, CodingKey {
        case notAfter
        case notBefore
    }

    public func validate() throws {
    }
}

public struct ClearDefaultAuthorizerRequest: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ClearDefaultAuthorizerResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct CloudwatchAlarmAction: Codable, Equatable {
    public var alarmName: AlarmName
    public var roleArn: AwsArn
    public var stateReason: StateReason
    public var stateValue: StateValue

    public init(alarmName: AlarmName,
                roleArn: AwsArn,
                stateReason: StateReason,
                stateValue: StateValue) {
        self.alarmName = alarmName
        self.roleArn = roleArn
        self.stateReason = stateReason
        self.stateValue = stateValue
    }

    enum CodingKeys: String, CodingKey {
        case alarmName
        case roleArn
        case stateReason
        case stateValue
    }

    public func validate() throws {
    }
}

public struct CloudwatchMetricAction: Codable, Equatable {
    public var metricName: String
    public var metricNamespace: String
    public var metricTimestamp: String?
    public var metricUnit: String
    public var metricValue: String
    public var roleArn: AwsArn

    public init(metricName: String,
                metricNamespace: String,
                metricTimestamp: String? = nil,
                metricUnit: String,
                metricValue: String,
                roleArn: AwsArn) {
        self.metricName = metricName
        self.metricNamespace = metricNamespace
        self.metricTimestamp = metricTimestamp
        self.metricUnit = metricUnit
        self.metricValue = metricValue
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case metricName
        case metricNamespace
        case metricTimestamp
        case metricUnit
        case metricValue
        case roleArn
    }

    public func validate() throws {
    }
}

public struct CodeSigning: Codable, Equatable {
    public var awsSignerJobId: SigningJobId?
    public var customCodeSigning: CustomCodeSigning?
    public var startSigningJobParameter: StartSigningJobParameter?

    public init(awsSignerJobId: SigningJobId? = nil,
                customCodeSigning: CustomCodeSigning? = nil,
                startSigningJobParameter: StartSigningJobParameter? = nil) {
        self.awsSignerJobId = awsSignerJobId
        self.customCodeSigning = customCodeSigning
        self.startSigningJobParameter = startSigningJobParameter
    }

    enum CodingKeys: String, CodingKey {
        case awsSignerJobId
        case customCodeSigning
        case startSigningJobParameter
    }

    public func validate() throws {
        try customCodeSigning?.validate()
        try startSigningJobParameter?.validate()
    }
}

public struct CodeSigningCertificateChain: Codable, Equatable {
    public var certificateName: CertificateName?
    public var inlineDocument: InlineDocument?

    public init(certificateName: CertificateName? = nil,
                inlineDocument: InlineDocument? = nil) {
        self.certificateName = certificateName
        self.inlineDocument = inlineDocument
    }

    enum CodingKeys: String, CodingKey {
        case certificateName
        case inlineDocument
    }

    public func validate() throws {
    }
}

public struct CodeSigningSignature: Codable, Equatable {
    public var inlineDocument: Signature?

    public init(inlineDocument: Signature? = nil) {
        self.inlineDocument = inlineDocument
    }

    enum CodingKeys: String, CodingKey {
        case inlineDocument
    }

    public func validate() throws {
    }
}

public struct Configuration: Codable, Equatable {
    public var enabled: Enabled?

    public init(enabled: Enabled? = nil) {
        self.enabled = enabled
    }

    enum CodingKeys: String, CodingKey {
        case enabled = "Enabled"
    }

    public func validate() throws {
    }
}

public struct ConflictingResourceUpdateException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct CreateAuthorizerRequest: Codable, Equatable {
    public var authorizerFunctionArn: AuthorizerFunctionArn
    public var authorizerName: AuthorizerName
    public var status: AuthorizerStatus?
    public var tokenKeyName: TokenKeyName
    public var tokenSigningPublicKeys: PublicKeyMap

    public init(authorizerFunctionArn: AuthorizerFunctionArn,
                authorizerName: AuthorizerName,
                status: AuthorizerStatus? = nil,
                tokenKeyName: TokenKeyName,
                tokenSigningPublicKeys: PublicKeyMap) {
        self.authorizerFunctionArn = authorizerFunctionArn
        self.authorizerName = authorizerName
        self.status = status
        self.tokenKeyName = tokenKeyName
        self.tokenSigningPublicKeys = tokenSigningPublicKeys
    }

    enum CodingKeys: String, CodingKey {
        case authorizerFunctionArn
        case authorizerName
        case status
        case tokenKeyName
        case tokenSigningPublicKeys
    }

    public func validate() throws {
        try authorizerName.validateAsAuthorizerName()
        try tokenKeyName.validateAsTokenKeyName()
    }
}

public struct CreateAuthorizerResponse: Codable, Equatable {
    public var authorizerArn: AuthorizerArn?
    public var authorizerName: AuthorizerName?

    public init(authorizerArn: AuthorizerArn? = nil,
                authorizerName: AuthorizerName? = nil) {
        self.authorizerArn = authorizerArn
        self.authorizerName = authorizerName
    }

    enum CodingKeys: String, CodingKey {
        case authorizerArn
        case authorizerName
    }

    public func validate() throws {
        try authorizerName?.validateAsAuthorizerName()
    }
}

public struct CreateBillingGroupRequest: Codable, Equatable {
    public var billingGroupName: BillingGroupName
    public var billingGroupProperties: BillingGroupProperties?
    public var tags: TagList?

    public init(billingGroupName: BillingGroupName,
                billingGroupProperties: BillingGroupProperties? = nil,
                tags: TagList? = nil) {
        self.billingGroupName = billingGroupName
        self.billingGroupProperties = billingGroupProperties
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case billingGroupName
        case billingGroupProperties
        case tags
    }

    public func validate() throws {
        try billingGroupName.validateAsBillingGroupName()
        try billingGroupProperties?.validate()
    }
}

public struct CreateBillingGroupResponse: Codable, Equatable {
    public var billingGroupArn: BillingGroupArn?
    public var billingGroupId: BillingGroupId?
    public var billingGroupName: BillingGroupName?

    public init(billingGroupArn: BillingGroupArn? = nil,
                billingGroupId: BillingGroupId? = nil,
                billingGroupName: BillingGroupName? = nil) {
        self.billingGroupArn = billingGroupArn
        self.billingGroupId = billingGroupId
        self.billingGroupName = billingGroupName
    }

    enum CodingKeys: String, CodingKey {
        case billingGroupArn
        case billingGroupId
        case billingGroupName
    }

    public func validate() throws {
        try billingGroupId?.validateAsBillingGroupId()
        try billingGroupName?.validateAsBillingGroupName()
    }
}

public struct CreateCertificateFromCsrRequest: Codable, Equatable {
    public var certificateSigningRequest: CertificateSigningRequest
    public var setAsActive: SetAsActive?

    public init(certificateSigningRequest: CertificateSigningRequest,
                setAsActive: SetAsActive? = nil) {
        self.certificateSigningRequest = certificateSigningRequest
        self.setAsActive = setAsActive
    }

    enum CodingKeys: String, CodingKey {
        case certificateSigningRequest
        case setAsActive
    }

    public func validate() throws {
        try certificateSigningRequest.validateAsCertificateSigningRequest()
    }
}

public struct CreateCertificateFromCsrResponse: Codable, Equatable {
    public var certificateArn: CertificateArn?
    public var certificateId: CertificateId?
    public var certificatePem: CertificatePem?

    public init(certificateArn: CertificateArn? = nil,
                certificateId: CertificateId? = nil,
                certificatePem: CertificatePem? = nil) {
        self.certificateArn = certificateArn
        self.certificateId = certificateId
        self.certificatePem = certificatePem
    }

    enum CodingKeys: String, CodingKey {
        case certificateArn
        case certificateId
        case certificatePem
    }

    public func validate() throws {
        try certificateId?.validateAsCertificateId()
        try certificatePem?.validateAsCertificatePem()
    }
}

public struct CreateDynamicThingGroupRequest: Codable, Equatable {
    public var indexName: IndexName?
    public var queryString: QueryString
    public var queryVersion: QueryVersion?
    public var tags: TagList?
    public var thingGroupName: ThingGroupName
    public var thingGroupProperties: ThingGroupProperties?

    public init(indexName: IndexName? = nil,
                queryString: QueryString,
                queryVersion: QueryVersion? = nil,
                tags: TagList? = nil,
                thingGroupName: ThingGroupName,
                thingGroupProperties: ThingGroupProperties? = nil) {
        self.indexName = indexName
        self.queryString = queryString
        self.queryVersion = queryVersion
        self.tags = tags
        self.thingGroupName = thingGroupName
        self.thingGroupProperties = thingGroupProperties
    }

    enum CodingKeys: String, CodingKey {
        case indexName
        case queryString
        case queryVersion
        case tags
        case thingGroupName
        case thingGroupProperties
    }

    public func validate() throws {
        try indexName?.validateAsIndexName()
        try queryString.validateAsQueryString()
        try thingGroupName.validateAsThingGroupName()
        try thingGroupProperties?.validate()
    }
}

public struct CreateDynamicThingGroupResponse: Codable, Equatable {
    public var indexName: IndexName?
    public var queryString: QueryString?
    public var queryVersion: QueryVersion?
    public var thingGroupArn: ThingGroupArn?
    public var thingGroupId: ThingGroupId?
    public var thingGroupName: ThingGroupName?

    public init(indexName: IndexName? = nil,
                queryString: QueryString? = nil,
                queryVersion: QueryVersion? = nil,
                thingGroupArn: ThingGroupArn? = nil,
                thingGroupId: ThingGroupId? = nil,
                thingGroupName: ThingGroupName? = nil) {
        self.indexName = indexName
        self.queryString = queryString
        self.queryVersion = queryVersion
        self.thingGroupArn = thingGroupArn
        self.thingGroupId = thingGroupId
        self.thingGroupName = thingGroupName
    }

    enum CodingKeys: String, CodingKey {
        case indexName
        case queryString
        case queryVersion
        case thingGroupArn
        case thingGroupId
        case thingGroupName
    }

    public func validate() throws {
        try indexName?.validateAsIndexName()
        try queryString?.validateAsQueryString()
        try thingGroupId?.validateAsThingGroupId()
        try thingGroupName?.validateAsThingGroupName()
    }
}

public struct CreateJobRequest: Codable, Equatable {
    public var abortConfig: AbortConfig?
    public var description: JobDescription?
    public var document: JobDocument?
    public var documentSource: JobDocumentSource?
    public var jobExecutionsRolloutConfig: JobExecutionsRolloutConfig?
    public var jobId: JobId
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
                jobId: JobId,
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
        self.jobId = jobId
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
        case jobId
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
        try jobId.validateAsJobId()
        try presignedUrlConfig?.validate()
        try targets.validateAsJobTargets()
        try timeoutConfig?.validate()
    }
}

public struct CreateJobResponse: Codable, Equatable {
    public var description: JobDescription?
    public var jobArn: JobArn?
    public var jobId: JobId?

    public init(description: JobDescription? = nil,
                jobArn: JobArn? = nil,
                jobId: JobId? = nil) {
        self.description = description
        self.jobArn = jobArn
        self.jobId = jobId
    }

    enum CodingKeys: String, CodingKey {
        case description
        case jobArn
        case jobId
    }

    public func validate() throws {
        try description?.validateAsJobDescription()
        try jobId?.validateAsJobId()
    }
}

public struct CreateKeysAndCertificateRequest: Codable, Equatable {
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

public struct CreateKeysAndCertificateResponse: Codable, Equatable {
    public var certificateArn: CertificateArn?
    public var certificateId: CertificateId?
    public var certificatePem: CertificatePem?
    public var keyPair: KeyPair?

    public init(certificateArn: CertificateArn? = nil,
                certificateId: CertificateId? = nil,
                certificatePem: CertificatePem? = nil,
                keyPair: KeyPair? = nil) {
        self.certificateArn = certificateArn
        self.certificateId = certificateId
        self.certificatePem = certificatePem
        self.keyPair = keyPair
    }

    enum CodingKeys: String, CodingKey {
        case certificateArn
        case certificateId
        case certificatePem
        case keyPair
    }

    public func validate() throws {
        try certificateId?.validateAsCertificateId()
        try certificatePem?.validateAsCertificatePem()
        try keyPair?.validate()
    }
}

public struct CreateMitigationActionRequest: Codable, Equatable {
    public var actionName: MitigationActionName
    public var actionParams: MitigationActionParams
    public var roleArn: RoleArn
    public var tags: TagList?

    public init(actionName: MitigationActionName,
                actionParams: MitigationActionParams,
                roleArn: RoleArn,
                tags: TagList? = nil) {
        self.actionName = actionName
        self.actionParams = actionParams
        self.roleArn = roleArn
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case actionName
        case actionParams
        case roleArn
        case tags
    }

    public func validate() throws {
        try actionName.validateAsMitigationActionName()
        try actionParams.validate()
        try roleArn.validateAsRoleArn()
    }
}

public struct CreateMitigationActionResponse: Codable, Equatable {
    public var actionArn: MitigationActionArn?
    public var actionId: MitigationActionId?

    public init(actionArn: MitigationActionArn? = nil,
                actionId: MitigationActionId? = nil) {
        self.actionArn = actionArn
        self.actionId = actionId
    }

    enum CodingKeys: String, CodingKey {
        case actionArn
        case actionId
    }

    public func validate() throws {
    }
}

public struct CreateOTAUpdateRequest: Codable, Equatable {
    public var additionalParameters: AdditionalParameterMap?
    public var awsJobExecutionsRolloutConfig: AwsJobExecutionsRolloutConfig?
    public var description: OTAUpdateDescription?
    public var files: OTAUpdateFiles
    public var otaUpdateId: OTAUpdateId
    public var roleArn: RoleArn
    public var tags: TagList?
    public var targetSelection: TargetSelection?
    public var targets: Targets

    public init(additionalParameters: AdditionalParameterMap? = nil,
                awsJobExecutionsRolloutConfig: AwsJobExecutionsRolloutConfig? = nil,
                description: OTAUpdateDescription? = nil,
                files: OTAUpdateFiles,
                otaUpdateId: OTAUpdateId,
                roleArn: RoleArn,
                tags: TagList? = nil,
                targetSelection: TargetSelection? = nil,
                targets: Targets) {
        self.additionalParameters = additionalParameters
        self.awsJobExecutionsRolloutConfig = awsJobExecutionsRolloutConfig
        self.description = description
        self.files = files
        self.otaUpdateId = otaUpdateId
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
        case otaUpdateId
        case roleArn
        case tags
        case targetSelection
        case targets
    }

    public func validate() throws {
        try awsJobExecutionsRolloutConfig?.validate()
        try description?.validateAsOTAUpdateDescription()
        try files.validateAsOTAUpdateFiles()
        try otaUpdateId.validateAsOTAUpdateId()
        try roleArn.validateAsRoleArn()
        try targets.validateAsTargets()
    }
}

public struct CreateOTAUpdateResponse: Codable, Equatable {
    public var awsIotJobArn: AwsIotJobArn?
    public var awsIotJobId: AwsIotJobId?
    public var otaUpdateArn: OTAUpdateArn?
    public var otaUpdateId: OTAUpdateId?
    public var otaUpdateStatus: OTAUpdateStatus?

    public init(awsIotJobArn: AwsIotJobArn? = nil,
                awsIotJobId: AwsIotJobId? = nil,
                otaUpdateArn: OTAUpdateArn? = nil,
                otaUpdateId: OTAUpdateId? = nil,
                otaUpdateStatus: OTAUpdateStatus? = nil) {
        self.awsIotJobArn = awsIotJobArn
        self.awsIotJobId = awsIotJobId
        self.otaUpdateArn = otaUpdateArn
        self.otaUpdateId = otaUpdateId
        self.otaUpdateStatus = otaUpdateStatus
    }

    enum CodingKeys: String, CodingKey {
        case awsIotJobArn
        case awsIotJobId
        case otaUpdateArn
        case otaUpdateId
        case otaUpdateStatus
    }

    public func validate() throws {
        try otaUpdateId?.validateAsOTAUpdateId()
    }
}

public struct CreatePolicyRequest: Codable, Equatable {
    public var policyDocument: PolicyDocument
    public var policyName: PolicyName

    public init(policyDocument: PolicyDocument,
                policyName: PolicyName) {
        self.policyDocument = policyDocument
        self.policyName = policyName
    }

    enum CodingKeys: String, CodingKey {
        case policyDocument
        case policyName
    }

    public func validate() throws {
        try policyName.validateAsPolicyName()
    }
}

public struct CreatePolicyResponse: Codable, Equatable {
    public var policyArn: PolicyArn?
    public var policyDocument: PolicyDocument?
    public var policyName: PolicyName?
    public var policyVersionId: PolicyVersionId?

    public init(policyArn: PolicyArn? = nil,
                policyDocument: PolicyDocument? = nil,
                policyName: PolicyName? = nil,
                policyVersionId: PolicyVersionId? = nil) {
        self.policyArn = policyArn
        self.policyDocument = policyDocument
        self.policyName = policyName
        self.policyVersionId = policyVersionId
    }

    enum CodingKeys: String, CodingKey {
        case policyArn
        case policyDocument
        case policyName
        case policyVersionId
    }

    public func validate() throws {
        try policyName?.validateAsPolicyName()
        try policyVersionId?.validateAsPolicyVersionId()
    }
}

public struct CreatePolicyVersionRequest: Codable, Equatable {
    public var policyDocument: PolicyDocument
    public var policyName: PolicyName
    public var setAsDefault: SetAsDefault?

    public init(policyDocument: PolicyDocument,
                policyName: PolicyName,
                setAsDefault: SetAsDefault? = nil) {
        self.policyDocument = policyDocument
        self.policyName = policyName
        self.setAsDefault = setAsDefault
    }

    enum CodingKeys: String, CodingKey {
        case policyDocument
        case policyName
        case setAsDefault
    }

    public func validate() throws {
        try policyName.validateAsPolicyName()
    }
}

public struct CreatePolicyVersionResponse: Codable, Equatable {
    public var isDefaultVersion: IsDefaultVersion?
    public var policyArn: PolicyArn?
    public var policyDocument: PolicyDocument?
    public var policyVersionId: PolicyVersionId?

    public init(isDefaultVersion: IsDefaultVersion? = nil,
                policyArn: PolicyArn? = nil,
                policyDocument: PolicyDocument? = nil,
                policyVersionId: PolicyVersionId? = nil) {
        self.isDefaultVersion = isDefaultVersion
        self.policyArn = policyArn
        self.policyDocument = policyDocument
        self.policyVersionId = policyVersionId
    }

    enum CodingKeys: String, CodingKey {
        case isDefaultVersion
        case policyArn
        case policyDocument
        case policyVersionId
    }

    public func validate() throws {
        try policyVersionId?.validateAsPolicyVersionId()
    }
}

public struct CreateRoleAliasRequest: Codable, Equatable {
    public var credentialDurationSeconds: CredentialDurationSeconds?
    public var roleAlias: RoleAlias
    public var roleArn: RoleArn

    public init(credentialDurationSeconds: CredentialDurationSeconds? = nil,
                roleAlias: RoleAlias,
                roleArn: RoleArn) {
        self.credentialDurationSeconds = credentialDurationSeconds
        self.roleAlias = roleAlias
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case credentialDurationSeconds
        case roleAlias
        case roleArn
    }

    public func validate() throws {
        try credentialDurationSeconds?.validateAsCredentialDurationSeconds()
        try roleAlias.validateAsRoleAlias()
        try roleArn.validateAsRoleArn()
    }
}

public struct CreateRoleAliasResponse: Codable, Equatable {
    public var roleAlias: RoleAlias?
    public var roleAliasArn: RoleAliasArn?

    public init(roleAlias: RoleAlias? = nil,
                roleAliasArn: RoleAliasArn? = nil) {
        self.roleAlias = roleAlias
        self.roleAliasArn = roleAliasArn
    }

    enum CodingKeys: String, CodingKey {
        case roleAlias
        case roleAliasArn
    }

    public func validate() throws {
        try roleAlias?.validateAsRoleAlias()
    }
}

public struct CreateScheduledAuditRequest: Codable, Equatable {
    public var dayOfMonth: DayOfMonth?
    public var dayOfWeek: DayOfWeek?
    public var frequency: AuditFrequency
    public var scheduledAuditName: ScheduledAuditName
    public var tags: TagList?
    public var targetCheckNames: TargetAuditCheckNames

    public init(dayOfMonth: DayOfMonth? = nil,
                dayOfWeek: DayOfWeek? = nil,
                frequency: AuditFrequency,
                scheduledAuditName: ScheduledAuditName,
                tags: TagList? = nil,
                targetCheckNames: TargetAuditCheckNames) {
        self.dayOfMonth = dayOfMonth
        self.dayOfWeek = dayOfWeek
        self.frequency = frequency
        self.scheduledAuditName = scheduledAuditName
        self.tags = tags
        self.targetCheckNames = targetCheckNames
    }

    enum CodingKeys: String, CodingKey {
        case dayOfMonth
        case dayOfWeek
        case frequency
        case scheduledAuditName
        case tags
        case targetCheckNames
    }

    public func validate() throws {
        try dayOfMonth?.validateAsDayOfMonth()
        try scheduledAuditName.validateAsScheduledAuditName()
    }
}

public struct CreateScheduledAuditResponse: Codable, Equatable {
    public var scheduledAuditArn: ScheduledAuditArn?

    public init(scheduledAuditArn: ScheduledAuditArn? = nil) {
        self.scheduledAuditArn = scheduledAuditArn
    }

    enum CodingKeys: String, CodingKey {
        case scheduledAuditArn
    }

    public func validate() throws {
    }
}

public struct CreateSecurityProfileRequest: Codable, Equatable {
    public var additionalMetricsToRetain: AdditionalMetricsToRetainList?
    public var alertTargets: AlertTargets?
    public var behaviors: Behaviors?
    public var securityProfileDescription: SecurityProfileDescription?
    public var securityProfileName: SecurityProfileName
    public var tags: TagList?

    public init(additionalMetricsToRetain: AdditionalMetricsToRetainList? = nil,
                alertTargets: AlertTargets? = nil,
                behaviors: Behaviors? = nil,
                securityProfileDescription: SecurityProfileDescription? = nil,
                securityProfileName: SecurityProfileName,
                tags: TagList? = nil) {
        self.additionalMetricsToRetain = additionalMetricsToRetain
        self.alertTargets = alertTargets
        self.behaviors = behaviors
        self.securityProfileDescription = securityProfileDescription
        self.securityProfileName = securityProfileName
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case additionalMetricsToRetain
        case alertTargets
        case behaviors
        case securityProfileDescription
        case securityProfileName
        case tags
    }

    public func validate() throws {
        try behaviors?.validateAsBehaviors()
        try securityProfileDescription?.validateAsSecurityProfileDescription()
        try securityProfileName.validateAsSecurityProfileName()
    }
}

public struct CreateSecurityProfileResponse: Codable, Equatable {
    public var securityProfileArn: SecurityProfileArn?
    public var securityProfileName: SecurityProfileName?

    public init(securityProfileArn: SecurityProfileArn? = nil,
                securityProfileName: SecurityProfileName? = nil) {
        self.securityProfileArn = securityProfileArn
        self.securityProfileName = securityProfileName
    }

    enum CodingKeys: String, CodingKey {
        case securityProfileArn
        case securityProfileName
    }

    public func validate() throws {
        try securityProfileName?.validateAsSecurityProfileName()
    }
}

public struct CreateStreamRequest: Codable, Equatable {
    public var description: StreamDescription?
    public var files: StreamFiles
    public var roleArn: RoleArn
    public var streamId: StreamId
    public var tags: TagList?

    public init(description: StreamDescription? = nil,
                files: StreamFiles,
                roleArn: RoleArn,
                streamId: StreamId,
                tags: TagList? = nil) {
        self.description = description
        self.files = files
        self.roleArn = roleArn
        self.streamId = streamId
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case description
        case files
        case roleArn
        case streamId
        case tags
    }

    public func validate() throws {
        try description?.validateAsStreamDescription()
        try files.validateAsStreamFiles()
        try roleArn.validateAsRoleArn()
        try streamId.validateAsStreamId()
    }
}

public struct CreateStreamResponse: Codable, Equatable {
    public var description: StreamDescription?
    public var streamArn: StreamArn?
    public var streamId: StreamId?
    public var streamVersion: StreamVersion?

    public init(description: StreamDescription? = nil,
                streamArn: StreamArn? = nil,
                streamId: StreamId? = nil,
                streamVersion: StreamVersion? = nil) {
        self.description = description
        self.streamArn = streamArn
        self.streamId = streamId
        self.streamVersion = streamVersion
    }

    enum CodingKeys: String, CodingKey {
        case description
        case streamArn
        case streamId
        case streamVersion
    }

    public func validate() throws {
        try description?.validateAsStreamDescription()
        try streamId?.validateAsStreamId()
        try streamVersion?.validateAsStreamVersion()
    }
}

public struct CreateThingGroupRequest: Codable, Equatable {
    public var parentGroupName: ThingGroupName?
    public var tags: TagList?
    public var thingGroupName: ThingGroupName
    public var thingGroupProperties: ThingGroupProperties?

    public init(parentGroupName: ThingGroupName? = nil,
                tags: TagList? = nil,
                thingGroupName: ThingGroupName,
                thingGroupProperties: ThingGroupProperties? = nil) {
        self.parentGroupName = parentGroupName
        self.tags = tags
        self.thingGroupName = thingGroupName
        self.thingGroupProperties = thingGroupProperties
    }

    enum CodingKeys: String, CodingKey {
        case parentGroupName
        case tags
        case thingGroupName
        case thingGroupProperties
    }

    public func validate() throws {
        try parentGroupName?.validateAsThingGroupName()
        try thingGroupName.validateAsThingGroupName()
        try thingGroupProperties?.validate()
    }
}

public struct CreateThingGroupResponse: Codable, Equatable {
    public var thingGroupArn: ThingGroupArn?
    public var thingGroupId: ThingGroupId?
    public var thingGroupName: ThingGroupName?

    public init(thingGroupArn: ThingGroupArn? = nil,
                thingGroupId: ThingGroupId? = nil,
                thingGroupName: ThingGroupName? = nil) {
        self.thingGroupArn = thingGroupArn
        self.thingGroupId = thingGroupId
        self.thingGroupName = thingGroupName
    }

    enum CodingKeys: String, CodingKey {
        case thingGroupArn
        case thingGroupId
        case thingGroupName
    }

    public func validate() throws {
        try thingGroupId?.validateAsThingGroupId()
        try thingGroupName?.validateAsThingGroupName()
    }
}

public struct CreateThingRequest: Codable, Equatable {
    public var attributePayload: AttributePayload?
    public var billingGroupName: BillingGroupName?
    public var thingName: ThingName
    public var thingTypeName: ThingTypeName?

    public init(attributePayload: AttributePayload? = nil,
                billingGroupName: BillingGroupName? = nil,
                thingName: ThingName,
                thingTypeName: ThingTypeName? = nil) {
        self.attributePayload = attributePayload
        self.billingGroupName = billingGroupName
        self.thingName = thingName
        self.thingTypeName = thingTypeName
    }

    enum CodingKeys: String, CodingKey {
        case attributePayload
        case billingGroupName
        case thingName
        case thingTypeName
    }

    public func validate() throws {
        try attributePayload?.validate()
        try billingGroupName?.validateAsBillingGroupName()
        try thingName.validateAsThingName()
        try thingTypeName?.validateAsThingTypeName()
    }
}

public struct CreateThingResponse: Codable, Equatable {
    public var thingArn: ThingArn?
    public var thingId: ThingId?
    public var thingName: ThingName?

    public init(thingArn: ThingArn? = nil,
                thingId: ThingId? = nil,
                thingName: ThingName? = nil) {
        self.thingArn = thingArn
        self.thingId = thingId
        self.thingName = thingName
    }

    enum CodingKeys: String, CodingKey {
        case thingArn
        case thingId
        case thingName
    }

    public func validate() throws {
        try thingName?.validateAsThingName()
    }
}

public struct CreateThingTypeRequest: Codable, Equatable {
    public var tags: TagList?
    public var thingTypeName: ThingTypeName
    public var thingTypeProperties: ThingTypeProperties?

    public init(tags: TagList? = nil,
                thingTypeName: ThingTypeName,
                thingTypeProperties: ThingTypeProperties? = nil) {
        self.tags = tags
        self.thingTypeName = thingTypeName
        self.thingTypeProperties = thingTypeProperties
    }

    enum CodingKeys: String, CodingKey {
        case tags
        case thingTypeName
        case thingTypeProperties
    }

    public func validate() throws {
        try thingTypeName.validateAsThingTypeName()
        try thingTypeProperties?.validate()
    }
}

public struct CreateThingTypeResponse: Codable, Equatable {
    public var thingTypeArn: ThingTypeArn?
    public var thingTypeId: ThingTypeId?
    public var thingTypeName: ThingTypeName?

    public init(thingTypeArn: ThingTypeArn? = nil,
                thingTypeId: ThingTypeId? = nil,
                thingTypeName: ThingTypeName? = nil) {
        self.thingTypeArn = thingTypeArn
        self.thingTypeId = thingTypeId
        self.thingTypeName = thingTypeName
    }

    enum CodingKeys: String, CodingKey {
        case thingTypeArn
        case thingTypeId
        case thingTypeName
    }

    public func validate() throws {
        try thingTypeName?.validateAsThingTypeName()
    }
}

public struct CreateTopicRuleRequest: Codable, Equatable {
    public var ruleName: RuleName
    public var tags: String?
    public var topicRulePayload: TopicRulePayload

    public init(ruleName: RuleName,
                tags: String? = nil,
                topicRulePayload: TopicRulePayload) {
        self.ruleName = ruleName
        self.tags = tags
        self.topicRulePayload = topicRulePayload
    }

    enum CodingKeys: String, CodingKey {
        case ruleName
        case tags = "x-amz-tagging"
        case topicRulePayload
    }

    public func validate() throws {
        try ruleName.validateAsRuleName()
        try topicRulePayload.validate()
    }
}

public struct CustomCodeSigning: Codable, Equatable {
    public var certificateChain: CodeSigningCertificateChain?
    public var hashAlgorithm: HashAlgorithm?
    public var signature: CodeSigningSignature?
    public var signatureAlgorithm: SignatureAlgorithm?

    public init(certificateChain: CodeSigningCertificateChain? = nil,
                hashAlgorithm: HashAlgorithm? = nil,
                signature: CodeSigningSignature? = nil,
                signatureAlgorithm: SignatureAlgorithm? = nil) {
        self.certificateChain = certificateChain
        self.hashAlgorithm = hashAlgorithm
        self.signature = signature
        self.signatureAlgorithm = signatureAlgorithm
    }

    enum CodingKeys: String, CodingKey {
        case certificateChain
        case hashAlgorithm
        case signature
        case signatureAlgorithm
    }

    public func validate() throws {
        try certificateChain?.validate()
        try signature?.validate()
    }
}

public struct DeleteAccountAuditConfigurationRequest: Codable, Equatable {
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

public struct DeleteAccountAuditConfigurationResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteAuthorizerRequest: Codable, Equatable {
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

public struct DeleteAuthorizerResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteBillingGroupRequest: Codable, Equatable {
    public var billingGroupName: BillingGroupName
    public var expectedVersion: OptionalVersion?

    public init(billingGroupName: BillingGroupName,
                expectedVersion: OptionalVersion? = nil) {
        self.billingGroupName = billingGroupName
        self.expectedVersion = expectedVersion
    }

    enum CodingKeys: String, CodingKey {
        case billingGroupName
        case expectedVersion
    }

    public func validate() throws {
        try billingGroupName.validateAsBillingGroupName()
    }
}

public struct DeleteBillingGroupResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteCACertificateRequest: Codable, Equatable {
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

public struct DeleteCACertificateResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteCertificateRequest: Codable, Equatable {
    public var certificateId: CertificateId
    public var forceDelete: ForceDelete?

    public init(certificateId: CertificateId,
                forceDelete: ForceDelete? = nil) {
        self.certificateId = certificateId
        self.forceDelete = forceDelete
    }

    enum CodingKeys: String, CodingKey {
        case certificateId
        case forceDelete
    }

    public func validate() throws {
        try certificateId.validateAsCertificateId()
    }
}

public struct DeleteConflictException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct DeleteDynamicThingGroupRequest: Codable, Equatable {
    public var expectedVersion: OptionalVersion?
    public var thingGroupName: ThingGroupName

    public init(expectedVersion: OptionalVersion? = nil,
                thingGroupName: ThingGroupName) {
        self.expectedVersion = expectedVersion
        self.thingGroupName = thingGroupName
    }

    enum CodingKeys: String, CodingKey {
        case expectedVersion
        case thingGroupName
    }

    public func validate() throws {
        try thingGroupName.validateAsThingGroupName()
    }
}

public struct DeleteDynamicThingGroupResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteJobExecutionRequest: Codable, Equatable {
    public var executionNumber: ExecutionNumber
    public var force: ForceFlag?
    public var jobId: JobId
    public var thingName: ThingName

    public init(executionNumber: ExecutionNumber,
                force: ForceFlag? = nil,
                jobId: JobId,
                thingName: ThingName) {
        self.executionNumber = executionNumber
        self.force = force
        self.jobId = jobId
        self.thingName = thingName
    }

    enum CodingKeys: String, CodingKey {
        case executionNumber
        case force
        case jobId
        case thingName
    }

    public func validate() throws {
        try jobId.validateAsJobId()
        try thingName.validateAsThingName()
    }
}

public struct DeleteJobRequest: Codable, Equatable {
    public var force: ForceFlag?
    public var jobId: JobId

    public init(force: ForceFlag? = nil,
                jobId: JobId) {
        self.force = force
        self.jobId = jobId
    }

    enum CodingKeys: String, CodingKey {
        case force
        case jobId
    }

    public func validate() throws {
        try jobId.validateAsJobId()
    }
}

public struct DeleteMitigationActionRequest: Codable, Equatable {
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

public struct DeleteMitigationActionResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteOTAUpdateRequest: Codable, Equatable {
    public var deleteStream: DeleteStream?
    public var forceDeleteAWSJob: ForceDeleteAWSJob?
    public var otaUpdateId: OTAUpdateId

    public init(deleteStream: DeleteStream? = nil,
                forceDeleteAWSJob: ForceDeleteAWSJob? = nil,
                otaUpdateId: OTAUpdateId) {
        self.deleteStream = deleteStream
        self.forceDeleteAWSJob = forceDeleteAWSJob
        self.otaUpdateId = otaUpdateId
    }

    enum CodingKeys: String, CodingKey {
        case deleteStream
        case forceDeleteAWSJob
        case otaUpdateId
    }

    public func validate() throws {
        try otaUpdateId.validateAsOTAUpdateId()
    }
}

public struct DeleteOTAUpdateResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeletePolicyRequest: Codable, Equatable {
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

public struct DeletePolicyVersionRequest: Codable, Equatable {
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

public struct DeleteRegistrationCodeRequest: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteRegistrationCodeResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteRoleAliasRequest: Codable, Equatable {
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

public struct DeleteRoleAliasResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteScheduledAuditRequest: Codable, Equatable {
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

public struct DeleteScheduledAuditResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteSecurityProfileRequest: Codable, Equatable {
    public var expectedVersion: OptionalVersion?
    public var securityProfileName: SecurityProfileName

    public init(expectedVersion: OptionalVersion? = nil,
                securityProfileName: SecurityProfileName) {
        self.expectedVersion = expectedVersion
        self.securityProfileName = securityProfileName
    }

    enum CodingKeys: String, CodingKey {
        case expectedVersion
        case securityProfileName
    }

    public func validate() throws {
        try securityProfileName.validateAsSecurityProfileName()
    }
}

public struct DeleteSecurityProfileResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteStreamRequest: Codable, Equatable {
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

public struct DeleteStreamResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteThingGroupRequest: Codable, Equatable {
    public var expectedVersion: OptionalVersion?
    public var thingGroupName: ThingGroupName

    public init(expectedVersion: OptionalVersion? = nil,
                thingGroupName: ThingGroupName) {
        self.expectedVersion = expectedVersion
        self.thingGroupName = thingGroupName
    }

    enum CodingKeys: String, CodingKey {
        case expectedVersion
        case thingGroupName
    }

    public func validate() throws {
        try thingGroupName.validateAsThingGroupName()
    }
}

public struct DeleteThingGroupResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteThingRequest: Codable, Equatable {
    public var expectedVersion: OptionalVersion?
    public var thingName: ThingName

    public init(expectedVersion: OptionalVersion? = nil,
                thingName: ThingName) {
        self.expectedVersion = expectedVersion
        self.thingName = thingName
    }

    enum CodingKeys: String, CodingKey {
        case expectedVersion
        case thingName
    }

    public func validate() throws {
        try thingName.validateAsThingName()
    }
}

public struct DeleteThingResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteThingTypeRequest: Codable, Equatable {
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

public struct DeleteThingTypeResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteTopicRuleRequest: Codable, Equatable {
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

public struct DeleteV2LoggingLevelRequest: Codable, Equatable {
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

public struct Denied: Codable, Equatable {
    public var explicitDeny: ExplicitDeny?
    public var implicitDeny: ImplicitDeny?

    public init(explicitDeny: ExplicitDeny? = nil,
                implicitDeny: ImplicitDeny? = nil) {
        self.explicitDeny = explicitDeny
        self.implicitDeny = implicitDeny
    }

    enum CodingKeys: String, CodingKey {
        case explicitDeny
        case implicitDeny
    }

    public func validate() throws {
        try explicitDeny?.validate()
        try implicitDeny?.validate()
    }
}

public struct DeprecateThingTypeRequest: Codable, Equatable {
    public var thingTypeName: ThingTypeName
    public var undoDeprecate: UndoDeprecate?

    public init(thingTypeName: ThingTypeName,
                undoDeprecate: UndoDeprecate? = nil) {
        self.thingTypeName = thingTypeName
        self.undoDeprecate = undoDeprecate
    }

    enum CodingKeys: String, CodingKey {
        case thingTypeName
        case undoDeprecate
    }

    public func validate() throws {
        try thingTypeName.validateAsThingTypeName()
    }
}

public struct DeprecateThingTypeResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DescribeAccountAuditConfigurationRequest: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DescribeAccountAuditConfigurationResponse: Codable, Equatable {
    public var auditCheckConfigurations: AuditCheckConfigurations?
    public var auditNotificationTargetConfigurations: AuditNotificationTargetConfigurations?
    public var roleArn: RoleArn?

    public init(auditCheckConfigurations: AuditCheckConfigurations? = nil,
                auditNotificationTargetConfigurations: AuditNotificationTargetConfigurations? = nil,
                roleArn: RoleArn? = nil) {
        self.auditCheckConfigurations = auditCheckConfigurations
        self.auditNotificationTargetConfigurations = auditNotificationTargetConfigurations
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case auditCheckConfigurations
        case auditNotificationTargetConfigurations
        case roleArn
    }

    public func validate() throws {
        try roleArn?.validateAsRoleArn()
    }
}

public struct DescribeAuditFindingRequest: Codable, Equatable {
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

public struct DescribeAuditFindingResponse: Codable, Equatable {
    public var finding: AuditFinding?

    public init(finding: AuditFinding? = nil) {
        self.finding = finding
    }

    enum CodingKeys: String, CodingKey {
        case finding
    }

    public func validate() throws {
        try finding?.validate()
    }
}

public struct DescribeAuditMitigationActionsTaskRequest: Codable, Equatable {
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

public struct DescribeAuditMitigationActionsTaskResponse: Codable, Equatable {
    public var actionsDefinition: MitigationActionList?
    public var auditCheckToActionsMapping: AuditCheckToActionsMapping?
    public var endTime: Timestamp?
    public var startTime: Timestamp?
    public var target: AuditMitigationActionsTaskTarget?
    public var taskStatistics: AuditMitigationActionsTaskStatistics?
    public var taskStatus: AuditMitigationActionsTaskStatus?

    public init(actionsDefinition: MitigationActionList? = nil,
                auditCheckToActionsMapping: AuditCheckToActionsMapping? = nil,
                endTime: Timestamp? = nil,
                startTime: Timestamp? = nil,
                target: AuditMitigationActionsTaskTarget? = nil,
                taskStatistics: AuditMitigationActionsTaskStatistics? = nil,
                taskStatus: AuditMitigationActionsTaskStatus? = nil) {
        self.actionsDefinition = actionsDefinition
        self.auditCheckToActionsMapping = auditCheckToActionsMapping
        self.endTime = endTime
        self.startTime = startTime
        self.target = target
        self.taskStatistics = taskStatistics
        self.taskStatus = taskStatus
    }

    enum CodingKeys: String, CodingKey {
        case actionsDefinition
        case auditCheckToActionsMapping
        case endTime
        case startTime
        case target
        case taskStatistics
        case taskStatus
    }

    public func validate() throws {
        try target?.validate()
    }
}

public struct DescribeAuditTaskRequest: Codable, Equatable {
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

public struct DescribeAuditTaskResponse: Codable, Equatable {
    public var auditDetails: AuditDetails?
    public var scheduledAuditName: ScheduledAuditName?
    public var taskStartTime: Timestamp?
    public var taskStatistics: TaskStatistics?
    public var taskStatus: AuditTaskStatus?
    public var taskType: AuditTaskType?

    public init(auditDetails: AuditDetails? = nil,
                scheduledAuditName: ScheduledAuditName? = nil,
                taskStartTime: Timestamp? = nil,
                taskStatistics: TaskStatistics? = nil,
                taskStatus: AuditTaskStatus? = nil,
                taskType: AuditTaskType? = nil) {
        self.auditDetails = auditDetails
        self.scheduledAuditName = scheduledAuditName
        self.taskStartTime = taskStartTime
        self.taskStatistics = taskStatistics
        self.taskStatus = taskStatus
        self.taskType = taskType
    }

    enum CodingKeys: String, CodingKey {
        case auditDetails
        case scheduledAuditName
        case taskStartTime
        case taskStatistics
        case taskStatus
        case taskType
    }

    public func validate() throws {
        try scheduledAuditName?.validateAsScheduledAuditName()
        try taskStatistics?.validate()
    }
}

public struct DescribeAuthorizerRequest: Codable, Equatable {
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

public struct DescribeAuthorizerResponse: Codable, Equatable {
    public var authorizerDescription: AuthorizerDescription?

    public init(authorizerDescription: AuthorizerDescription? = nil) {
        self.authorizerDescription = authorizerDescription
    }

    enum CodingKeys: String, CodingKey {
        case authorizerDescription
    }

    public func validate() throws {
        try authorizerDescription?.validate()
    }
}

public struct DescribeBillingGroupRequest: Codable, Equatable {
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

public struct DescribeBillingGroupResponse: Codable, Equatable {
    public var billingGroupArn: BillingGroupArn?
    public var billingGroupId: BillingGroupId?
    public var billingGroupMetadata: BillingGroupMetadata?
    public var billingGroupName: BillingGroupName?
    public var billingGroupProperties: BillingGroupProperties?
    public var version: Version?

    public init(billingGroupArn: BillingGroupArn? = nil,
                billingGroupId: BillingGroupId? = nil,
                billingGroupMetadata: BillingGroupMetadata? = nil,
                billingGroupName: BillingGroupName? = nil,
                billingGroupProperties: BillingGroupProperties? = nil,
                version: Version? = nil) {
        self.billingGroupArn = billingGroupArn
        self.billingGroupId = billingGroupId
        self.billingGroupMetadata = billingGroupMetadata
        self.billingGroupName = billingGroupName
        self.billingGroupProperties = billingGroupProperties
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case billingGroupArn
        case billingGroupId
        case billingGroupMetadata
        case billingGroupName
        case billingGroupProperties
        case version
    }

    public func validate() throws {
        try billingGroupId?.validateAsBillingGroupId()
        try billingGroupMetadata?.validate()
        try billingGroupName?.validateAsBillingGroupName()
        try billingGroupProperties?.validate()
    }
}

public struct DescribeCACertificateRequest: Codable, Equatable {
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

public struct DescribeCACertificateResponse: Codable, Equatable {
    public var certificateDescription: CACertificateDescription?
    public var registrationConfig: RegistrationConfig?

    public init(certificateDescription: CACertificateDescription? = nil,
                registrationConfig: RegistrationConfig? = nil) {
        self.certificateDescription = certificateDescription
        self.registrationConfig = registrationConfig
    }

    enum CodingKeys: String, CodingKey {
        case certificateDescription
        case registrationConfig
    }

    public func validate() throws {
        try certificateDescription?.validate()
        try registrationConfig?.validate()
    }
}

public struct DescribeCertificateRequest: Codable, Equatable {
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

public struct DescribeCertificateResponse: Codable, Equatable {
    public var certificateDescription: CertificateDescription?

    public init(certificateDescription: CertificateDescription? = nil) {
        self.certificateDescription = certificateDescription
    }

    enum CodingKeys: String, CodingKey {
        case certificateDescription
    }

    public func validate() throws {
        try certificateDescription?.validate()
    }
}

public struct DescribeDefaultAuthorizerRequest: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DescribeDefaultAuthorizerResponse: Codable, Equatable {
    public var authorizerDescription: AuthorizerDescription?

    public init(authorizerDescription: AuthorizerDescription? = nil) {
        self.authorizerDescription = authorizerDescription
    }

    enum CodingKeys: String, CodingKey {
        case authorizerDescription
    }

    public func validate() throws {
        try authorizerDescription?.validate()
    }
}

public struct DescribeEndpointRequest: Codable, Equatable {
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

public struct DescribeEndpointResponse: Codable, Equatable {
    public var endpointAddress: EndpointAddress?

    public init(endpointAddress: EndpointAddress? = nil) {
        self.endpointAddress = endpointAddress
    }

    enum CodingKeys: String, CodingKey {
        case endpointAddress
    }

    public func validate() throws {
    }
}

public struct DescribeEventConfigurationsRequest: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DescribeEventConfigurationsResponse: Codable, Equatable {
    public var creationDate: CreationDate?
    public var eventConfigurations: EventConfigurations?
    public var lastModifiedDate: LastModifiedDate?

    public init(creationDate: CreationDate? = nil,
                eventConfigurations: EventConfigurations? = nil,
                lastModifiedDate: LastModifiedDate? = nil) {
        self.creationDate = creationDate
        self.eventConfigurations = eventConfigurations
        self.lastModifiedDate = lastModifiedDate
    }

    enum CodingKeys: String, CodingKey {
        case creationDate
        case eventConfigurations
        case lastModifiedDate
    }

    public func validate() throws {
    }
}

public struct DescribeIndexRequest: Codable, Equatable {
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

public struct DescribeIndexResponse: Codable, Equatable {
    public var indexName: IndexName?
    public var indexStatus: IndexStatus?
    public var schema: IndexSchema?

    public init(indexName: IndexName? = nil,
                indexStatus: IndexStatus? = nil,
                schema: IndexSchema? = nil) {
        self.indexName = indexName
        self.indexStatus = indexStatus
        self.schema = schema
    }

    enum CodingKeys: String, CodingKey {
        case indexName
        case indexStatus
        case schema
    }

    public func validate() throws {
        try indexName?.validateAsIndexName()
    }
}

public struct DescribeJobExecutionRequest: Codable, Equatable {
    public var executionNumber: ExecutionNumber?
    public var jobId: JobId
    public var thingName: ThingName

    public init(executionNumber: ExecutionNumber? = nil,
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

public struct DescribeJobExecutionResponse: Codable, Equatable {
    public var execution: JobExecution?

    public init(execution: JobExecution? = nil) {
        self.execution = execution
    }

    enum CodingKeys: String, CodingKey {
        case execution
    }

    public func validate() throws {
        try execution?.validate()
    }
}

public struct DescribeJobRequest: Codable, Equatable {
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

public struct DescribeJobResponse: Codable, Equatable {
    public var documentSource: JobDocumentSource?
    public var job: Job?

    public init(documentSource: JobDocumentSource? = nil,
                job: Job? = nil) {
        self.documentSource = documentSource
        self.job = job
    }

    enum CodingKeys: String, CodingKey {
        case documentSource
        case job
    }

    public func validate() throws {
        try documentSource?.validateAsJobDocumentSource()
        try job?.validate()
    }
}

public struct DescribeMitigationActionRequest: Codable, Equatable {
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

public struct DescribeMitigationActionResponse: Codable, Equatable {
    public var actionArn: MitigationActionArn?
    public var actionId: MitigationActionId?
    public var actionName: MitigationActionName?
    public var actionParams: MitigationActionParams?
    public var actionType: MitigationActionType?
    public var creationDate: Timestamp?
    public var lastModifiedDate: Timestamp?
    public var roleArn: RoleArn?

    public init(actionArn: MitigationActionArn? = nil,
                actionId: MitigationActionId? = nil,
                actionName: MitigationActionName? = nil,
                actionParams: MitigationActionParams? = nil,
                actionType: MitigationActionType? = nil,
                creationDate: Timestamp? = nil,
                lastModifiedDate: Timestamp? = nil,
                roleArn: RoleArn? = nil) {
        self.actionArn = actionArn
        self.actionId = actionId
        self.actionName = actionName
        self.actionParams = actionParams
        self.actionType = actionType
        self.creationDate = creationDate
        self.lastModifiedDate = lastModifiedDate
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case actionArn
        case actionId
        case actionName
        case actionParams
        case actionType
        case creationDate
        case lastModifiedDate
        case roleArn
    }

    public func validate() throws {
        try actionName?.validateAsMitigationActionName()
        try actionParams?.validate()
        try roleArn?.validateAsRoleArn()
    }
}

public struct DescribeRoleAliasRequest: Codable, Equatable {
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

public struct DescribeRoleAliasResponse: Codable, Equatable {
    public var roleAliasDescription: RoleAliasDescription?

    public init(roleAliasDescription: RoleAliasDescription? = nil) {
        self.roleAliasDescription = roleAliasDescription
    }

    enum CodingKeys: String, CodingKey {
        case roleAliasDescription
    }

    public func validate() throws {
        try roleAliasDescription?.validate()
    }
}

public struct DescribeScheduledAuditRequest: Codable, Equatable {
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

public struct DescribeScheduledAuditResponse: Codable, Equatable {
    public var dayOfMonth: DayOfMonth?
    public var dayOfWeek: DayOfWeek?
    public var frequency: AuditFrequency?
    public var scheduledAuditArn: ScheduledAuditArn?
    public var scheduledAuditName: ScheduledAuditName?
    public var targetCheckNames: TargetAuditCheckNames?

    public init(dayOfMonth: DayOfMonth? = nil,
                dayOfWeek: DayOfWeek? = nil,
                frequency: AuditFrequency? = nil,
                scheduledAuditArn: ScheduledAuditArn? = nil,
                scheduledAuditName: ScheduledAuditName? = nil,
                targetCheckNames: TargetAuditCheckNames? = nil) {
        self.dayOfMonth = dayOfMonth
        self.dayOfWeek = dayOfWeek
        self.frequency = frequency
        self.scheduledAuditArn = scheduledAuditArn
        self.scheduledAuditName = scheduledAuditName
        self.targetCheckNames = targetCheckNames
    }

    enum CodingKeys: String, CodingKey {
        case dayOfMonth
        case dayOfWeek
        case frequency
        case scheduledAuditArn
        case scheduledAuditName
        case targetCheckNames
    }

    public func validate() throws {
        try dayOfMonth?.validateAsDayOfMonth()
        try scheduledAuditName?.validateAsScheduledAuditName()
    }
}

public struct DescribeSecurityProfileRequest: Codable, Equatable {
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

public struct DescribeSecurityProfileResponse: Codable, Equatable {
    public var additionalMetricsToRetain: AdditionalMetricsToRetainList?
    public var alertTargets: AlertTargets?
    public var behaviors: Behaviors?
    public var creationDate: Timestamp?
    public var lastModifiedDate: Timestamp?
    public var securityProfileArn: SecurityProfileArn?
    public var securityProfileDescription: SecurityProfileDescription?
    public var securityProfileName: SecurityProfileName?
    public var version: Version?

    public init(additionalMetricsToRetain: AdditionalMetricsToRetainList? = nil,
                alertTargets: AlertTargets? = nil,
                behaviors: Behaviors? = nil,
                creationDate: Timestamp? = nil,
                lastModifiedDate: Timestamp? = nil,
                securityProfileArn: SecurityProfileArn? = nil,
                securityProfileDescription: SecurityProfileDescription? = nil,
                securityProfileName: SecurityProfileName? = nil,
                version: Version? = nil) {
        self.additionalMetricsToRetain = additionalMetricsToRetain
        self.alertTargets = alertTargets
        self.behaviors = behaviors
        self.creationDate = creationDate
        self.lastModifiedDate = lastModifiedDate
        self.securityProfileArn = securityProfileArn
        self.securityProfileDescription = securityProfileDescription
        self.securityProfileName = securityProfileName
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case additionalMetricsToRetain
        case alertTargets
        case behaviors
        case creationDate
        case lastModifiedDate
        case securityProfileArn
        case securityProfileDescription
        case securityProfileName
        case version
    }

    public func validate() throws {
        try behaviors?.validateAsBehaviors()
        try securityProfileDescription?.validateAsSecurityProfileDescription()
        try securityProfileName?.validateAsSecurityProfileName()
    }
}

public struct DescribeStreamRequest: Codable, Equatable {
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

public struct DescribeStreamResponse: Codable, Equatable {
    public var streamInfo: StreamInfo?

    public init(streamInfo: StreamInfo? = nil) {
        self.streamInfo = streamInfo
    }

    enum CodingKeys: String, CodingKey {
        case streamInfo
    }

    public func validate() throws {
        try streamInfo?.validate()
    }
}

public struct DescribeThingGroupRequest: Codable, Equatable {
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

public struct DescribeThingGroupResponse: Codable, Equatable {
    public var indexName: IndexName?
    public var queryString: QueryString?
    public var queryVersion: QueryVersion?
    public var status: DynamicGroupStatus?
    public var thingGroupArn: ThingGroupArn?
    public var thingGroupId: ThingGroupId?
    public var thingGroupMetadata: ThingGroupMetadata?
    public var thingGroupName: ThingGroupName?
    public var thingGroupProperties: ThingGroupProperties?
    public var version: Version?

    public init(indexName: IndexName? = nil,
                queryString: QueryString? = nil,
                queryVersion: QueryVersion? = nil,
                status: DynamicGroupStatus? = nil,
                thingGroupArn: ThingGroupArn? = nil,
                thingGroupId: ThingGroupId? = nil,
                thingGroupMetadata: ThingGroupMetadata? = nil,
                thingGroupName: ThingGroupName? = nil,
                thingGroupProperties: ThingGroupProperties? = nil,
                version: Version? = nil) {
        self.indexName = indexName
        self.queryString = queryString
        self.queryVersion = queryVersion
        self.status = status
        self.thingGroupArn = thingGroupArn
        self.thingGroupId = thingGroupId
        self.thingGroupMetadata = thingGroupMetadata
        self.thingGroupName = thingGroupName
        self.thingGroupProperties = thingGroupProperties
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case indexName
        case queryString
        case queryVersion
        case status
        case thingGroupArn
        case thingGroupId
        case thingGroupMetadata
        case thingGroupName
        case thingGroupProperties
        case version
    }

    public func validate() throws {
        try indexName?.validateAsIndexName()
        try queryString?.validateAsQueryString()
        try thingGroupId?.validateAsThingGroupId()
        try thingGroupMetadata?.validate()
        try thingGroupName?.validateAsThingGroupName()
        try thingGroupProperties?.validate()
    }
}

public struct DescribeThingRegistrationTaskRequest: Codable, Equatable {
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

public struct DescribeThingRegistrationTaskResponse: Codable, Equatable {
    public var creationDate: CreationDate?
    public var failureCount: Count?
    public var inputFileBucket: RegistryS3BucketName?
    public var inputFileKey: RegistryS3KeyName?
    public var lastModifiedDate: LastModifiedDate?
    public var message: ErrorMessage2?
    public var percentageProgress: Percentage?
    public var roleArn: RoleArn?
    public var status: Status?
    public var successCount: Count?
    public var taskId: TaskId?
    public var templateBody: TemplateBody?

    public init(creationDate: CreationDate? = nil,
                failureCount: Count? = nil,
                inputFileBucket: RegistryS3BucketName? = nil,
                inputFileKey: RegistryS3KeyName? = nil,
                lastModifiedDate: LastModifiedDate? = nil,
                message: ErrorMessage2? = nil,
                percentageProgress: Percentage? = nil,
                roleArn: RoleArn? = nil,
                status: Status? = nil,
                successCount: Count? = nil,
                taskId: TaskId? = nil,
                templateBody: TemplateBody? = nil) {
        self.creationDate = creationDate
        self.failureCount = failureCount
        self.inputFileBucket = inputFileBucket
        self.inputFileKey = inputFileKey
        self.lastModifiedDate = lastModifiedDate
        self.message = message
        self.percentageProgress = percentageProgress
        self.roleArn = roleArn
        self.status = status
        self.successCount = successCount
        self.taskId = taskId
        self.templateBody = templateBody
    }

    enum CodingKeys: String, CodingKey {
        case creationDate
        case failureCount
        case inputFileBucket
        case inputFileKey
        case lastModifiedDate
        case message
        case percentageProgress
        case roleArn
        case status
        case successCount
        case taskId
        case templateBody
    }

    public func validate() throws {
        try inputFileBucket?.validateAsRegistryS3BucketName()
        try inputFileKey?.validateAsRegistryS3KeyName()
        try message?.validateAsErrorMessage2()
        try percentageProgress?.validateAsPercentage()
        try roleArn?.validateAsRoleArn()
        try taskId?.validateAsTaskId()
    }
}

public struct DescribeThingRequest: Codable, Equatable {
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

public struct DescribeThingResponse: Codable, Equatable {
    public var attributes: Attributes?
    public var billingGroupName: BillingGroupName?
    public var defaultClientId: ClientId?
    public var thingArn: ThingArn?
    public var thingId: ThingId?
    public var thingName: ThingName?
    public var thingTypeName: ThingTypeName?
    public var version: Version?

    public init(attributes: Attributes? = nil,
                billingGroupName: BillingGroupName? = nil,
                defaultClientId: ClientId? = nil,
                thingArn: ThingArn? = nil,
                thingId: ThingId? = nil,
                thingName: ThingName? = nil,
                thingTypeName: ThingTypeName? = nil,
                version: Version? = nil) {
        self.attributes = attributes
        self.billingGroupName = billingGroupName
        self.defaultClientId = defaultClientId
        self.thingArn = thingArn
        self.thingId = thingId
        self.thingName = thingName
        self.thingTypeName = thingTypeName
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case attributes
        case billingGroupName
        case defaultClientId
        case thingArn
        case thingId
        case thingName
        case thingTypeName
        case version
    }

    public func validate() throws {
        try billingGroupName?.validateAsBillingGroupName()
        try thingName?.validateAsThingName()
        try thingTypeName?.validateAsThingTypeName()
    }
}

public struct DescribeThingTypeRequest: Codable, Equatable {
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

public struct DescribeThingTypeResponse: Codable, Equatable {
    public var thingTypeArn: ThingTypeArn?
    public var thingTypeId: ThingTypeId?
    public var thingTypeMetadata: ThingTypeMetadata?
    public var thingTypeName: ThingTypeName?
    public var thingTypeProperties: ThingTypeProperties?

    public init(thingTypeArn: ThingTypeArn? = nil,
                thingTypeId: ThingTypeId? = nil,
                thingTypeMetadata: ThingTypeMetadata? = nil,
                thingTypeName: ThingTypeName? = nil,
                thingTypeProperties: ThingTypeProperties? = nil) {
        self.thingTypeArn = thingTypeArn
        self.thingTypeId = thingTypeId
        self.thingTypeMetadata = thingTypeMetadata
        self.thingTypeName = thingTypeName
        self.thingTypeProperties = thingTypeProperties
    }

    enum CodingKeys: String, CodingKey {
        case thingTypeArn
        case thingTypeId
        case thingTypeMetadata
        case thingTypeName
        case thingTypeProperties
    }

    public func validate() throws {
        try thingTypeMetadata?.validate()
        try thingTypeName?.validateAsThingTypeName()
        try thingTypeProperties?.validate()
    }
}

public struct Destination: Codable, Equatable {
    public var s3Destination: S3Destination?

    public init(s3Destination: S3Destination? = nil) {
        self.s3Destination = s3Destination
    }

    enum CodingKeys: String, CodingKey {
        case s3Destination
    }

    public func validate() throws {
        try s3Destination?.validate()
    }
}

public struct DetachPolicyRequest: Codable, Equatable {
    public var policyName: PolicyName
    public var target: PolicyTarget

    public init(policyName: PolicyName,
                target: PolicyTarget) {
        self.policyName = policyName
        self.target = target
    }

    enum CodingKeys: String, CodingKey {
        case policyName
        case target
    }

    public func validate() throws {
        try policyName.validateAsPolicyName()
    }
}

public struct DetachPrincipalPolicyRequest: Codable, Equatable {
    public var policyName: PolicyName
    public var principal: Principal

    public init(policyName: PolicyName,
                principal: Principal) {
        self.policyName = policyName
        self.principal = principal
    }

    enum CodingKeys: String, CodingKey {
        case policyName
        case principal = "x-amzn-iot-principal"
    }

    public func validate() throws {
        try policyName.validateAsPolicyName()
    }
}

public struct DetachSecurityProfileRequest: Codable, Equatable {
    public var securityProfileName: SecurityProfileName
    public var securityProfileTargetArn: SecurityProfileTargetArn

    public init(securityProfileName: SecurityProfileName,
                securityProfileTargetArn: SecurityProfileTargetArn) {
        self.securityProfileName = securityProfileName
        self.securityProfileTargetArn = securityProfileTargetArn
    }

    enum CodingKeys: String, CodingKey {
        case securityProfileName
        case securityProfileTargetArn
    }

    public func validate() throws {
        try securityProfileName.validateAsSecurityProfileName()
    }
}

public struct DetachSecurityProfileResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DetachThingPrincipalRequest: Codable, Equatable {
    public var principal: Principal
    public var thingName: ThingName

    public init(principal: Principal,
                thingName: ThingName) {
        self.principal = principal
        self.thingName = thingName
    }

    enum CodingKeys: String, CodingKey {
        case principal = "x-amzn-principal"
        case thingName
    }

    public func validate() throws {
        try thingName.validateAsThingName()
    }
}

public struct DetachThingPrincipalResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DisableTopicRuleRequest: Codable, Equatable {
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

public struct DynamoDBAction: Codable, Equatable {
    public var hashKeyField: HashKeyField
    public var hashKeyType: DynamoKeyType?
    public var hashKeyValue: HashKeyValue
    public var operation: DynamoOperation?
    public var payloadField: PayloadField?
    public var rangeKeyField: RangeKeyField?
    public var rangeKeyType: DynamoKeyType?
    public var rangeKeyValue: RangeKeyValue?
    public var roleArn: AwsArn
    public var tableName: TableName

    public init(hashKeyField: HashKeyField,
                hashKeyType: DynamoKeyType? = nil,
                hashKeyValue: HashKeyValue,
                operation: DynamoOperation? = nil,
                payloadField: PayloadField? = nil,
                rangeKeyField: RangeKeyField? = nil,
                rangeKeyType: DynamoKeyType? = nil,
                rangeKeyValue: RangeKeyValue? = nil,
                roleArn: AwsArn,
                tableName: TableName) {
        self.hashKeyField = hashKeyField
        self.hashKeyType = hashKeyType
        self.hashKeyValue = hashKeyValue
        self.operation = operation
        self.payloadField = payloadField
        self.rangeKeyField = rangeKeyField
        self.rangeKeyType = rangeKeyType
        self.rangeKeyValue = rangeKeyValue
        self.roleArn = roleArn
        self.tableName = tableName
    }

    enum CodingKeys: String, CodingKey {
        case hashKeyField
        case hashKeyType
        case hashKeyValue
        case operation
        case payloadField
        case rangeKeyField
        case rangeKeyType
        case rangeKeyValue
        case roleArn
        case tableName
    }

    public func validate() throws {
    }
}

public struct DynamoDBv2Action: Codable, Equatable {
    public var putItem: PutItemInput
    public var roleArn: AwsArn

    public init(putItem: PutItemInput,
                roleArn: AwsArn) {
        self.putItem = putItem
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case putItem
        case roleArn
    }

    public func validate() throws {
        try putItem.validate()
    }
}

public struct EffectivePolicy: Codable, Equatable {
    public var policyArn: PolicyArn?
    public var policyDocument: PolicyDocument?
    public var policyName: PolicyName?

    public init(policyArn: PolicyArn? = nil,
                policyDocument: PolicyDocument? = nil,
                policyName: PolicyName? = nil) {
        self.policyArn = policyArn
        self.policyDocument = policyDocument
        self.policyName = policyName
    }

    enum CodingKeys: String, CodingKey {
        case policyArn
        case policyDocument
        case policyName
    }

    public func validate() throws {
        try policyName?.validateAsPolicyName()
    }
}

public struct ElasticsearchAction: Codable, Equatable {
    public var endpoint: ElasticsearchEndpoint
    public var id: ElasticsearchId
    public var index: ElasticsearchIndex
    public var roleArn: AwsArn
    public var type: ElasticsearchType

    public init(endpoint: ElasticsearchEndpoint,
                id: ElasticsearchId,
                index: ElasticsearchIndex,
                roleArn: AwsArn,
                type: ElasticsearchType) {
        self.endpoint = endpoint
        self.id = id
        self.index = index
        self.roleArn = roleArn
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case endpoint
        case id
        case index
        case roleArn
        case type
    }

    public func validate() throws {
        try endpoint.validateAsElasticsearchEndpoint()
    }
}

public struct EnableIoTLoggingParams: Codable, Equatable {
    public var logLevel: LogLevel
    public var roleArnForLogging: RoleArn

    public init(logLevel: LogLevel,
                roleArnForLogging: RoleArn) {
        self.logLevel = logLevel
        self.roleArnForLogging = roleArnForLogging
    }

    enum CodingKeys: String, CodingKey {
        case logLevel
        case roleArnForLogging
    }

    public func validate() throws {
        try roleArnForLogging.validateAsRoleArn()
    }
}

public struct EnableTopicRuleRequest: Codable, Equatable {
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

public struct ErrorInfo: Codable, Equatable {
    public var code: Code?
    public var message: OTAUpdateErrorMessage?

    public init(code: Code? = nil,
                message: OTAUpdateErrorMessage? = nil) {
        self.code = code
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case code
        case message
    }

    public func validate() throws {
    }
}

public struct ExplicitDeny: Codable, Equatable {
    public var policies: Policies?

    public init(policies: Policies? = nil) {
        self.policies = policies
    }

    enum CodingKeys: String, CodingKey {
        case policies
    }

    public func validate() throws {
    }
}

public struct ExponentialRolloutRate: Codable, Equatable {
    public var baseRatePerMinute: RolloutRatePerMinute
    public var incrementFactor: IncrementFactor
    public var rateIncreaseCriteria: RateIncreaseCriteria

    public init(baseRatePerMinute: RolloutRatePerMinute,
                incrementFactor: IncrementFactor,
                rateIncreaseCriteria: RateIncreaseCriteria) {
        self.baseRatePerMinute = baseRatePerMinute
        self.incrementFactor = incrementFactor
        self.rateIncreaseCriteria = rateIncreaseCriteria
    }

    enum CodingKeys: String, CodingKey {
        case baseRatePerMinute
        case incrementFactor
        case rateIncreaseCriteria
    }

    public func validate() throws {
        try baseRatePerMinute.validateAsRolloutRatePerMinute()
        try incrementFactor.validateAsIncrementFactor()
        try rateIncreaseCriteria.validate()
    }
}

public struct FileLocation: Codable, Equatable {
    public var s3Location: S3Location?
    public var stream: Stream?

    public init(s3Location: S3Location? = nil,
                stream: Stream? = nil) {
        self.s3Location = s3Location
        self.stream = stream
    }

    enum CodingKeys: String, CodingKey {
        case s3Location
        case stream
    }

    public func validate() throws {
        try s3Location?.validate()
        try stream?.validate()
    }
}

public struct FirehoseAction: Codable, Equatable {
    public var deliveryStreamName: DeliveryStreamName
    public var roleArn: AwsArn
    public var separator: FirehoseSeparator?

    public init(deliveryStreamName: DeliveryStreamName,
                roleArn: AwsArn,
                separator: FirehoseSeparator? = nil) {
        self.deliveryStreamName = deliveryStreamName
        self.roleArn = roleArn
        self.separator = separator
    }

    enum CodingKeys: String, CodingKey {
        case deliveryStreamName
        case roleArn
        case separator
    }

    public func validate() throws {
        try separator?.validateAsFirehoseSeparator()
    }
}

public struct GetEffectivePoliciesRequest: Codable, Equatable {
    public var cognitoIdentityPoolId: CognitoIdentityPoolId?
    public var principal: Principal?
    public var thingName: ThingName?

    public init(cognitoIdentityPoolId: CognitoIdentityPoolId? = nil,
                principal: Principal? = nil,
                thingName: ThingName? = nil) {
        self.cognitoIdentityPoolId = cognitoIdentityPoolId
        self.principal = principal
        self.thingName = thingName
    }

    enum CodingKeys: String, CodingKey {
        case cognitoIdentityPoolId
        case principal
        case thingName
    }

    public func validate() throws {
        try thingName?.validateAsThingName()
    }
}

public struct GetEffectivePoliciesResponse: Codable, Equatable {
    public var effectivePolicies: EffectivePolicies?

    public init(effectivePolicies: EffectivePolicies? = nil) {
        self.effectivePolicies = effectivePolicies
    }

    enum CodingKeys: String, CodingKey {
        case effectivePolicies
    }

    public func validate() throws {
    }
}

public struct GetIndexingConfigurationRequest: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct GetIndexingConfigurationResponse: Codable, Equatable {
    public var thingGroupIndexingConfiguration: ThingGroupIndexingConfiguration?
    public var thingIndexingConfiguration: ThingIndexingConfiguration?

    public init(thingGroupIndexingConfiguration: ThingGroupIndexingConfiguration? = nil,
                thingIndexingConfiguration: ThingIndexingConfiguration? = nil) {
        self.thingGroupIndexingConfiguration = thingGroupIndexingConfiguration
        self.thingIndexingConfiguration = thingIndexingConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case thingGroupIndexingConfiguration
        case thingIndexingConfiguration
    }

    public func validate() throws {
        try thingGroupIndexingConfiguration?.validate()
        try thingIndexingConfiguration?.validate()
    }
}

public struct GetJobDocumentRequest: Codable, Equatable {
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

public struct GetJobDocumentResponse: Codable, Equatable {
    public var document: JobDocument?

    public init(document: JobDocument? = nil) {
        self.document = document
    }

    enum CodingKeys: String, CodingKey {
        case document
    }

    public func validate() throws {
        try document?.validateAsJobDocument()
    }
}

public struct GetLoggingOptionsRequest: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct GetLoggingOptionsResponse: Codable, Equatable {
    public var logLevel: LogLevel?
    public var roleArn: AwsArn?

    public init(logLevel: LogLevel? = nil,
                roleArn: AwsArn? = nil) {
        self.logLevel = logLevel
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case logLevel
        case roleArn
    }

    public func validate() throws {
    }
}

public struct GetOTAUpdateRequest: Codable, Equatable {
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

public struct GetOTAUpdateResponse: Codable, Equatable {
    public var otaUpdateInfo: OTAUpdateInfo?

    public init(otaUpdateInfo: OTAUpdateInfo? = nil) {
        self.otaUpdateInfo = otaUpdateInfo
    }

    enum CodingKeys: String, CodingKey {
        case otaUpdateInfo
    }

    public func validate() throws {
        try otaUpdateInfo?.validate()
    }
}

public struct GetPolicyRequest: Codable, Equatable {
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

public struct GetPolicyResponse: Codable, Equatable {
    public var creationDate: DateType?
    public var defaultVersionId: PolicyVersionId?
    public var generationId: GenerationId?
    public var lastModifiedDate: DateType?
    public var policyArn: PolicyArn?
    public var policyDocument: PolicyDocument?
    public var policyName: PolicyName?

    public init(creationDate: DateType? = nil,
                defaultVersionId: PolicyVersionId? = nil,
                generationId: GenerationId? = nil,
                lastModifiedDate: DateType? = nil,
                policyArn: PolicyArn? = nil,
                policyDocument: PolicyDocument? = nil,
                policyName: PolicyName? = nil) {
        self.creationDate = creationDate
        self.defaultVersionId = defaultVersionId
        self.generationId = generationId
        self.lastModifiedDate = lastModifiedDate
        self.policyArn = policyArn
        self.policyDocument = policyDocument
        self.policyName = policyName
    }

    enum CodingKeys: String, CodingKey {
        case creationDate
        case defaultVersionId
        case generationId
        case lastModifiedDate
        case policyArn
        case policyDocument
        case policyName
    }

    public func validate() throws {
        try defaultVersionId?.validateAsPolicyVersionId()
        try policyName?.validateAsPolicyName()
    }
}

public struct GetPolicyVersionRequest: Codable, Equatable {
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

public struct GetPolicyVersionResponse: Codable, Equatable {
    public var creationDate: DateType?
    public var generationId: GenerationId?
    public var isDefaultVersion: IsDefaultVersion?
    public var lastModifiedDate: DateType?
    public var policyArn: PolicyArn?
    public var policyDocument: PolicyDocument?
    public var policyName: PolicyName?
    public var policyVersionId: PolicyVersionId?

    public init(creationDate: DateType? = nil,
                generationId: GenerationId? = nil,
                isDefaultVersion: IsDefaultVersion? = nil,
                lastModifiedDate: DateType? = nil,
                policyArn: PolicyArn? = nil,
                policyDocument: PolicyDocument? = nil,
                policyName: PolicyName? = nil,
                policyVersionId: PolicyVersionId? = nil) {
        self.creationDate = creationDate
        self.generationId = generationId
        self.isDefaultVersion = isDefaultVersion
        self.lastModifiedDate = lastModifiedDate
        self.policyArn = policyArn
        self.policyDocument = policyDocument
        self.policyName = policyName
        self.policyVersionId = policyVersionId
    }

    enum CodingKeys: String, CodingKey {
        case creationDate
        case generationId
        case isDefaultVersion
        case lastModifiedDate
        case policyArn
        case policyDocument
        case policyName
        case policyVersionId
    }

    public func validate() throws {
        try policyName?.validateAsPolicyName()
        try policyVersionId?.validateAsPolicyVersionId()
    }
}

public struct GetRegistrationCodeRequest: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct GetRegistrationCodeResponse: Codable, Equatable {
    public var registrationCode: RegistrationCode?

    public init(registrationCode: RegistrationCode? = nil) {
        self.registrationCode = registrationCode
    }

    enum CodingKeys: String, CodingKey {
        case registrationCode
    }

    public func validate() throws {
        try registrationCode?.validateAsRegistrationCode()
    }
}

public struct GetStatisticsRequest: Codable, Equatable {
    public var aggregationField: AggregationField?
    public var indexName: IndexName?
    public var queryString: QueryString
    public var queryVersion: QueryVersion?

    public init(aggregationField: AggregationField? = nil,
                indexName: IndexName? = nil,
                queryString: QueryString,
                queryVersion: QueryVersion? = nil) {
        self.aggregationField = aggregationField
        self.indexName = indexName
        self.queryString = queryString
        self.queryVersion = queryVersion
    }

    enum CodingKeys: String, CodingKey {
        case aggregationField
        case indexName
        case queryString
        case queryVersion
    }

    public func validate() throws {
        try aggregationField?.validateAsAggregationField()
        try indexName?.validateAsIndexName()
        try queryString.validateAsQueryString()
    }
}

public struct GetStatisticsResponse: Codable, Equatable {
    public var statistics: Statistics?

    public init(statistics: Statistics? = nil) {
        self.statistics = statistics
    }

    enum CodingKeys: String, CodingKey {
        case statistics
    }

    public func validate() throws {
        try statistics?.validate()
    }
}

public struct GetTopicRuleRequest: Codable, Equatable {
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

public struct GetTopicRuleResponse: Codable, Equatable {
    public var rule: TopicRule?
    public var ruleArn: RuleArn?

    public init(rule: TopicRule? = nil,
                ruleArn: RuleArn? = nil) {
        self.rule = rule
        self.ruleArn = ruleArn
    }

    enum CodingKeys: String, CodingKey {
        case rule
        case ruleArn
    }

    public func validate() throws {
        try rule?.validate()
    }
}

public struct GetV2LoggingOptionsRequest: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct GetV2LoggingOptionsResponse: Codable, Equatable {
    public var defaultLogLevel: LogLevel?
    public var disableAllLogs: DisableAllLogs?
    public var roleArn: AwsArn?

    public init(defaultLogLevel: LogLevel? = nil,
                disableAllLogs: DisableAllLogs? = nil,
                roleArn: AwsArn? = nil) {
        self.defaultLogLevel = defaultLogLevel
        self.disableAllLogs = disableAllLogs
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case defaultLogLevel
        case disableAllLogs
        case roleArn
    }

    public func validate() throws {
    }
}

public struct GroupNameAndArn: Codable, Equatable {
    public var groupArn: ThingGroupArn?
    public var groupName: ThingGroupName?

    public init(groupArn: ThingGroupArn? = nil,
                groupName: ThingGroupName? = nil) {
        self.groupArn = groupArn
        self.groupName = groupName
    }

    enum CodingKeys: String, CodingKey {
        case groupArn
        case groupName
    }

    public func validate() throws {
        try groupName?.validateAsThingGroupName()
    }
}

public struct ImplicitDeny: Codable, Equatable {
    public var policies: Policies?

    public init(policies: Policies? = nil) {
        self.policies = policies
    }

    enum CodingKeys: String, CodingKey {
        case policies
    }

    public func validate() throws {
    }
}

public struct IndexNotReadyException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct InternalException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct InternalFailureException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct InvalidAggregationException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct InvalidQueryException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct InvalidRequestException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct InvalidResponseException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct InvalidStateTransitionException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct IotAnalyticsAction: Codable, Equatable {
    public var channelArn: AwsArn?
    public var channelName: ChannelName?
    public var roleArn: AwsArn?

    public init(channelArn: AwsArn? = nil,
                channelName: ChannelName? = nil,
                roleArn: AwsArn? = nil) {
        self.channelArn = channelArn
        self.channelName = channelName
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case channelArn
        case channelName
        case roleArn
    }

    public func validate() throws {
    }
}

public struct IotEventsAction: Codable, Equatable {
    public var inputName: InputName
    public var messageId: MessageId?
    public var roleArn: AwsArn

    public init(inputName: InputName,
                messageId: MessageId? = nil,
                roleArn: AwsArn) {
        self.inputName = inputName
        self.messageId = messageId
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case inputName
        case messageId
        case roleArn
    }

    public func validate() throws {
        try inputName.validateAsInputName()
        try messageId?.validateAsMessageId()
    }
}

public struct Job: Codable, Equatable {
    public var abortConfig: AbortConfig?
    public var comment: Comment?
    public var completedAt: DateType?
    public var createdAt: DateType?
    public var description: JobDescription?
    public var forceCanceled: Forced?
    public var jobArn: JobArn?
    public var jobExecutionsRolloutConfig: JobExecutionsRolloutConfig?
    public var jobId: JobId?
    public var jobProcessDetails: JobProcessDetails?
    public var lastUpdatedAt: DateType?
    public var presignedUrlConfig: PresignedUrlConfig?
    public var reasonCode: ReasonCode?
    public var status: JobStatus?
    public var targetSelection: TargetSelection?
    public var targets: JobTargets?
    public var timeoutConfig: TimeoutConfig?

    public init(abortConfig: AbortConfig? = nil,
                comment: Comment? = nil,
                completedAt: DateType? = nil,
                createdAt: DateType? = nil,
                description: JobDescription? = nil,
                forceCanceled: Forced? = nil,
                jobArn: JobArn? = nil,
                jobExecutionsRolloutConfig: JobExecutionsRolloutConfig? = nil,
                jobId: JobId? = nil,
                jobProcessDetails: JobProcessDetails? = nil,
                lastUpdatedAt: DateType? = nil,
                presignedUrlConfig: PresignedUrlConfig? = nil,
                reasonCode: ReasonCode? = nil,
                status: JobStatus? = nil,
                targetSelection: TargetSelection? = nil,
                targets: JobTargets? = nil,
                timeoutConfig: TimeoutConfig? = nil) {
        self.abortConfig = abortConfig
        self.comment = comment
        self.completedAt = completedAt
        self.createdAt = createdAt
        self.description = description
        self.forceCanceled = forceCanceled
        self.jobArn = jobArn
        self.jobExecutionsRolloutConfig = jobExecutionsRolloutConfig
        self.jobId = jobId
        self.jobProcessDetails = jobProcessDetails
        self.lastUpdatedAt = lastUpdatedAt
        self.presignedUrlConfig = presignedUrlConfig
        self.reasonCode = reasonCode
        self.status = status
        self.targetSelection = targetSelection
        self.targets = targets
        self.timeoutConfig = timeoutConfig
    }

    enum CodingKeys: String, CodingKey {
        case abortConfig
        case comment
        case completedAt
        case createdAt
        case description
        case forceCanceled
        case jobArn
        case jobExecutionsRolloutConfig
        case jobId
        case jobProcessDetails
        case lastUpdatedAt
        case presignedUrlConfig
        case reasonCode
        case status
        case targetSelection
        case targets
        case timeoutConfig
    }

    public func validate() throws {
        try abortConfig?.validate()
        try comment?.validateAsComment()
        try description?.validateAsJobDescription()
        try jobExecutionsRolloutConfig?.validate()
        try jobId?.validateAsJobId()
        try jobProcessDetails?.validate()
        try presignedUrlConfig?.validate()
        try reasonCode?.validateAsReasonCode()
        try targets?.validateAsJobTargets()
        try timeoutConfig?.validate()
    }
}

public struct JobExecution: Codable, Equatable {
    public var approximateSecondsBeforeTimedOut: ApproximateSecondsBeforeTimedOut?
    public var executionNumber: ExecutionNumber?
    public var forceCanceled: Forced?
    public var jobId: JobId?
    public var lastUpdatedAt: DateType?
    public var queuedAt: DateType?
    public var startedAt: DateType?
    public var status: JobExecutionStatus?
    public var statusDetails: JobExecutionStatusDetails?
    public var thingArn: ThingArn?
    public var versionNumber: VersionNumber?

    public init(approximateSecondsBeforeTimedOut: ApproximateSecondsBeforeTimedOut? = nil,
                executionNumber: ExecutionNumber? = nil,
                forceCanceled: Forced? = nil,
                jobId: JobId? = nil,
                lastUpdatedAt: DateType? = nil,
                queuedAt: DateType? = nil,
                startedAt: DateType? = nil,
                status: JobExecutionStatus? = nil,
                statusDetails: JobExecutionStatusDetails? = nil,
                thingArn: ThingArn? = nil,
                versionNumber: VersionNumber? = nil) {
        self.approximateSecondsBeforeTimedOut = approximateSecondsBeforeTimedOut
        self.executionNumber = executionNumber
        self.forceCanceled = forceCanceled
        self.jobId = jobId
        self.lastUpdatedAt = lastUpdatedAt
        self.queuedAt = queuedAt
        self.startedAt = startedAt
        self.status = status
        self.statusDetails = statusDetails
        self.thingArn = thingArn
        self.versionNumber = versionNumber
    }

    enum CodingKeys: String, CodingKey {
        case approximateSecondsBeforeTimedOut
        case executionNumber
        case forceCanceled
        case jobId
        case lastUpdatedAt
        case queuedAt
        case startedAt
        case status
        case statusDetails
        case thingArn
        case versionNumber
    }

    public func validate() throws {
        try jobId?.validateAsJobId()
        try statusDetails?.validate()
    }
}

public struct JobExecutionStatusDetails: Codable, Equatable {
    public var detailsMap: DetailsMap?

    public init(detailsMap: DetailsMap? = nil) {
        self.detailsMap = detailsMap
    }

    enum CodingKeys: String, CodingKey {
        case detailsMap
    }

    public func validate() throws {
    }
}

public struct JobExecutionSummary: Codable, Equatable {
    public var executionNumber: ExecutionNumber?
    public var lastUpdatedAt: DateType?
    public var queuedAt: DateType?
    public var startedAt: DateType?
    public var status: JobExecutionStatus?

    public init(executionNumber: ExecutionNumber? = nil,
                lastUpdatedAt: DateType? = nil,
                queuedAt: DateType? = nil,
                startedAt: DateType? = nil,
                status: JobExecutionStatus? = nil) {
        self.executionNumber = executionNumber
        self.lastUpdatedAt = lastUpdatedAt
        self.queuedAt = queuedAt
        self.startedAt = startedAt
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case executionNumber
        case lastUpdatedAt
        case queuedAt
        case startedAt
        case status
    }

    public func validate() throws {
    }
}

public struct JobExecutionSummaryForJob: Codable, Equatable {
    public var jobExecutionSummary: JobExecutionSummary?
    public var thingArn: ThingArn?

    public init(jobExecutionSummary: JobExecutionSummary? = nil,
                thingArn: ThingArn? = nil) {
        self.jobExecutionSummary = jobExecutionSummary
        self.thingArn = thingArn
    }

    enum CodingKeys: String, CodingKey {
        case jobExecutionSummary
        case thingArn
    }

    public func validate() throws {
        try jobExecutionSummary?.validate()
    }
}

public struct JobExecutionSummaryForThing: Codable, Equatable {
    public var jobExecutionSummary: JobExecutionSummary?
    public var jobId: JobId?

    public init(jobExecutionSummary: JobExecutionSummary? = nil,
                jobId: JobId? = nil) {
        self.jobExecutionSummary = jobExecutionSummary
        self.jobId = jobId
    }

    enum CodingKeys: String, CodingKey {
        case jobExecutionSummary
        case jobId
    }

    public func validate() throws {
        try jobExecutionSummary?.validate()
        try jobId?.validateAsJobId()
    }
}

public struct JobExecutionsRolloutConfig: Codable, Equatable {
    public var exponentialRate: ExponentialRolloutRate?
    public var maximumPerMinute: MaxJobExecutionsPerMin?

    public init(exponentialRate: ExponentialRolloutRate? = nil,
                maximumPerMinute: MaxJobExecutionsPerMin? = nil) {
        self.exponentialRate = exponentialRate
        self.maximumPerMinute = maximumPerMinute
    }

    enum CodingKeys: String, CodingKey {
        case exponentialRate
        case maximumPerMinute
    }

    public func validate() throws {
        try exponentialRate?.validate()
        try maximumPerMinute?.validateAsMaxJobExecutionsPerMin()
    }
}

public struct JobProcessDetails: Codable, Equatable {
    public var numberOfCanceledThings: CanceledThings?
    public var numberOfFailedThings: FailedThings?
    public var numberOfInProgressThings: InProgressThings?
    public var numberOfQueuedThings: QueuedThings?
    public var numberOfRejectedThings: RejectedThings?
    public var numberOfRemovedThings: RemovedThings?
    public var numberOfSucceededThings: SucceededThings?
    public var numberOfTimedOutThings: TimedOutThings?
    public var processingTargets: ProcessingTargetNameList?

    public init(numberOfCanceledThings: CanceledThings? = nil,
                numberOfFailedThings: FailedThings? = nil,
                numberOfInProgressThings: InProgressThings? = nil,
                numberOfQueuedThings: QueuedThings? = nil,
                numberOfRejectedThings: RejectedThings? = nil,
                numberOfRemovedThings: RemovedThings? = nil,
                numberOfSucceededThings: SucceededThings? = nil,
                numberOfTimedOutThings: TimedOutThings? = nil,
                processingTargets: ProcessingTargetNameList? = nil) {
        self.numberOfCanceledThings = numberOfCanceledThings
        self.numberOfFailedThings = numberOfFailedThings
        self.numberOfInProgressThings = numberOfInProgressThings
        self.numberOfQueuedThings = numberOfQueuedThings
        self.numberOfRejectedThings = numberOfRejectedThings
        self.numberOfRemovedThings = numberOfRemovedThings
        self.numberOfSucceededThings = numberOfSucceededThings
        self.numberOfTimedOutThings = numberOfTimedOutThings
        self.processingTargets = processingTargets
    }

    enum CodingKeys: String, CodingKey {
        case numberOfCanceledThings
        case numberOfFailedThings
        case numberOfInProgressThings
        case numberOfQueuedThings
        case numberOfRejectedThings
        case numberOfRemovedThings
        case numberOfSucceededThings
        case numberOfTimedOutThings
        case processingTargets
    }

    public func validate() throws {
    }
}

public struct JobSummary: Codable, Equatable {
    public var completedAt: DateType?
    public var createdAt: DateType?
    public var jobArn: JobArn?
    public var jobId: JobId?
    public var lastUpdatedAt: DateType?
    public var status: JobStatus?
    public var targetSelection: TargetSelection?
    public var thingGroupId: ThingGroupId?

    public init(completedAt: DateType? = nil,
                createdAt: DateType? = nil,
                jobArn: JobArn? = nil,
                jobId: JobId? = nil,
                lastUpdatedAt: DateType? = nil,
                status: JobStatus? = nil,
                targetSelection: TargetSelection? = nil,
                thingGroupId: ThingGroupId? = nil) {
        self.completedAt = completedAt
        self.createdAt = createdAt
        self.jobArn = jobArn
        self.jobId = jobId
        self.lastUpdatedAt = lastUpdatedAt
        self.status = status
        self.targetSelection = targetSelection
        self.thingGroupId = thingGroupId
    }

    enum CodingKeys: String, CodingKey {
        case completedAt
        case createdAt
        case jobArn
        case jobId
        case lastUpdatedAt
        case status
        case targetSelection
        case thingGroupId
    }

    public func validate() throws {
        try jobId?.validateAsJobId()
        try thingGroupId?.validateAsThingGroupId()
    }
}

public struct KeyPair: Codable, Equatable {
    public var privateKey: PrivateKey?
    public var publicKey: PublicKey?

    public init(privateKey: PrivateKey? = nil,
                publicKey: PublicKey? = nil) {
        self.privateKey = privateKey
        self.publicKey = publicKey
    }

    enum CodingKeys: String, CodingKey {
        case privateKey = "PrivateKey"
        case publicKey = "PublicKey"
    }

    public func validate() throws {
        try privateKey?.validateAsPrivateKey()
        try publicKey?.validateAsPublicKey()
    }
}

public struct KinesisAction: Codable, Equatable {
    public var partitionKey: PartitionKey?
    public var roleArn: AwsArn
    public var streamName: StreamName

    public init(partitionKey: PartitionKey? = nil,
                roleArn: AwsArn,
                streamName: StreamName) {
        self.partitionKey = partitionKey
        self.roleArn = roleArn
        self.streamName = streamName
    }

    enum CodingKeys: String, CodingKey {
        case partitionKey
        case roleArn
        case streamName
    }

    public func validate() throws {
    }
}

public struct LambdaAction: Codable, Equatable {
    public var functionArn: FunctionArn

    public init(functionArn: FunctionArn) {
        self.functionArn = functionArn
    }

    enum CodingKeys: String, CodingKey {
        case functionArn
    }

    public func validate() throws {
    }
}

public struct LimitExceededException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct ListActiveViolationsRequest: Codable, Equatable {
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

public struct ListActiveViolationsResponse: Codable, Equatable {
    public var activeViolations: ActiveViolations?
    public var nextToken: NextToken?

    public init(activeViolations: ActiveViolations? = nil,
                nextToken: NextToken? = nil) {
        self.activeViolations = activeViolations
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case activeViolations
        case nextToken
    }

    public func validate() throws {
    }
}

public struct ListAttachedPoliciesRequest: Codable, Equatable {
    public var marker: Marker?
    public var pageSize: PageSize?
    public var recursive: Recursive?
    public var target: PolicyTarget

    public init(marker: Marker? = nil,
                pageSize: PageSize? = nil,
                recursive: Recursive? = nil,
                target: PolicyTarget) {
        self.marker = marker
        self.pageSize = pageSize
        self.recursive = recursive
        self.target = target
    }

    enum CodingKeys: String, CodingKey {
        case marker
        case pageSize
        case recursive
        case target
    }

    public func validate() throws {
        try marker?.validateAsMarker()
        try pageSize?.validateAsPageSize()
    }
}

public struct ListAttachedPoliciesResponse: Codable, Equatable {
    public var nextMarker: Marker?
    public var policies: Policies?

    public init(nextMarker: Marker? = nil,
                policies: Policies? = nil) {
        self.nextMarker = nextMarker
        self.policies = policies
    }

    enum CodingKeys: String, CodingKey {
        case nextMarker
        case policies
    }

    public func validate() throws {
        try nextMarker?.validateAsMarker()
    }
}

public struct ListAuditFindingsRequest: Codable, Equatable {
    public var checkName: AuditCheckName?
    public var endTime: Timestamp?
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var resourceIdentifier: ResourceIdentifier?
    public var startTime: Timestamp?
    public var taskId: AuditTaskId?

    public init(checkName: AuditCheckName? = nil,
                endTime: Timestamp? = nil,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                resourceIdentifier: ResourceIdentifier? = nil,
                startTime: Timestamp? = nil,
                taskId: AuditTaskId? = nil) {
        self.checkName = checkName
        self.endTime = endTime
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.resourceIdentifier = resourceIdentifier
        self.startTime = startTime
        self.taskId = taskId
    }

    enum CodingKeys: String, CodingKey {
        case checkName
        case endTime
        case maxResults
        case nextToken
        case resourceIdentifier
        case startTime
        case taskId
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try resourceIdentifier?.validate()
        try taskId?.validateAsAuditTaskId()
    }
}

public struct ListAuditFindingsResponse: Codable, Equatable {
    public var findings: AuditFindings?
    public var nextToken: NextToken?

    public init(findings: AuditFindings? = nil,
                nextToken: NextToken? = nil) {
        self.findings = findings
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case findings
        case nextToken
    }

    public func validate() throws {
    }
}

public struct ListAuditMitigationActionsExecutionsRequest: Codable, Equatable {
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

public struct ListAuditMitigationActionsExecutionsResponse: Codable, Equatable {
    public var actionsExecutions: AuditMitigationActionExecutionMetadataList?
    public var nextToken: NextToken?

    public init(actionsExecutions: AuditMitigationActionExecutionMetadataList? = nil,
                nextToken: NextToken? = nil) {
        self.actionsExecutions = actionsExecutions
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case actionsExecutions
        case nextToken
    }

    public func validate() throws {
    }
}

public struct ListAuditMitigationActionsTasksRequest: Codable, Equatable {
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

public struct ListAuditMitigationActionsTasksResponse: Codable, Equatable {
    public var nextToken: NextToken?
    public var tasks: AuditMitigationActionsTaskMetadataList?

    public init(nextToken: NextToken? = nil,
                tasks: AuditMitigationActionsTaskMetadataList? = nil) {
        self.nextToken = nextToken
        self.tasks = tasks
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case tasks
    }

    public func validate() throws {
    }
}

public struct ListAuditTasksRequest: Codable, Equatable {
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

public struct ListAuditTasksResponse: Codable, Equatable {
    public var nextToken: NextToken?
    public var tasks: AuditTaskMetadataList?

    public init(nextToken: NextToken? = nil,
                tasks: AuditTaskMetadataList? = nil) {
        self.nextToken = nextToken
        self.tasks = tasks
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case tasks
    }

    public func validate() throws {
    }
}

public struct ListAuthorizersRequest: Codable, Equatable {
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

public struct ListAuthorizersResponse: Codable, Equatable {
    public var authorizers: Authorizers?
    public var nextMarker: Marker?

    public init(authorizers: Authorizers? = nil,
                nextMarker: Marker? = nil) {
        self.authorizers = authorizers
        self.nextMarker = nextMarker
    }

    enum CodingKeys: String, CodingKey {
        case authorizers
        case nextMarker
    }

    public func validate() throws {
        try nextMarker?.validateAsMarker()
    }
}

public struct ListBillingGroupsRequest: Codable, Equatable {
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

public struct ListBillingGroupsResponse: Codable, Equatable {
    public var billingGroups: BillingGroupNameAndArnList?
    public var nextToken: NextToken?

    public init(billingGroups: BillingGroupNameAndArnList? = nil,
                nextToken: NextToken? = nil) {
        self.billingGroups = billingGroups
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case billingGroups
        case nextToken
    }

    public func validate() throws {
    }
}

public struct ListCACertificatesRequest: Codable, Equatable {
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

public struct ListCACertificatesResponse: Codable, Equatable {
    public var certificates: CACertificates?
    public var nextMarker: Marker?

    public init(certificates: CACertificates? = nil,
                nextMarker: Marker? = nil) {
        self.certificates = certificates
        self.nextMarker = nextMarker
    }

    enum CodingKeys: String, CodingKey {
        case certificates
        case nextMarker
    }

    public func validate() throws {
        try nextMarker?.validateAsMarker()
    }
}

public struct ListCertificatesByCARequest: Codable, Equatable {
    public var ascendingOrder: AscendingOrder?
    public var caCertificateId: CertificateId
    public var marker: Marker?
    public var pageSize: PageSize?

    public init(ascendingOrder: AscendingOrder? = nil,
                caCertificateId: CertificateId,
                marker: Marker? = nil,
                pageSize: PageSize? = nil) {
        self.ascendingOrder = ascendingOrder
        self.caCertificateId = caCertificateId
        self.marker = marker
        self.pageSize = pageSize
    }

    enum CodingKeys: String, CodingKey {
        case ascendingOrder = "isAscendingOrder"
        case caCertificateId
        case marker
        case pageSize
    }

    public func validate() throws {
        try caCertificateId.validateAsCertificateId()
        try marker?.validateAsMarker()
        try pageSize?.validateAsPageSize()
    }
}

public struct ListCertificatesByCAResponse: Codable, Equatable {
    public var certificates: Certificates?
    public var nextMarker: Marker?

    public init(certificates: Certificates? = nil,
                nextMarker: Marker? = nil) {
        self.certificates = certificates
        self.nextMarker = nextMarker
    }

    enum CodingKeys: String, CodingKey {
        case certificates
        case nextMarker
    }

    public func validate() throws {
        try nextMarker?.validateAsMarker()
    }
}

public struct ListCertificatesRequest: Codable, Equatable {
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

public struct ListCertificatesResponse: Codable, Equatable {
    public var certificates: Certificates?
    public var nextMarker: Marker?

    public init(certificates: Certificates? = nil,
                nextMarker: Marker? = nil) {
        self.certificates = certificates
        self.nextMarker = nextMarker
    }

    enum CodingKeys: String, CodingKey {
        case certificates
        case nextMarker
    }

    public func validate() throws {
        try nextMarker?.validateAsMarker()
    }
}

public struct ListIndicesRequest: Codable, Equatable {
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

public struct ListIndicesResponse: Codable, Equatable {
    public var indexNames: IndexNamesList?
    public var nextToken: NextToken?

    public init(indexNames: IndexNamesList? = nil,
                nextToken: NextToken? = nil) {
        self.indexNames = indexNames
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case indexNames
        case nextToken
    }

    public func validate() throws {
    }
}

public struct ListJobExecutionsForJobRequest: Codable, Equatable {
    public var jobId: JobId
    public var maxResults: LaserMaxResults?
    public var nextToken: NextToken?
    public var status: JobExecutionStatus?

    public init(jobId: JobId,
                maxResults: LaserMaxResults? = nil,
                nextToken: NextToken? = nil,
                status: JobExecutionStatus? = nil) {
        self.jobId = jobId
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case jobId
        case maxResults
        case nextToken
        case status
    }

    public func validate() throws {
        try jobId.validateAsJobId()
        try maxResults?.validateAsLaserMaxResults()
    }
}

public struct ListJobExecutionsForJobResponse: Codable, Equatable {
    public var executionSummaries: JobExecutionSummaryForJobList?
    public var nextToken: NextToken?

    public init(executionSummaries: JobExecutionSummaryForJobList? = nil,
                nextToken: NextToken? = nil) {
        self.executionSummaries = executionSummaries
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case executionSummaries
        case nextToken
    }

    public func validate() throws {
    }
}

public struct ListJobExecutionsForThingRequest: Codable, Equatable {
    public var maxResults: LaserMaxResults?
    public var nextToken: NextToken?
    public var status: JobExecutionStatus?
    public var thingName: ThingName

    public init(maxResults: LaserMaxResults? = nil,
                nextToken: NextToken? = nil,
                status: JobExecutionStatus? = nil,
                thingName: ThingName) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.status = status
        self.thingName = thingName
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case status
        case thingName
    }

    public func validate() throws {
        try maxResults?.validateAsLaserMaxResults()
        try thingName.validateAsThingName()
    }
}

public struct ListJobExecutionsForThingResponse: Codable, Equatable {
    public var executionSummaries: JobExecutionSummaryForThingList?
    public var nextToken: NextToken?

    public init(executionSummaries: JobExecutionSummaryForThingList? = nil,
                nextToken: NextToken? = nil) {
        self.executionSummaries = executionSummaries
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case executionSummaries
        case nextToken
    }

    public func validate() throws {
    }
}

public struct ListJobsRequest: Codable, Equatable {
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

public struct ListJobsResponse: Codable, Equatable {
    public var jobs: JobSummaryList?
    public var nextToken: NextToken?

    public init(jobs: JobSummaryList? = nil,
                nextToken: NextToken? = nil) {
        self.jobs = jobs
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case jobs
        case nextToken
    }

    public func validate() throws {
    }
}

public struct ListMitigationActionsRequest: Codable, Equatable {
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

public struct ListMitigationActionsResponse: Codable, Equatable {
    public var actionIdentifiers: MitigationActionIdentifierList?
    public var nextToken: NextToken?

    public init(actionIdentifiers: MitigationActionIdentifierList? = nil,
                nextToken: NextToken? = nil) {
        self.actionIdentifiers = actionIdentifiers
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case actionIdentifiers
        case nextToken
    }

    public func validate() throws {
    }
}

public struct ListOTAUpdatesRequest: Codable, Equatable {
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

public struct ListOTAUpdatesResponse: Codable, Equatable {
    public var nextToken: NextToken?
    public var otaUpdates: OTAUpdatesSummary?

    public init(nextToken: NextToken? = nil,
                otaUpdates: OTAUpdatesSummary? = nil) {
        self.nextToken = nextToken
        self.otaUpdates = otaUpdates
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case otaUpdates
    }

    public func validate() throws {
    }
}

public struct ListOutgoingCertificatesRequest: Codable, Equatable {
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

public struct ListOutgoingCertificatesResponse: Codable, Equatable {
    public var nextMarker: Marker?
    public var outgoingCertificates: OutgoingCertificates?

    public init(nextMarker: Marker? = nil,
                outgoingCertificates: OutgoingCertificates? = nil) {
        self.nextMarker = nextMarker
        self.outgoingCertificates = outgoingCertificates
    }

    enum CodingKeys: String, CodingKey {
        case nextMarker
        case outgoingCertificates
    }

    public func validate() throws {
        try nextMarker?.validateAsMarker()
    }
}

public struct ListPoliciesRequest: Codable, Equatable {
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

public struct ListPoliciesResponse: Codable, Equatable {
    public var nextMarker: Marker?
    public var policies: Policies?

    public init(nextMarker: Marker? = nil,
                policies: Policies? = nil) {
        self.nextMarker = nextMarker
        self.policies = policies
    }

    enum CodingKeys: String, CodingKey {
        case nextMarker
        case policies
    }

    public func validate() throws {
        try nextMarker?.validateAsMarker()
    }
}

public struct ListPolicyPrincipalsRequest: Codable, Equatable {
    public var ascendingOrder: AscendingOrder?
    public var marker: Marker?
    public var pageSize: PageSize?
    public var policyName: PolicyName

    public init(ascendingOrder: AscendingOrder? = nil,
                marker: Marker? = nil,
                pageSize: PageSize? = nil,
                policyName: PolicyName) {
        self.ascendingOrder = ascendingOrder
        self.marker = marker
        self.pageSize = pageSize
        self.policyName = policyName
    }

    enum CodingKeys: String, CodingKey {
        case ascendingOrder = "isAscendingOrder"
        case marker
        case pageSize
        case policyName = "x-amzn-iot-policy"
    }

    public func validate() throws {
        try marker?.validateAsMarker()
        try pageSize?.validateAsPageSize()
        try policyName.validateAsPolicyName()
    }
}

public struct ListPolicyPrincipalsResponse: Codable, Equatable {
    public var nextMarker: Marker?
    public var principals: Principals?

    public init(nextMarker: Marker? = nil,
                principals: Principals? = nil) {
        self.nextMarker = nextMarker
        self.principals = principals
    }

    enum CodingKeys: String, CodingKey {
        case nextMarker
        case principals
    }

    public func validate() throws {
        try nextMarker?.validateAsMarker()
    }
}

public struct ListPolicyVersionsRequest: Codable, Equatable {
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

public struct ListPolicyVersionsResponse: Codable, Equatable {
    public var policyVersions: PolicyVersions?

    public init(policyVersions: PolicyVersions? = nil) {
        self.policyVersions = policyVersions
    }

    enum CodingKeys: String, CodingKey {
        case policyVersions
    }

    public func validate() throws {
    }
}

public struct ListPrincipalPoliciesRequest: Codable, Equatable {
    public var ascendingOrder: AscendingOrder?
    public var marker: Marker?
    public var pageSize: PageSize?
    public var principal: Principal

    public init(ascendingOrder: AscendingOrder? = nil,
                marker: Marker? = nil,
                pageSize: PageSize? = nil,
                principal: Principal) {
        self.ascendingOrder = ascendingOrder
        self.marker = marker
        self.pageSize = pageSize
        self.principal = principal
    }

    enum CodingKeys: String, CodingKey {
        case ascendingOrder = "isAscendingOrder"
        case marker
        case pageSize
        case principal = "x-amzn-iot-principal"
    }

    public func validate() throws {
        try marker?.validateAsMarker()
        try pageSize?.validateAsPageSize()
    }
}

public struct ListPrincipalPoliciesResponse: Codable, Equatable {
    public var nextMarker: Marker?
    public var policies: Policies?

    public init(nextMarker: Marker? = nil,
                policies: Policies? = nil) {
        self.nextMarker = nextMarker
        self.policies = policies
    }

    enum CodingKeys: String, CodingKey {
        case nextMarker
        case policies
    }

    public func validate() throws {
        try nextMarker?.validateAsMarker()
    }
}

public struct ListPrincipalThingsRequest: Codable, Equatable {
    public var maxResults: RegistryMaxResults?
    public var nextToken: NextToken?
    public var principal: Principal

    public init(maxResults: RegistryMaxResults? = nil,
                nextToken: NextToken? = nil,
                principal: Principal) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.principal = principal
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case principal = "x-amzn-principal"
    }

    public func validate() throws {
        try maxResults?.validateAsRegistryMaxResults()
    }
}

public struct ListPrincipalThingsResponse: Codable, Equatable {
    public var nextToken: NextToken?
    public var things: ThingNameList?

    public init(nextToken: NextToken? = nil,
                things: ThingNameList? = nil) {
        self.nextToken = nextToken
        self.things = things
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case things
    }

    public func validate() throws {
    }
}

public struct ListRoleAliasesRequest: Codable, Equatable {
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

public struct ListRoleAliasesResponse: Codable, Equatable {
    public var nextMarker: Marker?
    public var roleAliases: RoleAliases?

    public init(nextMarker: Marker? = nil,
                roleAliases: RoleAliases? = nil) {
        self.nextMarker = nextMarker
        self.roleAliases = roleAliases
    }

    enum CodingKeys: String, CodingKey {
        case nextMarker
        case roleAliases
    }

    public func validate() throws {
        try nextMarker?.validateAsMarker()
    }
}

public struct ListScheduledAuditsRequest: Codable, Equatable {
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

public struct ListScheduledAuditsResponse: Codable, Equatable {
    public var nextToken: NextToken?
    public var scheduledAudits: ScheduledAuditMetadataList?

    public init(nextToken: NextToken? = nil,
                scheduledAudits: ScheduledAuditMetadataList? = nil) {
        self.nextToken = nextToken
        self.scheduledAudits = scheduledAudits
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case scheduledAudits
    }

    public func validate() throws {
    }
}

public struct ListSecurityProfilesForTargetRequest: Codable, Equatable {
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

public struct ListSecurityProfilesForTargetResponse: Codable, Equatable {
    public var nextToken: NextToken?
    public var securityProfileTargetMappings: SecurityProfileTargetMappings?

    public init(nextToken: NextToken? = nil,
                securityProfileTargetMappings: SecurityProfileTargetMappings? = nil) {
        self.nextToken = nextToken
        self.securityProfileTargetMappings = securityProfileTargetMappings
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case securityProfileTargetMappings
    }

    public func validate() throws {
    }
}

public struct ListSecurityProfilesRequest: Codable, Equatable {
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

public struct ListSecurityProfilesResponse: Codable, Equatable {
    public var nextToken: NextToken?
    public var securityProfileIdentifiers: SecurityProfileIdentifiers?

    public init(nextToken: NextToken? = nil,
                securityProfileIdentifiers: SecurityProfileIdentifiers? = nil) {
        self.nextToken = nextToken
        self.securityProfileIdentifiers = securityProfileIdentifiers
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case securityProfileIdentifiers
    }

    public func validate() throws {
    }
}

public struct ListStreamsRequest: Codable, Equatable {
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

public struct ListStreamsResponse: Codable, Equatable {
    public var nextToken: NextToken?
    public var streams: StreamsSummary?

    public init(nextToken: NextToken? = nil,
                streams: StreamsSummary? = nil) {
        self.nextToken = nextToken
        self.streams = streams
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case streams
    }

    public func validate() throws {
    }
}

public struct ListTagsForResourceRequest: Codable, Equatable {
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

public struct ListTagsForResourceResponse: Codable, Equatable {
    public var nextToken: NextToken?
    public var tags: TagList?

    public init(nextToken: NextToken? = nil,
                tags: TagList? = nil) {
        self.nextToken = nextToken
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case tags
    }

    public func validate() throws {
    }
}

public struct ListTargetsForPolicyRequest: Codable, Equatable {
    public var marker: Marker?
    public var pageSize: PageSize?
    public var policyName: PolicyName

    public init(marker: Marker? = nil,
                pageSize: PageSize? = nil,
                policyName: PolicyName) {
        self.marker = marker
        self.pageSize = pageSize
        self.policyName = policyName
    }

    enum CodingKeys: String, CodingKey {
        case marker
        case pageSize
        case policyName
    }

    public func validate() throws {
        try marker?.validateAsMarker()
        try pageSize?.validateAsPageSize()
        try policyName.validateAsPolicyName()
    }
}

public struct ListTargetsForPolicyResponse: Codable, Equatable {
    public var nextMarker: Marker?
    public var targets: PolicyTargets?

    public init(nextMarker: Marker? = nil,
                targets: PolicyTargets? = nil) {
        self.nextMarker = nextMarker
        self.targets = targets
    }

    enum CodingKeys: String, CodingKey {
        case nextMarker
        case targets
    }

    public func validate() throws {
        try nextMarker?.validateAsMarker()
    }
}

public struct ListTargetsForSecurityProfileRequest: Codable, Equatable {
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var securityProfileName: SecurityProfileName

    public init(maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                securityProfileName: SecurityProfileName) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.securityProfileName = securityProfileName
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case securityProfileName
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try securityProfileName.validateAsSecurityProfileName()
    }
}

public struct ListTargetsForSecurityProfileResponse: Codable, Equatable {
    public var nextToken: NextToken?
    public var securityProfileTargets: SecurityProfileTargets?

    public init(nextToken: NextToken? = nil,
                securityProfileTargets: SecurityProfileTargets? = nil) {
        self.nextToken = nextToken
        self.securityProfileTargets = securityProfileTargets
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case securityProfileTargets
    }

    public func validate() throws {
    }
}

public struct ListThingGroupsForThingRequest: Codable, Equatable {
    public var maxResults: RegistryMaxResults?
    public var nextToken: NextToken?
    public var thingName: ThingName

    public init(maxResults: RegistryMaxResults? = nil,
                nextToken: NextToken? = nil,
                thingName: ThingName) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.thingName = thingName
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case thingName
    }

    public func validate() throws {
        try maxResults?.validateAsRegistryMaxResults()
        try thingName.validateAsThingName()
    }
}

public struct ListThingGroupsForThingResponse: Codable, Equatable {
    public var nextToken: NextToken?
    public var thingGroups: ThingGroupNameAndArnList?

    public init(nextToken: NextToken? = nil,
                thingGroups: ThingGroupNameAndArnList? = nil) {
        self.nextToken = nextToken
        self.thingGroups = thingGroups
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case thingGroups
    }

    public func validate() throws {
    }
}

public struct ListThingGroupsRequest: Codable, Equatable {
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

public struct ListThingGroupsResponse: Codable, Equatable {
    public var nextToken: NextToken?
    public var thingGroups: ThingGroupNameAndArnList?

    public init(nextToken: NextToken? = nil,
                thingGroups: ThingGroupNameAndArnList? = nil) {
        self.nextToken = nextToken
        self.thingGroups = thingGroups
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case thingGroups
    }

    public func validate() throws {
    }
}

public struct ListThingPrincipalsRequest: Codable, Equatable {
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

public struct ListThingPrincipalsResponse: Codable, Equatable {
    public var principals: Principals?

    public init(principals: Principals? = nil) {
        self.principals = principals
    }

    enum CodingKeys: String, CodingKey {
        case principals
    }

    public func validate() throws {
    }
}

public struct ListThingRegistrationTaskReportsRequest: Codable, Equatable {
    public var maxResults: RegistryMaxResults?
    public var nextToken: NextToken?
    public var reportType: ReportType
    public var taskId: TaskId

    public init(maxResults: RegistryMaxResults? = nil,
                nextToken: NextToken? = nil,
                reportType: ReportType,
                taskId: TaskId) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.reportType = reportType
        self.taskId = taskId
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case reportType
        case taskId
    }

    public func validate() throws {
        try maxResults?.validateAsRegistryMaxResults()
        try taskId.validateAsTaskId()
    }
}

public struct ListThingRegistrationTaskReportsResponse: Codable, Equatable {
    public var nextToken: NextToken?
    public var reportType: ReportType?
    public var resourceLinks: S3FileUrlList?

    public init(nextToken: NextToken? = nil,
                reportType: ReportType? = nil,
                resourceLinks: S3FileUrlList? = nil) {
        self.nextToken = nextToken
        self.reportType = reportType
        self.resourceLinks = resourceLinks
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case reportType
        case resourceLinks
    }

    public func validate() throws {
    }
}

public struct ListThingRegistrationTasksRequest: Codable, Equatable {
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

public struct ListThingRegistrationTasksResponse: Codable, Equatable {
    public var nextToken: NextToken?
    public var taskIds: TaskIdList?

    public init(nextToken: NextToken? = nil,
                taskIds: TaskIdList? = nil) {
        self.nextToken = nextToken
        self.taskIds = taskIds
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case taskIds
    }

    public func validate() throws {
    }
}

public struct ListThingTypesRequest: Codable, Equatable {
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

public struct ListThingTypesResponse: Codable, Equatable {
    public var nextToken: NextToken?
    public var thingTypes: ThingTypeList?

    public init(nextToken: NextToken? = nil,
                thingTypes: ThingTypeList? = nil) {
        self.nextToken = nextToken
        self.thingTypes = thingTypes
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case thingTypes
    }

    public func validate() throws {
    }
}

public struct ListThingsInBillingGroupRequest: Codable, Equatable {
    public var billingGroupName: BillingGroupName
    public var maxResults: RegistryMaxResults?
    public var nextToken: NextToken?

    public init(billingGroupName: BillingGroupName,
                maxResults: RegistryMaxResults? = nil,
                nextToken: NextToken? = nil) {
        self.billingGroupName = billingGroupName
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case billingGroupName
        case maxResults
        case nextToken
    }

    public func validate() throws {
        try billingGroupName.validateAsBillingGroupName()
        try maxResults?.validateAsRegistryMaxResults()
    }
}

public struct ListThingsInBillingGroupResponse: Codable, Equatable {
    public var nextToken: NextToken?
    public var things: ThingNameList?

    public init(nextToken: NextToken? = nil,
                things: ThingNameList? = nil) {
        self.nextToken = nextToken
        self.things = things
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case things
    }

    public func validate() throws {
    }
}

public struct ListThingsInThingGroupRequest: Codable, Equatable {
    public var maxResults: RegistryMaxResults?
    public var nextToken: NextToken?
    public var recursive: Recursive?
    public var thingGroupName: ThingGroupName

    public init(maxResults: RegistryMaxResults? = nil,
                nextToken: NextToken? = nil,
                recursive: Recursive? = nil,
                thingGroupName: ThingGroupName) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.recursive = recursive
        self.thingGroupName = thingGroupName
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case recursive
        case thingGroupName
    }

    public func validate() throws {
        try maxResults?.validateAsRegistryMaxResults()
        try thingGroupName.validateAsThingGroupName()
    }
}

public struct ListThingsInThingGroupResponse: Codable, Equatable {
    public var nextToken: NextToken?
    public var things: ThingNameList?

    public init(nextToken: NextToken? = nil,
                things: ThingNameList? = nil) {
        self.nextToken = nextToken
        self.things = things
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case things
    }

    public func validate() throws {
    }
}

public struct ListThingsRequest: Codable, Equatable {
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

public struct ListThingsResponse: Codable, Equatable {
    public var nextToken: NextToken?
    public var things: ThingAttributeList?

    public init(nextToken: NextToken? = nil,
                things: ThingAttributeList? = nil) {
        self.nextToken = nextToken
        self.things = things
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case things
    }

    public func validate() throws {
    }
}

public struct ListTopicRulesRequest: Codable, Equatable {
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

public struct ListTopicRulesResponse: Codable, Equatable {
    public var nextToken: NextToken?
    public var rules: TopicRuleList?

    public init(nextToken: NextToken? = nil,
                rules: TopicRuleList? = nil) {
        self.nextToken = nextToken
        self.rules = rules
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case rules
    }

    public func validate() throws {
    }
}

public struct ListV2LoggingLevelsRequest: Codable, Equatable {
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

public struct ListV2LoggingLevelsResponse: Codable, Equatable {
    public var logTargetConfigurations: LogTargetConfigurations?
    public var nextToken: NextToken?

    public init(logTargetConfigurations: LogTargetConfigurations? = nil,
                nextToken: NextToken? = nil) {
        self.logTargetConfigurations = logTargetConfigurations
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case logTargetConfigurations
        case nextToken
    }

    public func validate() throws {
    }
}

public struct ListViolationEventsRequest: Codable, Equatable {
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

public struct ListViolationEventsResponse: Codable, Equatable {
    public var nextToken: NextToken?
    public var violationEvents: ViolationEvents?

    public init(nextToken: NextToken? = nil,
                violationEvents: ViolationEvents? = nil) {
        self.nextToken = nextToken
        self.violationEvents = violationEvents
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case violationEvents
    }

    public func validate() throws {
    }
}

public struct LogTarget: Codable, Equatable {
    public var targetName: LogTargetName?
    public var targetType: LogTargetType

    public init(targetName: LogTargetName? = nil,
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

public struct LogTargetConfiguration: Codable, Equatable {
    public var logLevel: LogLevel?
    public var logTarget: LogTarget?

    public init(logLevel: LogLevel? = nil,
                logTarget: LogTarget? = nil) {
        self.logLevel = logLevel
        self.logTarget = logTarget
    }

    enum CodingKeys: String, CodingKey {
        case logLevel
        case logTarget
    }

    public func validate() throws {
        try logTarget?.validate()
    }
}

public struct LoggingOptionsPayload: Codable, Equatable {
    public var logLevel: LogLevel?
    public var roleArn: AwsArn

    public init(logLevel: LogLevel? = nil,
                roleArn: AwsArn) {
        self.logLevel = logLevel
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case logLevel
        case roleArn
    }

    public func validate() throws {
    }
}

public struct MalformedPolicyException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct MetricValue: Codable, Equatable {
    public var cidrs: Cidrs?
    public var count: UnsignedLong?
    public var ports: Ports?

    public init(cidrs: Cidrs? = nil,
                count: UnsignedLong? = nil,
                ports: Ports? = nil) {
        self.cidrs = cidrs
        self.count = count
        self.ports = ports
    }

    enum CodingKeys: String, CodingKey {
        case cidrs
        case count
        case ports
    }

    public func validate() throws {
        try count?.validateAsUnsignedLong()
    }
}

public struct MitigationAction: Codable, Equatable {
    public var actionParams: MitigationActionParams?
    public var id: MitigationActionId?
    public var name: MitigationActionName?
    public var roleArn: RoleArn?

    public init(actionParams: MitigationActionParams? = nil,
                id: MitigationActionId? = nil,
                name: MitigationActionName? = nil,
                roleArn: RoleArn? = nil) {
        self.actionParams = actionParams
        self.id = id
        self.name = name
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case actionParams
        case id
        case name
        case roleArn
    }

    public func validate() throws {
        try actionParams?.validate()
        try name?.validateAsMitigationActionName()
        try roleArn?.validateAsRoleArn()
    }
}

public struct MitigationActionIdentifier: Codable, Equatable {
    public var actionArn: MitigationActionArn?
    public var actionName: MitigationActionName?
    public var creationDate: Timestamp?

    public init(actionArn: MitigationActionArn? = nil,
                actionName: MitigationActionName? = nil,
                creationDate: Timestamp? = nil) {
        self.actionArn = actionArn
        self.actionName = actionName
        self.creationDate = creationDate
    }

    enum CodingKeys: String, CodingKey {
        case actionArn
        case actionName
        case creationDate
    }

    public func validate() throws {
        try actionName?.validateAsMitigationActionName()
    }
}

public struct MitigationActionParams: Codable, Equatable {
    public var addThingsToThingGroupParams: AddThingsToThingGroupParams?
    public var enableIoTLoggingParams: EnableIoTLoggingParams?
    public var publishFindingToSnsParams: PublishFindingToSnsParams?
    public var replaceDefaultPolicyVersionParams: ReplaceDefaultPolicyVersionParams?
    public var updateCACertificateParams: UpdateCACertificateParams?
    public var updateDeviceCertificateParams: UpdateDeviceCertificateParams?

    public init(addThingsToThingGroupParams: AddThingsToThingGroupParams? = nil,
                enableIoTLoggingParams: EnableIoTLoggingParams? = nil,
                publishFindingToSnsParams: PublishFindingToSnsParams? = nil,
                replaceDefaultPolicyVersionParams: ReplaceDefaultPolicyVersionParams? = nil,
                updateCACertificateParams: UpdateCACertificateParams? = nil,
                updateDeviceCertificateParams: UpdateDeviceCertificateParams? = nil) {
        self.addThingsToThingGroupParams = addThingsToThingGroupParams
        self.enableIoTLoggingParams = enableIoTLoggingParams
        self.publishFindingToSnsParams = publishFindingToSnsParams
        self.replaceDefaultPolicyVersionParams = replaceDefaultPolicyVersionParams
        self.updateCACertificateParams = updateCACertificateParams
        self.updateDeviceCertificateParams = updateDeviceCertificateParams
    }

    enum CodingKeys: String, CodingKey {
        case addThingsToThingGroupParams
        case enableIoTLoggingParams
        case publishFindingToSnsParams
        case replaceDefaultPolicyVersionParams
        case updateCACertificateParams
        case updateDeviceCertificateParams
    }

    public func validate() throws {
        try addThingsToThingGroupParams?.validate()
        try enableIoTLoggingParams?.validate()
        try publishFindingToSnsParams?.validate()
        try replaceDefaultPolicyVersionParams?.validate()
        try updateCACertificateParams?.validate()
        try updateDeviceCertificateParams?.validate()
    }
}

public struct NonCompliantResource: Codable, Equatable {
    public var additionalInfo: StringMap?
    public var resourceIdentifier: ResourceIdentifier?
    public var resourceType: ResourceType?

    public init(additionalInfo: StringMap? = nil,
                resourceIdentifier: ResourceIdentifier? = nil,
                resourceType: ResourceType? = nil) {
        self.additionalInfo = additionalInfo
        self.resourceIdentifier = resourceIdentifier
        self.resourceType = resourceType
    }

    enum CodingKeys: String, CodingKey {
        case additionalInfo
        case resourceIdentifier
        case resourceType
    }

    public func validate() throws {
        try resourceIdentifier?.validate()
    }
}

public struct NotConfiguredException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct OTAUpdateFile: Codable, Equatable {
    public var attributes: AttributesMap?
    public var codeSigning: CodeSigning?
    public var fileLocation: FileLocation?
    public var fileName: FileName?
    public var fileVersion: OTAUpdateFileVersion?

    public init(attributes: AttributesMap? = nil,
                codeSigning: CodeSigning? = nil,
                fileLocation: FileLocation? = nil,
                fileName: FileName? = nil,
                fileVersion: OTAUpdateFileVersion? = nil) {
        self.attributes = attributes
        self.codeSigning = codeSigning
        self.fileLocation = fileLocation
        self.fileName = fileName
        self.fileVersion = fileVersion
    }

    enum CodingKeys: String, CodingKey {
        case attributes
        case codeSigning
        case fileLocation
        case fileName
        case fileVersion
    }

    public func validate() throws {
        try codeSigning?.validate()
        try fileLocation?.validate()
    }
}

public struct OTAUpdateInfo: Codable, Equatable {
    public var additionalParameters: AdditionalParameterMap?
    public var awsIotJobArn: AwsIotJobArn?
    public var awsIotJobId: AwsIotJobId?
    public var awsJobExecutionsRolloutConfig: AwsJobExecutionsRolloutConfig?
    public var creationDate: DateType?
    public var description: OTAUpdateDescription?
    public var errorInfo: ErrorInfo?
    public var lastModifiedDate: DateType?
    public var otaUpdateArn: OTAUpdateArn?
    public var otaUpdateFiles: OTAUpdateFiles?
    public var otaUpdateId: OTAUpdateId?
    public var otaUpdateStatus: OTAUpdateStatus?
    public var targetSelection: TargetSelection?
    public var targets: Targets?

    public init(additionalParameters: AdditionalParameterMap? = nil,
                awsIotJobArn: AwsIotJobArn? = nil,
                awsIotJobId: AwsIotJobId? = nil,
                awsJobExecutionsRolloutConfig: AwsJobExecutionsRolloutConfig? = nil,
                creationDate: DateType? = nil,
                description: OTAUpdateDescription? = nil,
                errorInfo: ErrorInfo? = nil,
                lastModifiedDate: DateType? = nil,
                otaUpdateArn: OTAUpdateArn? = nil,
                otaUpdateFiles: OTAUpdateFiles? = nil,
                otaUpdateId: OTAUpdateId? = nil,
                otaUpdateStatus: OTAUpdateStatus? = nil,
                targetSelection: TargetSelection? = nil,
                targets: Targets? = nil) {
        self.additionalParameters = additionalParameters
        self.awsIotJobArn = awsIotJobArn
        self.awsIotJobId = awsIotJobId
        self.awsJobExecutionsRolloutConfig = awsJobExecutionsRolloutConfig
        self.creationDate = creationDate
        self.description = description
        self.errorInfo = errorInfo
        self.lastModifiedDate = lastModifiedDate
        self.otaUpdateArn = otaUpdateArn
        self.otaUpdateFiles = otaUpdateFiles
        self.otaUpdateId = otaUpdateId
        self.otaUpdateStatus = otaUpdateStatus
        self.targetSelection = targetSelection
        self.targets = targets
    }

    enum CodingKeys: String, CodingKey {
        case additionalParameters
        case awsIotJobArn
        case awsIotJobId
        case awsJobExecutionsRolloutConfig
        case creationDate
        case description
        case errorInfo
        case lastModifiedDate
        case otaUpdateArn
        case otaUpdateFiles
        case otaUpdateId
        case otaUpdateStatus
        case targetSelection
        case targets
    }

    public func validate() throws {
        try awsJobExecutionsRolloutConfig?.validate()
        try description?.validateAsOTAUpdateDescription()
        try errorInfo?.validate()
        try otaUpdateFiles?.validateAsOTAUpdateFiles()
        try otaUpdateId?.validateAsOTAUpdateId()
        try targets?.validateAsTargets()
    }
}

public struct OTAUpdateSummary: Codable, Equatable {
    public var creationDate: DateType?
    public var otaUpdateArn: OTAUpdateArn?
    public var otaUpdateId: OTAUpdateId?

    public init(creationDate: DateType? = nil,
                otaUpdateArn: OTAUpdateArn? = nil,
                otaUpdateId: OTAUpdateId? = nil) {
        self.creationDate = creationDate
        self.otaUpdateArn = otaUpdateArn
        self.otaUpdateId = otaUpdateId
    }

    enum CodingKeys: String, CodingKey {
        case creationDate
        case otaUpdateArn
        case otaUpdateId
    }

    public func validate() throws {
        try otaUpdateId?.validateAsOTAUpdateId()
    }
}

public struct OutgoingCertificate: Codable, Equatable {
    public var certificateArn: CertificateArn?
    public var certificateId: CertificateId?
    public var creationDate: DateType?
    public var transferDate: DateType?
    public var transferMessage: Message?
    public var transferredTo: AwsAccountId?

    public init(certificateArn: CertificateArn? = nil,
                certificateId: CertificateId? = nil,
                creationDate: DateType? = nil,
                transferDate: DateType? = nil,
                transferMessage: Message? = nil,
                transferredTo: AwsAccountId? = nil) {
        self.certificateArn = certificateArn
        self.certificateId = certificateId
        self.creationDate = creationDate
        self.transferDate = transferDate
        self.transferMessage = transferMessage
        self.transferredTo = transferredTo
    }

    enum CodingKeys: String, CodingKey {
        case certificateArn
        case certificateId
        case creationDate
        case transferDate
        case transferMessage
        case transferredTo
    }

    public func validate() throws {
        try certificateId?.validateAsCertificateId()
        try transferMessage?.validateAsMessage()
        try transferredTo?.validateAsAwsAccountId()
    }
}

public struct Policy: Codable, Equatable {
    public var policyArn: PolicyArn?
    public var policyName: PolicyName?

    public init(policyArn: PolicyArn? = nil,
                policyName: PolicyName? = nil) {
        self.policyArn = policyArn
        self.policyName = policyName
    }

    enum CodingKeys: String, CodingKey {
        case policyArn
        case policyName
    }

    public func validate() throws {
        try policyName?.validateAsPolicyName()
    }
}

public struct PolicyVersion: Codable, Equatable {
    public var createDate: DateType?
    public var isDefaultVersion: IsDefaultVersion?
    public var versionId: PolicyVersionId?

    public init(createDate: DateType? = nil,
                isDefaultVersion: IsDefaultVersion? = nil,
                versionId: PolicyVersionId? = nil) {
        self.createDate = createDate
        self.isDefaultVersion = isDefaultVersion
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case createDate
        case isDefaultVersion
        case versionId
    }

    public func validate() throws {
        try versionId?.validateAsPolicyVersionId()
    }
}

public struct PolicyVersionIdentifier: Codable, Equatable {
    public var policyName: PolicyName?
    public var policyVersionId: PolicyVersionId?

    public init(policyName: PolicyName? = nil,
                policyVersionId: PolicyVersionId? = nil) {
        self.policyName = policyName
        self.policyVersionId = policyVersionId
    }

    enum CodingKeys: String, CodingKey {
        case policyName
        case policyVersionId
    }

    public func validate() throws {
        try policyName?.validateAsPolicyName()
        try policyVersionId?.validateAsPolicyVersionId()
    }
}

public struct PresignedUrlConfig: Codable, Equatable {
    public var expiresInSec: ExpiresInSec?
    public var roleArn: RoleArn?

    public init(expiresInSec: ExpiresInSec? = nil,
                roleArn: RoleArn? = nil) {
        self.expiresInSec = expiresInSec
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case expiresInSec
        case roleArn
    }

    public func validate() throws {
        try expiresInSec?.validateAsExpiresInSec()
        try roleArn?.validateAsRoleArn()
    }
}

public struct PublishFindingToSnsParams: Codable, Equatable {
    public var topicArn: SnsTopicArn

    public init(topicArn: SnsTopicArn) {
        self.topicArn = topicArn
    }

    enum CodingKeys: String, CodingKey {
        case topicArn
    }

    public func validate() throws {
        try topicArn.validateAsSnsTopicArn()
    }
}

public struct PutItemInput: Codable, Equatable {
    public var tableName: TableName

    public init(tableName: TableName) {
        self.tableName = tableName
    }

    enum CodingKeys: String, CodingKey {
        case tableName
    }

    public func validate() throws {
    }
}

public struct RateIncreaseCriteria: Codable, Equatable {
    public var numberOfNotifiedThings: NumberOfThings?
    public var numberOfSucceededThings: NumberOfThings?

    public init(numberOfNotifiedThings: NumberOfThings? = nil,
                numberOfSucceededThings: NumberOfThings? = nil) {
        self.numberOfNotifiedThings = numberOfNotifiedThings
        self.numberOfSucceededThings = numberOfSucceededThings
    }

    enum CodingKeys: String, CodingKey {
        case numberOfNotifiedThings
        case numberOfSucceededThings
    }

    public func validate() throws {
        try numberOfNotifiedThings?.validateAsNumberOfThings()
        try numberOfSucceededThings?.validateAsNumberOfThings()
    }
}

public struct RegisterCACertificateRequest: Codable, Equatable {
    public var allowAutoRegistration: AllowAutoRegistration?
    public var caCertificate: CertificatePem
    public var registrationConfig: RegistrationConfig?
    public var setAsActive: SetAsActive?
    public var verificationCertificate: CertificatePem

    public init(allowAutoRegistration: AllowAutoRegistration? = nil,
                caCertificate: CertificatePem,
                registrationConfig: RegistrationConfig? = nil,
                setAsActive: SetAsActive? = nil,
                verificationCertificate: CertificatePem) {
        self.allowAutoRegistration = allowAutoRegistration
        self.caCertificate = caCertificate
        self.registrationConfig = registrationConfig
        self.setAsActive = setAsActive
        self.verificationCertificate = verificationCertificate
    }

    enum CodingKeys: String, CodingKey {
        case allowAutoRegistration
        case caCertificate
        case registrationConfig
        case setAsActive
        case verificationCertificate
    }

    public func validate() throws {
        try caCertificate.validateAsCertificatePem()
        try registrationConfig?.validate()
        try verificationCertificate.validateAsCertificatePem()
    }
}

public struct RegisterCACertificateResponse: Codable, Equatable {
    public var certificateArn: CertificateArn?
    public var certificateId: CertificateId?

    public init(certificateArn: CertificateArn? = nil,
                certificateId: CertificateId? = nil) {
        self.certificateArn = certificateArn
        self.certificateId = certificateId
    }

    enum CodingKeys: String, CodingKey {
        case certificateArn
        case certificateId
    }

    public func validate() throws {
        try certificateId?.validateAsCertificateId()
    }
}

public struct RegisterCertificateRequest: Codable, Equatable {
    public var caCertificatePem: CertificatePem?
    public var certificatePem: CertificatePem
    public var status: CertificateStatus?

    public init(caCertificatePem: CertificatePem? = nil,
                certificatePem: CertificatePem,
                status: CertificateStatus? = nil) {
        self.caCertificatePem = caCertificatePem
        self.certificatePem = certificatePem
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case caCertificatePem
        case certificatePem
        case status
    }

    public func validate() throws {
        try caCertificatePem?.validateAsCertificatePem()
        try certificatePem.validateAsCertificatePem()
    }
}

public struct RegisterCertificateResponse: Codable, Equatable {
    public var certificateArn: CertificateArn?
    public var certificateId: CertificateId?

    public init(certificateArn: CertificateArn? = nil,
                certificateId: CertificateId? = nil) {
        self.certificateArn = certificateArn
        self.certificateId = certificateId
    }

    enum CodingKeys: String, CodingKey {
        case certificateArn
        case certificateId
    }

    public func validate() throws {
        try certificateId?.validateAsCertificateId()
    }
}

public struct RegisterThingRequest: Codable, Equatable {
    public var parameters: Parameters?
    public var templateBody: TemplateBody

    public init(parameters: Parameters? = nil,
                templateBody: TemplateBody) {
        self.parameters = parameters
        self.templateBody = templateBody
    }

    enum CodingKeys: String, CodingKey {
        case parameters
        case templateBody
    }

    public func validate() throws {
    }
}

public struct RegisterThingResponse: Codable, Equatable {
    public var certificatePem: CertificatePem?
    public var resourceArns: ResourceArns?

    public init(certificatePem: CertificatePem? = nil,
                resourceArns: ResourceArns? = nil) {
        self.certificatePem = certificatePem
        self.resourceArns = resourceArns
    }

    enum CodingKeys: String, CodingKey {
        case certificatePem
        case resourceArns
    }

    public func validate() throws {
        try certificatePem?.validateAsCertificatePem()
    }
}

public struct RegistrationCodeValidationException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct RegistrationConfig: Codable, Equatable {
    public var roleArn: RoleArn?
    public var templateBody: TemplateBody?

    public init(roleArn: RoleArn? = nil,
                templateBody: TemplateBody? = nil) {
        self.roleArn = roleArn
        self.templateBody = templateBody
    }

    enum CodingKeys: String, CodingKey {
        case roleArn
        case templateBody
    }

    public func validate() throws {
        try roleArn?.validateAsRoleArn()
    }
}

public struct RejectCertificateTransferRequest: Codable, Equatable {
    public var certificateId: CertificateId
    public var rejectReason: Message?

    public init(certificateId: CertificateId,
                rejectReason: Message? = nil) {
        self.certificateId = certificateId
        self.rejectReason = rejectReason
    }

    enum CodingKeys: String, CodingKey {
        case certificateId
        case rejectReason
    }

    public func validate() throws {
        try certificateId.validateAsCertificateId()
        try rejectReason?.validateAsMessage()
    }
}

public struct RelatedResource: Codable, Equatable {
    public var additionalInfo: StringMap?
    public var resourceIdentifier: ResourceIdentifier?
    public var resourceType: ResourceType?

    public init(additionalInfo: StringMap? = nil,
                resourceIdentifier: ResourceIdentifier? = nil,
                resourceType: ResourceType? = nil) {
        self.additionalInfo = additionalInfo
        self.resourceIdentifier = resourceIdentifier
        self.resourceType = resourceType
    }

    enum CodingKeys: String, CodingKey {
        case additionalInfo
        case resourceIdentifier
        case resourceType
    }

    public func validate() throws {
        try resourceIdentifier?.validate()
    }
}

public struct RemoveThingFromBillingGroupRequest: Codable, Equatable {
    public var billingGroupArn: BillingGroupArn?
    public var billingGroupName: BillingGroupName?
    public var thingArn: ThingArn?
    public var thingName: ThingName?

    public init(billingGroupArn: BillingGroupArn? = nil,
                billingGroupName: BillingGroupName? = nil,
                thingArn: ThingArn? = nil,
                thingName: ThingName? = nil) {
        self.billingGroupArn = billingGroupArn
        self.billingGroupName = billingGroupName
        self.thingArn = thingArn
        self.thingName = thingName
    }

    enum CodingKeys: String, CodingKey {
        case billingGroupArn
        case billingGroupName
        case thingArn
        case thingName
    }

    public func validate() throws {
        try billingGroupName?.validateAsBillingGroupName()
        try thingName?.validateAsThingName()
    }
}

public struct RemoveThingFromBillingGroupResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct RemoveThingFromThingGroupRequest: Codable, Equatable {
    public var thingArn: ThingArn?
    public var thingGroupArn: ThingGroupArn?
    public var thingGroupName: ThingGroupName?
    public var thingName: ThingName?

    public init(thingArn: ThingArn? = nil,
                thingGroupArn: ThingGroupArn? = nil,
                thingGroupName: ThingGroupName? = nil,
                thingName: ThingName? = nil) {
        self.thingArn = thingArn
        self.thingGroupArn = thingGroupArn
        self.thingGroupName = thingGroupName
        self.thingName = thingName
    }

    enum CodingKeys: String, CodingKey {
        case thingArn
        case thingGroupArn
        case thingGroupName
        case thingName
    }

    public func validate() throws {
        try thingGroupName?.validateAsThingGroupName()
        try thingName?.validateAsThingName()
    }
}

public struct RemoveThingFromThingGroupResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ReplaceDefaultPolicyVersionParams: Codable, Equatable {
    public var templateName: PolicyTemplateName

    public init(templateName: PolicyTemplateName) {
        self.templateName = templateName
    }

    enum CodingKeys: String, CodingKey {
        case templateName
    }

    public func validate() throws {
    }
}

public struct ReplaceTopicRuleRequest: Codable, Equatable {
    public var ruleName: RuleName
    public var topicRulePayload: TopicRulePayload

    public init(ruleName: RuleName,
                topicRulePayload: TopicRulePayload) {
        self.ruleName = ruleName
        self.topicRulePayload = topicRulePayload
    }

    enum CodingKeys: String, CodingKey {
        case ruleName
        case topicRulePayload
    }

    public func validate() throws {
        try ruleName.validateAsRuleName()
        try topicRulePayload.validate()
    }
}

public struct RepublishAction: Codable, Equatable {
    public var qos: Qos?
    public var roleArn: AwsArn
    public var topic: TopicPattern

    public init(qos: Qos? = nil,
                roleArn: AwsArn,
                topic: TopicPattern) {
        self.qos = qos
        self.roleArn = roleArn
        self.topic = topic
    }

    enum CodingKeys: String, CodingKey {
        case qos
        case roleArn
        case topic
    }

    public func validate() throws {
        try qos?.validateAsQos()
    }
}

public struct ResourceAlreadyExistsException: Codable, Equatable {
    public var message: ErrorMessage1?
    public var resourceArn: ResourceArn1?
    public var resourceId: ResourceId?

    public init(message: ErrorMessage1? = nil,
                resourceArn: ResourceArn1? = nil,
                resourceId: ResourceId? = nil) {
        self.message = message
        self.resourceArn = resourceArn
        self.resourceId = resourceId
    }

    enum CodingKeys: String, CodingKey {
        case message
        case resourceArn
        case resourceId
    }

    public func validate() throws {
    }
}

public struct ResourceIdentifier: Codable, Equatable {
    public var account: AwsAccountId?
    public var caCertificateId: CertificateId?
    public var clientId: ClientId?
    public var cognitoIdentityPoolId: CognitoIdentityPoolId?
    public var deviceCertificateId: CertificateId?
    public var policyVersionIdentifier: PolicyVersionIdentifier?

    public init(account: AwsAccountId? = nil,
                caCertificateId: CertificateId? = nil,
                clientId: ClientId? = nil,
                cognitoIdentityPoolId: CognitoIdentityPoolId? = nil,
                deviceCertificateId: CertificateId? = nil,
                policyVersionIdentifier: PolicyVersionIdentifier? = nil) {
        self.account = account
        self.caCertificateId = caCertificateId
        self.clientId = clientId
        self.cognitoIdentityPoolId = cognitoIdentityPoolId
        self.deviceCertificateId = deviceCertificateId
        self.policyVersionIdentifier = policyVersionIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case account
        case caCertificateId
        case clientId
        case cognitoIdentityPoolId
        case deviceCertificateId
        case policyVersionIdentifier
    }

    public func validate() throws {
        try account?.validateAsAwsAccountId()
        try caCertificateId?.validateAsCertificateId()
        try deviceCertificateId?.validateAsCertificateId()
        try policyVersionIdentifier?.validate()
    }
}

public struct ResourceNotFoundException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct ResourceRegistrationFailureException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct RoleAliasDescription: Codable, Equatable {
    public var creationDate: DateType?
    public var credentialDurationSeconds: CredentialDurationSeconds?
    public var lastModifiedDate: DateType?
    public var owner: AwsAccountId?
    public var roleAlias: RoleAlias?
    public var roleAliasArn: RoleAliasArn?
    public var roleArn: RoleArn?

    public init(creationDate: DateType? = nil,
                credentialDurationSeconds: CredentialDurationSeconds? = nil,
                lastModifiedDate: DateType? = nil,
                owner: AwsAccountId? = nil,
                roleAlias: RoleAlias? = nil,
                roleAliasArn: RoleAliasArn? = nil,
                roleArn: RoleArn? = nil) {
        self.creationDate = creationDate
        self.credentialDurationSeconds = credentialDurationSeconds
        self.lastModifiedDate = lastModifiedDate
        self.owner = owner
        self.roleAlias = roleAlias
        self.roleAliasArn = roleAliasArn
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case creationDate
        case credentialDurationSeconds
        case lastModifiedDate
        case owner
        case roleAlias
        case roleAliasArn
        case roleArn
    }

    public func validate() throws {
        try credentialDurationSeconds?.validateAsCredentialDurationSeconds()
        try owner?.validateAsAwsAccountId()
        try roleAlias?.validateAsRoleAlias()
        try roleArn?.validateAsRoleArn()
    }
}

public struct S3Action: Codable, Equatable {
    public var bucketName: BucketName
    public var cannedAcl: CannedAccessControlList?
    public var key: Key
    public var roleArn: AwsArn

    public init(bucketName: BucketName,
                cannedAcl: CannedAccessControlList? = nil,
                key: Key,
                roleArn: AwsArn) {
        self.bucketName = bucketName
        self.cannedAcl = cannedAcl
        self.key = key
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case bucketName
        case cannedAcl
        case key
        case roleArn
    }

    public func validate() throws {
    }
}

public struct S3Destination: Codable, Equatable {
    public var bucket: S3Bucket?
    public var prefix: Prefix?

    public init(bucket: S3Bucket? = nil,
                prefix: Prefix? = nil) {
        self.bucket = bucket
        self.prefix = prefix
    }

    enum CodingKeys: String, CodingKey {
        case bucket
        case prefix
    }

    public func validate() throws {
        try bucket?.validateAsS3Bucket()
    }
}

public struct S3Location: Codable, Equatable {
    public var bucket: S3Bucket?
    public var key: S3Key?
    public var version: S3Version?

    public init(bucket: S3Bucket? = nil,
                key: S3Key? = nil,
                version: S3Version? = nil) {
        self.bucket = bucket
        self.key = key
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case bucket
        case key
        case version
    }

    public func validate() throws {
        try bucket?.validateAsS3Bucket()
        try key?.validateAsS3Key()
    }
}

public struct SalesforceAction: Codable, Equatable {
    public var token: SalesforceToken
    public var url: SalesforceEndpoint

    public init(token: SalesforceToken,
                url: SalesforceEndpoint) {
        self.token = token
        self.url = url
    }

    enum CodingKeys: String, CodingKey {
        case token
        case url
    }

    public func validate() throws {
        try token.validateAsSalesforceToken()
        try url.validateAsSalesforceEndpoint()
    }
}

public struct ScheduledAuditMetadata: Codable, Equatable {
    public var dayOfMonth: DayOfMonth?
    public var dayOfWeek: DayOfWeek?
    public var frequency: AuditFrequency?
    public var scheduledAuditArn: ScheduledAuditArn?
    public var scheduledAuditName: ScheduledAuditName?

    public init(dayOfMonth: DayOfMonth? = nil,
                dayOfWeek: DayOfWeek? = nil,
                frequency: AuditFrequency? = nil,
                scheduledAuditArn: ScheduledAuditArn? = nil,
                scheduledAuditName: ScheduledAuditName? = nil) {
        self.dayOfMonth = dayOfMonth
        self.dayOfWeek = dayOfWeek
        self.frequency = frequency
        self.scheduledAuditArn = scheduledAuditArn
        self.scheduledAuditName = scheduledAuditName
    }

    enum CodingKeys: String, CodingKey {
        case dayOfMonth
        case dayOfWeek
        case frequency
        case scheduledAuditArn
        case scheduledAuditName
    }

    public func validate() throws {
        try dayOfMonth?.validateAsDayOfMonth()
        try scheduledAuditName?.validateAsScheduledAuditName()
    }
}

public struct SearchIndexRequest: Codable, Equatable {
    public var indexName: IndexName?
    public var maxResults: QueryMaxResults?
    public var nextToken: NextToken?
    public var queryString: QueryString
    public var queryVersion: QueryVersion?

    public init(indexName: IndexName? = nil,
                maxResults: QueryMaxResults? = nil,
                nextToken: NextToken? = nil,
                queryString: QueryString,
                queryVersion: QueryVersion? = nil) {
        self.indexName = indexName
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.queryString = queryString
        self.queryVersion = queryVersion
    }

    enum CodingKeys: String, CodingKey {
        case indexName
        case maxResults
        case nextToken
        case queryString
        case queryVersion
    }

    public func validate() throws {
        try indexName?.validateAsIndexName()
        try maxResults?.validateAsQueryMaxResults()
        try queryString.validateAsQueryString()
    }
}

public struct SearchIndexResponse: Codable, Equatable {
    public var nextToken: NextToken?
    public var thingGroups: ThingGroupDocumentList?
    public var things: ThingDocumentList?

    public init(nextToken: NextToken? = nil,
                thingGroups: ThingGroupDocumentList? = nil,
                things: ThingDocumentList? = nil) {
        self.nextToken = nextToken
        self.thingGroups = thingGroups
        self.things = things
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case thingGroups
        case things
    }

    public func validate() throws {
    }
}

public struct SecurityProfileIdentifier: Codable, Equatable {
    public var arn: SecurityProfileArn
    public var name: SecurityProfileName

    public init(arn: SecurityProfileArn,
                name: SecurityProfileName) {
        self.arn = arn
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case arn
        case name
    }

    public func validate() throws {
        try name.validateAsSecurityProfileName()
    }
}

public struct SecurityProfileTarget: Codable, Equatable {
    public var arn: SecurityProfileTargetArn

    public init(arn: SecurityProfileTargetArn) {
        self.arn = arn
    }

    enum CodingKeys: String, CodingKey {
        case arn
    }

    public func validate() throws {
    }
}

public struct SecurityProfileTargetMapping: Codable, Equatable {
    public var securityProfileIdentifier: SecurityProfileIdentifier?
    public var target: SecurityProfileTarget?

    public init(securityProfileIdentifier: SecurityProfileIdentifier? = nil,
                target: SecurityProfileTarget? = nil) {
        self.securityProfileIdentifier = securityProfileIdentifier
        self.target = target
    }

    enum CodingKeys: String, CodingKey {
        case securityProfileIdentifier
        case target
    }

    public func validate() throws {
        try securityProfileIdentifier?.validate()
        try target?.validate()
    }
}

public struct ServiceUnavailableException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct SetDefaultAuthorizerRequest: Codable, Equatable {
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

public struct SetDefaultAuthorizerResponse: Codable, Equatable {
    public var authorizerArn: AuthorizerArn?
    public var authorizerName: AuthorizerName?

    public init(authorizerArn: AuthorizerArn? = nil,
                authorizerName: AuthorizerName? = nil) {
        self.authorizerArn = authorizerArn
        self.authorizerName = authorizerName
    }

    enum CodingKeys: String, CodingKey {
        case authorizerArn
        case authorizerName
    }

    public func validate() throws {
        try authorizerName?.validateAsAuthorizerName()
    }
}

public struct SetDefaultPolicyVersionRequest: Codable, Equatable {
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

public struct SetLoggingOptionsRequest: Codable, Equatable {
    public var loggingOptionsPayload: LoggingOptionsPayload

    public init(loggingOptionsPayload: LoggingOptionsPayload) {
        self.loggingOptionsPayload = loggingOptionsPayload
    }

    enum CodingKeys: String, CodingKey {
        case loggingOptionsPayload
    }

    public func validate() throws {
        try loggingOptionsPayload.validate()
    }
}

public struct SetV2LoggingLevelRequest: Codable, Equatable {
    public var logLevel: LogLevel
    public var logTarget: LogTarget

    public init(logLevel: LogLevel,
                logTarget: LogTarget) {
        self.logLevel = logLevel
        self.logTarget = logTarget
    }

    enum CodingKeys: String, CodingKey {
        case logLevel
        case logTarget
    }

    public func validate() throws {
        try logTarget.validate()
    }
}

public struct SetV2LoggingOptionsRequest: Codable, Equatable {
    public var defaultLogLevel: LogLevel?
    public var disableAllLogs: DisableAllLogs?
    public var roleArn: AwsArn?

    public init(defaultLogLevel: LogLevel? = nil,
                disableAllLogs: DisableAllLogs? = nil,
                roleArn: AwsArn? = nil) {
        self.defaultLogLevel = defaultLogLevel
        self.disableAllLogs = disableAllLogs
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case defaultLogLevel
        case disableAllLogs
        case roleArn
    }

    public func validate() throws {
    }
}

public struct SigningProfileParameter: Codable, Equatable {
    public var certificateArn: CertificateArn?
    public var certificatePathOnDevice: CertificatePathOnDevice?
    public var platform: Platform?

    public init(certificateArn: CertificateArn? = nil,
                certificatePathOnDevice: CertificatePathOnDevice? = nil,
                platform: Platform? = nil) {
        self.certificateArn = certificateArn
        self.certificatePathOnDevice = certificatePathOnDevice
        self.platform = platform
    }

    enum CodingKeys: String, CodingKey {
        case certificateArn
        case certificatePathOnDevice
        case platform
    }

    public func validate() throws {
    }
}

public struct SnsAction: Codable, Equatable {
    public var messageFormat: MessageFormat?
    public var roleArn: AwsArn
    public var targetArn: AwsArn

    public init(messageFormat: MessageFormat? = nil,
                roleArn: AwsArn,
                targetArn: AwsArn) {
        self.messageFormat = messageFormat
        self.roleArn = roleArn
        self.targetArn = targetArn
    }

    enum CodingKeys: String, CodingKey {
        case messageFormat
        case roleArn
        case targetArn
    }

    public func validate() throws {
    }
}

public struct SqlParseException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct SqsAction: Codable, Equatable {
    public var queueUrl: QueueUrl
    public var roleArn: AwsArn
    public var useBase64: UseBase64?

    public init(queueUrl: QueueUrl,
                roleArn: AwsArn,
                useBase64: UseBase64? = nil) {
        self.queueUrl = queueUrl
        self.roleArn = roleArn
        self.useBase64 = useBase64
    }

    enum CodingKeys: String, CodingKey {
        case queueUrl
        case roleArn
        case useBase64
    }

    public func validate() throws {
    }
}

public struct StartAuditMitigationActionsTaskRequest: Codable, Equatable {
    public var auditCheckToActionsMapping: AuditCheckToActionsMapping
    public var clientRequestToken: ClientRequestToken
    public var target: AuditMitigationActionsTaskTarget
    public var taskId: AuditMitigationActionsTaskId

    public init(auditCheckToActionsMapping: AuditCheckToActionsMapping,
                clientRequestToken: ClientRequestToken,
                target: AuditMitigationActionsTaskTarget,
                taskId: AuditMitigationActionsTaskId) {
        self.auditCheckToActionsMapping = auditCheckToActionsMapping
        self.clientRequestToken = clientRequestToken
        self.target = target
        self.taskId = taskId
    }

    enum CodingKeys: String, CodingKey {
        case auditCheckToActionsMapping
        case clientRequestToken
        case target
        case taskId
    }

    public func validate() throws {
        try clientRequestToken.validateAsClientRequestToken()
        try target.validate()
        try taskId.validateAsAuditMitigationActionsTaskId()
    }
}

public struct StartAuditMitigationActionsTaskResponse: Codable, Equatable {
    public var taskId: AuditMitigationActionsTaskId?

    public init(taskId: AuditMitigationActionsTaskId? = nil) {
        self.taskId = taskId
    }

    enum CodingKeys: String, CodingKey {
        case taskId
    }

    public func validate() throws {
        try taskId?.validateAsAuditMitigationActionsTaskId()
    }
}

public struct StartOnDemandAuditTaskRequest: Codable, Equatable {
    public var targetCheckNames: TargetAuditCheckNames

    public init(targetCheckNames: TargetAuditCheckNames) {
        self.targetCheckNames = targetCheckNames
    }

    enum CodingKeys: String, CodingKey {
        case targetCheckNames
    }

    public func validate() throws {
    }
}

public struct StartOnDemandAuditTaskResponse: Codable, Equatable {
    public var taskId: AuditTaskId?

    public init(taskId: AuditTaskId? = nil) {
        self.taskId = taskId
    }

    enum CodingKeys: String, CodingKey {
        case taskId
    }

    public func validate() throws {
        try taskId?.validateAsAuditTaskId()
    }
}

public struct StartSigningJobParameter: Codable, Equatable {
    public var destination: Destination?
    public var signingProfileName: SigningProfileName?
    public var signingProfileParameter: SigningProfileParameter?

    public init(destination: Destination? = nil,
                signingProfileName: SigningProfileName? = nil,
                signingProfileParameter: SigningProfileParameter? = nil) {
        self.destination = destination
        self.signingProfileName = signingProfileName
        self.signingProfileParameter = signingProfileParameter
    }

    enum CodingKeys: String, CodingKey {
        case destination
        case signingProfileName
        case signingProfileParameter
    }

    public func validate() throws {
        try destination?.validate()
        try signingProfileParameter?.validate()
    }
}

public struct StartThingRegistrationTaskRequest: Codable, Equatable {
    public var inputFileBucket: RegistryS3BucketName
    public var inputFileKey: RegistryS3KeyName
    public var roleArn: RoleArn
    public var templateBody: TemplateBody

    public init(inputFileBucket: RegistryS3BucketName,
                inputFileKey: RegistryS3KeyName,
                roleArn: RoleArn,
                templateBody: TemplateBody) {
        self.inputFileBucket = inputFileBucket
        self.inputFileKey = inputFileKey
        self.roleArn = roleArn
        self.templateBody = templateBody
    }

    enum CodingKeys: String, CodingKey {
        case inputFileBucket
        case inputFileKey
        case roleArn
        case templateBody
    }

    public func validate() throws {
        try inputFileBucket.validateAsRegistryS3BucketName()
        try inputFileKey.validateAsRegistryS3KeyName()
        try roleArn.validateAsRoleArn()
    }
}

public struct StartThingRegistrationTaskResponse: Codable, Equatable {
    public var taskId: TaskId?

    public init(taskId: TaskId? = nil) {
        self.taskId = taskId
    }

    enum CodingKeys: String, CodingKey {
        case taskId
    }

    public func validate() throws {
        try taskId?.validateAsTaskId()
    }
}

public struct StatisticalThreshold: Codable, Equatable {
    public var statistic: EvaluationStatistic?

    public init(statistic: EvaluationStatistic? = nil) {
        self.statistic = statistic
    }

    enum CodingKeys: String, CodingKey {
        case statistic
    }

    public func validate() throws {
        try statistic?.validateAsEvaluationStatistic()
    }
}

public struct Statistics: Codable, Equatable {
    public var count: Count?

    public init(count: Count? = nil) {
        self.count = count
    }

    enum CodingKeys: String, CodingKey {
        case count
    }

    public func validate() throws {
    }
}

public struct StepFunctionsAction: Codable, Equatable {
    public var executionNamePrefix: ExecutionNamePrefix?
    public var roleArn: AwsArn
    public var stateMachineName: StateMachineName

    public init(executionNamePrefix: ExecutionNamePrefix? = nil,
                roleArn: AwsArn,
                stateMachineName: StateMachineName) {
        self.executionNamePrefix = executionNamePrefix
        self.roleArn = roleArn
        self.stateMachineName = stateMachineName
    }

    enum CodingKeys: String, CodingKey {
        case executionNamePrefix
        case roleArn
        case stateMachineName
    }

    public func validate() throws {
    }
}

public struct StopThingRegistrationTaskRequest: Codable, Equatable {
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

public struct StopThingRegistrationTaskResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct Stream: Codable, Equatable {
    public var fileId: FileId?
    public var streamId: StreamId?

    public init(fileId: FileId? = nil,
                streamId: StreamId? = nil) {
        self.fileId = fileId
        self.streamId = streamId
    }

    enum CodingKeys: String, CodingKey {
        case fileId
        case streamId
    }

    public func validate() throws {
        try fileId?.validateAsFileId()
        try streamId?.validateAsStreamId()
    }
}

public struct StreamFile: Codable, Equatable {
    public var fileId: FileId?
    public var s3Location: S3Location?

    public init(fileId: FileId? = nil,
                s3Location: S3Location? = nil) {
        self.fileId = fileId
        self.s3Location = s3Location
    }

    enum CodingKeys: String, CodingKey {
        case fileId
        case s3Location
    }

    public func validate() throws {
        try fileId?.validateAsFileId()
        try s3Location?.validate()
    }
}

public struct StreamInfo: Codable, Equatable {
    public var createdAt: DateType?
    public var description: StreamDescription?
    public var files: StreamFiles?
    public var lastUpdatedAt: DateType?
    public var roleArn: RoleArn?
    public var streamArn: StreamArn?
    public var streamId: StreamId?
    public var streamVersion: StreamVersion?

    public init(createdAt: DateType? = nil,
                description: StreamDescription? = nil,
                files: StreamFiles? = nil,
                lastUpdatedAt: DateType? = nil,
                roleArn: RoleArn? = nil,
                streamArn: StreamArn? = nil,
                streamId: StreamId? = nil,
                streamVersion: StreamVersion? = nil) {
        self.createdAt = createdAt
        self.description = description
        self.files = files
        self.lastUpdatedAt = lastUpdatedAt
        self.roleArn = roleArn
        self.streamArn = streamArn
        self.streamId = streamId
        self.streamVersion = streamVersion
    }

    enum CodingKeys: String, CodingKey {
        case createdAt
        case description
        case files
        case lastUpdatedAt
        case roleArn
        case streamArn
        case streamId
        case streamVersion
    }

    public func validate() throws {
        try description?.validateAsStreamDescription()
        try files?.validateAsStreamFiles()
        try roleArn?.validateAsRoleArn()
        try streamId?.validateAsStreamId()
        try streamVersion?.validateAsStreamVersion()
    }
}

public struct StreamSummary: Codable, Equatable {
    public var description: StreamDescription?
    public var streamArn: StreamArn?
    public var streamId: StreamId?
    public var streamVersion: StreamVersion?

    public init(description: StreamDescription? = nil,
                streamArn: StreamArn? = nil,
                streamId: StreamId? = nil,
                streamVersion: StreamVersion? = nil) {
        self.description = description
        self.streamArn = streamArn
        self.streamId = streamId
        self.streamVersion = streamVersion
    }

    enum CodingKeys: String, CodingKey {
        case description
        case streamArn
        case streamId
        case streamVersion
    }

    public func validate() throws {
        try description?.validateAsStreamDescription()
        try streamId?.validateAsStreamId()
        try streamVersion?.validateAsStreamVersion()
    }
}

public struct Tag: Codable, Equatable {
    public var key: TagKey?
    public var value: TagValue?

    public init(key: TagKey? = nil,
                value: TagValue? = nil) {
        self.key = key
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case key = "Key"
        case value = "Value"
    }

    public func validate() throws {
    }
}

public struct TagResourceRequest: Codable, Equatable {
    public var resourceArn: ResourceArn2
    public var tags: TagList

    public init(resourceArn: ResourceArn2,
                tags: TagList) {
        self.resourceArn = resourceArn
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn
        case tags
    }

    public func validate() throws {
    }
}

public struct TagResourceResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct TaskAlreadyExistsException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct TaskStatistics: Codable, Equatable {
    public var canceledChecks: CanceledChecksCount?
    public var compliantChecks: CompliantChecksCount?
    public var failedChecks: FailedChecksCount?
    public var inProgressChecks: InProgressChecksCount?
    public var nonCompliantChecks: NonCompliantChecksCount?
    public var totalChecks: TotalChecksCount?
    public var waitingForDataCollectionChecks: WaitingForDataCollectionChecksCount?

    public init(canceledChecks: CanceledChecksCount? = nil,
                compliantChecks: CompliantChecksCount? = nil,
                failedChecks: FailedChecksCount? = nil,
                inProgressChecks: InProgressChecksCount? = nil,
                nonCompliantChecks: NonCompliantChecksCount? = nil,
                totalChecks: TotalChecksCount? = nil,
                waitingForDataCollectionChecks: WaitingForDataCollectionChecksCount? = nil) {
        self.canceledChecks = canceledChecks
        self.compliantChecks = compliantChecks
        self.failedChecks = failedChecks
        self.inProgressChecks = inProgressChecks
        self.nonCompliantChecks = nonCompliantChecks
        self.totalChecks = totalChecks
        self.waitingForDataCollectionChecks = waitingForDataCollectionChecks
    }

    enum CodingKeys: String, CodingKey {
        case canceledChecks
        case compliantChecks
        case failedChecks
        case inProgressChecks
        case nonCompliantChecks
        case totalChecks
        case waitingForDataCollectionChecks
    }

    public func validate() throws {
    }
}

public struct TaskStatisticsForAuditCheck: Codable, Equatable {
    public var canceledFindingsCount: CanceledFindingsCount?
    public var failedFindingsCount: FailedFindingsCount?
    public var skippedFindingsCount: SkippedFindingsCount?
    public var succeededFindingsCount: SucceededFindingsCount?
    public var totalFindingsCount: TotalFindingsCount?

    public init(canceledFindingsCount: CanceledFindingsCount? = nil,
                failedFindingsCount: FailedFindingsCount? = nil,
                skippedFindingsCount: SkippedFindingsCount? = nil,
                succeededFindingsCount: SucceededFindingsCount? = nil,
                totalFindingsCount: TotalFindingsCount? = nil) {
        self.canceledFindingsCount = canceledFindingsCount
        self.failedFindingsCount = failedFindingsCount
        self.skippedFindingsCount = skippedFindingsCount
        self.succeededFindingsCount = succeededFindingsCount
        self.totalFindingsCount = totalFindingsCount
    }

    enum CodingKeys: String, CodingKey {
        case canceledFindingsCount
        case failedFindingsCount
        case skippedFindingsCount
        case succeededFindingsCount
        case totalFindingsCount
    }

    public func validate() throws {
    }
}

public struct TestAuthorizationRequest: Codable, Equatable {
    public var authInfos: AuthInfos
    public var clientId: ClientId?
    public var cognitoIdentityPoolId: CognitoIdentityPoolId?
    public var policyNamesToAdd: PolicyNames?
    public var policyNamesToSkip: PolicyNames?
    public var principal: Principal?

    public init(authInfos: AuthInfos,
                clientId: ClientId? = nil,
                cognitoIdentityPoolId: CognitoIdentityPoolId? = nil,
                policyNamesToAdd: PolicyNames? = nil,
                policyNamesToSkip: PolicyNames? = nil,
                principal: Principal? = nil) {
        self.authInfos = authInfos
        self.clientId = clientId
        self.cognitoIdentityPoolId = cognitoIdentityPoolId
        self.policyNamesToAdd = policyNamesToAdd
        self.policyNamesToSkip = policyNamesToSkip
        self.principal = principal
    }

    enum CodingKeys: String, CodingKey {
        case authInfos
        case clientId
        case cognitoIdentityPoolId
        case policyNamesToAdd
        case policyNamesToSkip
        case principal
    }

    public func validate() throws {
        try authInfos.validateAsAuthInfos()
    }
}

public struct TestAuthorizationResponse: Codable, Equatable {
    public var authResults: AuthResults?

    public init(authResults: AuthResults? = nil) {
        self.authResults = authResults
    }

    enum CodingKeys: String, CodingKey {
        case authResults
    }

    public func validate() throws {
    }
}

public struct TestInvokeAuthorizerRequest: Codable, Equatable {
    public var authorizerName: AuthorizerName
    public var token: Token
    public var tokenSignature: TokenSignature

    public init(authorizerName: AuthorizerName,
                token: Token,
                tokenSignature: TokenSignature) {
        self.authorizerName = authorizerName
        self.token = token
        self.tokenSignature = tokenSignature
    }

    enum CodingKeys: String, CodingKey {
        case authorizerName
        case token
        case tokenSignature
    }

    public func validate() throws {
        try authorizerName.validateAsAuthorizerName()
        try token.validateAsToken()
        try tokenSignature.validateAsTokenSignature()
    }
}

public struct TestInvokeAuthorizerResponse: Codable, Equatable {
    public var disconnectAfterInSeconds: Seconds?
    public var isAuthenticated: IsAuthenticated?
    public var policyDocuments: PolicyDocuments?
    public var principalId: PrincipalId?
    public var refreshAfterInSeconds: Seconds?

    public init(disconnectAfterInSeconds: Seconds? = nil,
                isAuthenticated: IsAuthenticated? = nil,
                policyDocuments: PolicyDocuments? = nil,
                principalId: PrincipalId? = nil,
                refreshAfterInSeconds: Seconds? = nil) {
        self.disconnectAfterInSeconds = disconnectAfterInSeconds
        self.isAuthenticated = isAuthenticated
        self.policyDocuments = policyDocuments
        self.principalId = principalId
        self.refreshAfterInSeconds = refreshAfterInSeconds
    }

    enum CodingKeys: String, CodingKey {
        case disconnectAfterInSeconds
        case isAuthenticated
        case policyDocuments
        case principalId
        case refreshAfterInSeconds
    }

    public func validate() throws {
        try principalId?.validateAsPrincipalId()
    }
}

public struct ThingAttribute: Codable, Equatable {
    public var attributes: Attributes?
    public var thingArn: ThingArn?
    public var thingName: ThingName?
    public var thingTypeName: ThingTypeName?
    public var version: Version?

    public init(attributes: Attributes? = nil,
                thingArn: ThingArn? = nil,
                thingName: ThingName? = nil,
                thingTypeName: ThingTypeName? = nil,
                version: Version? = nil) {
        self.attributes = attributes
        self.thingArn = thingArn
        self.thingName = thingName
        self.thingTypeName = thingTypeName
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case attributes
        case thingArn
        case thingName
        case thingTypeName
        case version
    }

    public func validate() throws {
        try thingName?.validateAsThingName()
        try thingTypeName?.validateAsThingTypeName()
    }
}

public struct ThingConnectivity: Codable, Equatable {
    public var connected: Boolean?
    public var timestamp: ConnectivityTimestamp?

    public init(connected: Boolean? = nil,
                timestamp: ConnectivityTimestamp? = nil) {
        self.connected = connected
        self.timestamp = timestamp
    }

    enum CodingKeys: String, CodingKey {
        case connected
        case timestamp
    }

    public func validate() throws {
    }
}

public struct ThingDocument: Codable, Equatable {
    public var attributes: Attributes?
    public var connectivity: ThingConnectivity?
    public var shadow: JsonDocument?
    public var thingGroupNames: ThingGroupNameList?
    public var thingId: ThingId?
    public var thingName: ThingName?
    public var thingTypeName: ThingTypeName?

    public init(attributes: Attributes? = nil,
                connectivity: ThingConnectivity? = nil,
                shadow: JsonDocument? = nil,
                thingGroupNames: ThingGroupNameList? = nil,
                thingId: ThingId? = nil,
                thingName: ThingName? = nil,
                thingTypeName: ThingTypeName? = nil) {
        self.attributes = attributes
        self.connectivity = connectivity
        self.shadow = shadow
        self.thingGroupNames = thingGroupNames
        self.thingId = thingId
        self.thingName = thingName
        self.thingTypeName = thingTypeName
    }

    enum CodingKeys: String, CodingKey {
        case attributes
        case connectivity
        case shadow
        case thingGroupNames
        case thingId
        case thingName
        case thingTypeName
    }

    public func validate() throws {
        try connectivity?.validate()
        try thingName?.validateAsThingName()
        try thingTypeName?.validateAsThingTypeName()
    }
}

public struct ThingGroupDocument: Codable, Equatable {
    public var attributes: Attributes?
    public var parentGroupNames: ThingGroupNameList?
    public var thingGroupDescription: ThingGroupDescription?
    public var thingGroupId: ThingGroupId?
    public var thingGroupName: ThingGroupName?

    public init(attributes: Attributes? = nil,
                parentGroupNames: ThingGroupNameList? = nil,
                thingGroupDescription: ThingGroupDescription? = nil,
                thingGroupId: ThingGroupId? = nil,
                thingGroupName: ThingGroupName? = nil) {
        self.attributes = attributes
        self.parentGroupNames = parentGroupNames
        self.thingGroupDescription = thingGroupDescription
        self.thingGroupId = thingGroupId
        self.thingGroupName = thingGroupName
    }

    enum CodingKeys: String, CodingKey {
        case attributes
        case parentGroupNames
        case thingGroupDescription
        case thingGroupId
        case thingGroupName
    }

    public func validate() throws {
        try thingGroupDescription?.validateAsThingGroupDescription()
        try thingGroupId?.validateAsThingGroupId()
        try thingGroupName?.validateAsThingGroupName()
    }
}

public struct ThingGroupIndexingConfiguration: Codable, Equatable {
    public var thingGroupIndexingMode: ThingGroupIndexingMode

    public init(thingGroupIndexingMode: ThingGroupIndexingMode) {
        self.thingGroupIndexingMode = thingGroupIndexingMode
    }

    enum CodingKeys: String, CodingKey {
        case thingGroupIndexingMode
    }

    public func validate() throws {
    }
}

public struct ThingGroupMetadata: Codable, Equatable {
    public var creationDate: CreationDate?
    public var parentGroupName: ThingGroupName?
    public var rootToParentThingGroups: ThingGroupNameAndArnList?

    public init(creationDate: CreationDate? = nil,
                parentGroupName: ThingGroupName? = nil,
                rootToParentThingGroups: ThingGroupNameAndArnList? = nil) {
        self.creationDate = creationDate
        self.parentGroupName = parentGroupName
        self.rootToParentThingGroups = rootToParentThingGroups
    }

    enum CodingKeys: String, CodingKey {
        case creationDate
        case parentGroupName
        case rootToParentThingGroups
    }

    public func validate() throws {
        try parentGroupName?.validateAsThingGroupName()
    }
}

public struct ThingGroupProperties: Codable, Equatable {
    public var attributePayload: AttributePayload?
    public var thingGroupDescription: ThingGroupDescription?

    public init(attributePayload: AttributePayload? = nil,
                thingGroupDescription: ThingGroupDescription? = nil) {
        self.attributePayload = attributePayload
        self.thingGroupDescription = thingGroupDescription
    }

    enum CodingKeys: String, CodingKey {
        case attributePayload
        case thingGroupDescription
    }

    public func validate() throws {
        try attributePayload?.validate()
        try thingGroupDescription?.validateAsThingGroupDescription()
    }
}

public struct ThingIndexingConfiguration: Codable, Equatable {
    public var thingConnectivityIndexingMode: ThingConnectivityIndexingMode?
    public var thingIndexingMode: ThingIndexingMode

    public init(thingConnectivityIndexingMode: ThingConnectivityIndexingMode? = nil,
                thingIndexingMode: ThingIndexingMode) {
        self.thingConnectivityIndexingMode = thingConnectivityIndexingMode
        self.thingIndexingMode = thingIndexingMode
    }

    enum CodingKeys: String, CodingKey {
        case thingConnectivityIndexingMode
        case thingIndexingMode
    }

    public func validate() throws {
    }
}

public struct ThingTypeDefinition: Codable, Equatable {
    public var thingTypeArn: ThingTypeArn?
    public var thingTypeMetadata: ThingTypeMetadata?
    public var thingTypeName: ThingTypeName?
    public var thingTypeProperties: ThingTypeProperties?

    public init(thingTypeArn: ThingTypeArn? = nil,
                thingTypeMetadata: ThingTypeMetadata? = nil,
                thingTypeName: ThingTypeName? = nil,
                thingTypeProperties: ThingTypeProperties? = nil) {
        self.thingTypeArn = thingTypeArn
        self.thingTypeMetadata = thingTypeMetadata
        self.thingTypeName = thingTypeName
        self.thingTypeProperties = thingTypeProperties
    }

    enum CodingKeys: String, CodingKey {
        case thingTypeArn
        case thingTypeMetadata
        case thingTypeName
        case thingTypeProperties
    }

    public func validate() throws {
        try thingTypeMetadata?.validate()
        try thingTypeName?.validateAsThingTypeName()
        try thingTypeProperties?.validate()
    }
}

public struct ThingTypeMetadata: Codable, Equatable {
    public var creationDate: CreationDate?
    public var deprecated: Boolean?
    public var deprecationDate: DeprecationDate?

    public init(creationDate: CreationDate? = nil,
                deprecated: Boolean? = nil,
                deprecationDate: DeprecationDate? = nil) {
        self.creationDate = creationDate
        self.deprecated = deprecated
        self.deprecationDate = deprecationDate
    }

    enum CodingKeys: String, CodingKey {
        case creationDate
        case deprecated
        case deprecationDate
    }

    public func validate() throws {
    }
}

public struct ThingTypeProperties: Codable, Equatable {
    public var searchableAttributes: SearchableAttributes?
    public var thingTypeDescription: ThingTypeDescription?

    public init(searchableAttributes: SearchableAttributes? = nil,
                thingTypeDescription: ThingTypeDescription? = nil) {
        self.searchableAttributes = searchableAttributes
        self.thingTypeDescription = thingTypeDescription
    }

    enum CodingKeys: String, CodingKey {
        case searchableAttributes
        case thingTypeDescription
    }

    public func validate() throws {
        try thingTypeDescription?.validateAsThingTypeDescription()
    }
}

public struct ThrottlingException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct TimeoutConfig: Codable, Equatable {
    public var inProgressTimeoutInMinutes: InProgressTimeoutInMinutes?

    public init(inProgressTimeoutInMinutes: InProgressTimeoutInMinutes? = nil) {
        self.inProgressTimeoutInMinutes = inProgressTimeoutInMinutes
    }

    enum CodingKeys: String, CodingKey {
        case inProgressTimeoutInMinutes
    }

    public func validate() throws {
    }
}

public struct TopicRule: Codable, Equatable {
    public var actions: ActionList?
    public var awsIotSqlVersion: AwsIotSqlVersion?
    public var createdAt: CreatedAtDate?
    public var description: Description?
    public var errorAction: Action?
    public var ruleDisabled: IsDisabled?
    public var ruleName: RuleName?
    public var sql: SQL?

    public init(actions: ActionList? = nil,
                awsIotSqlVersion: AwsIotSqlVersion? = nil,
                createdAt: CreatedAtDate? = nil,
                description: Description? = nil,
                errorAction: Action? = nil,
                ruleDisabled: IsDisabled? = nil,
                ruleName: RuleName? = nil,
                sql: SQL? = nil) {
        self.actions = actions
        self.awsIotSqlVersion = awsIotSqlVersion
        self.createdAt = createdAt
        self.description = description
        self.errorAction = errorAction
        self.ruleDisabled = ruleDisabled
        self.ruleName = ruleName
        self.sql = sql
    }

    enum CodingKeys: String, CodingKey {
        case actions
        case awsIotSqlVersion
        case createdAt
        case description
        case errorAction
        case ruleDisabled
        case ruleName
        case sql
    }

    public func validate() throws {
        try actions?.validateAsActionList()
        try errorAction?.validate()
        try ruleName?.validateAsRuleName()
    }
}

public struct TopicRuleListItem: Codable, Equatable {
    public var createdAt: CreatedAtDate?
    public var ruleArn: RuleArn?
    public var ruleDisabled: IsDisabled?
    public var ruleName: RuleName?
    public var topicPattern: TopicPattern?

    public init(createdAt: CreatedAtDate? = nil,
                ruleArn: RuleArn? = nil,
                ruleDisabled: IsDisabled? = nil,
                ruleName: RuleName? = nil,
                topicPattern: TopicPattern? = nil) {
        self.createdAt = createdAt
        self.ruleArn = ruleArn
        self.ruleDisabled = ruleDisabled
        self.ruleName = ruleName
        self.topicPattern = topicPattern
    }

    enum CodingKeys: String, CodingKey {
        case createdAt
        case ruleArn
        case ruleDisabled
        case ruleName
        case topicPattern
    }

    public func validate() throws {
        try ruleName?.validateAsRuleName()
    }
}

public struct TopicRulePayload: Codable, Equatable {
    public var actions: ActionList
    public var awsIotSqlVersion: AwsIotSqlVersion?
    public var description: Description?
    public var errorAction: Action?
    public var ruleDisabled: IsDisabled?
    public var sql: SQL

    public init(actions: ActionList,
                awsIotSqlVersion: AwsIotSqlVersion? = nil,
                description: Description? = nil,
                errorAction: Action? = nil,
                ruleDisabled: IsDisabled? = nil,
                sql: SQL) {
        self.actions = actions
        self.awsIotSqlVersion = awsIotSqlVersion
        self.description = description
        self.errorAction = errorAction
        self.ruleDisabled = ruleDisabled
        self.sql = sql
    }

    enum CodingKeys: String, CodingKey {
        case actions
        case awsIotSqlVersion
        case description
        case errorAction
        case ruleDisabled
        case sql
    }

    public func validate() throws {
        try actions.validateAsActionList()
        try errorAction?.validate()
    }
}

public struct TransferAlreadyCompletedException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct TransferCertificateRequest: Codable, Equatable {
    public var certificateId: CertificateId
    public var targetAwsAccount: AwsAccountId
    public var transferMessage: Message?

    public init(certificateId: CertificateId,
                targetAwsAccount: AwsAccountId,
                transferMessage: Message? = nil) {
        self.certificateId = certificateId
        self.targetAwsAccount = targetAwsAccount
        self.transferMessage = transferMessage
    }

    enum CodingKeys: String, CodingKey {
        case certificateId
        case targetAwsAccount
        case transferMessage
    }

    public func validate() throws {
        try certificateId.validateAsCertificateId()
        try targetAwsAccount.validateAsAwsAccountId()
        try transferMessage?.validateAsMessage()
    }
}

public struct TransferCertificateResponse: Codable, Equatable {
    public var transferredCertificateArn: CertificateArn?

    public init(transferredCertificateArn: CertificateArn? = nil) {
        self.transferredCertificateArn = transferredCertificateArn
    }

    enum CodingKeys: String, CodingKey {
        case transferredCertificateArn
    }

    public func validate() throws {
    }
}

public struct TransferConflictException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct TransferData: Codable, Equatable {
    public var acceptDate: DateType?
    public var rejectDate: DateType?
    public var rejectReason: Message?
    public var transferDate: DateType?
    public var transferMessage: Message?

    public init(acceptDate: DateType? = nil,
                rejectDate: DateType? = nil,
                rejectReason: Message? = nil,
                transferDate: DateType? = nil,
                transferMessage: Message? = nil) {
        self.acceptDate = acceptDate
        self.rejectDate = rejectDate
        self.rejectReason = rejectReason
        self.transferDate = transferDate
        self.transferMessage = transferMessage
    }

    enum CodingKeys: String, CodingKey {
        case acceptDate
        case rejectDate
        case rejectReason
        case transferDate
        case transferMessage
    }

    public func validate() throws {
        try rejectReason?.validateAsMessage()
        try transferMessage?.validateAsMessage()
    }
}

public struct UnauthorizedException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct UntagResourceRequest: Codable, Equatable {
    public var resourceArn: ResourceArn2
    public var tagKeys: TagKeyList

    public init(resourceArn: ResourceArn2,
                tagKeys: TagKeyList) {
        self.resourceArn = resourceArn
        self.tagKeys = tagKeys
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn
        case tagKeys
    }

    public func validate() throws {
    }
}

public struct UntagResourceResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct UpdateAccountAuditConfigurationRequest: Codable, Equatable {
    public var auditCheckConfigurations: AuditCheckConfigurations?
    public var auditNotificationTargetConfigurations: AuditNotificationTargetConfigurations?
    public var roleArn: RoleArn?

    public init(auditCheckConfigurations: AuditCheckConfigurations? = nil,
                auditNotificationTargetConfigurations: AuditNotificationTargetConfigurations? = nil,
                roleArn: RoleArn? = nil) {
        self.auditCheckConfigurations = auditCheckConfigurations
        self.auditNotificationTargetConfigurations = auditNotificationTargetConfigurations
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case auditCheckConfigurations
        case auditNotificationTargetConfigurations
        case roleArn
    }

    public func validate() throws {
        try roleArn?.validateAsRoleArn()
    }
}

public struct UpdateAccountAuditConfigurationResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct UpdateAuthorizerRequest: Codable, Equatable {
    public var authorizerFunctionArn: AuthorizerFunctionArn?
    public var authorizerName: AuthorizerName
    public var status: AuthorizerStatus?
    public var tokenKeyName: TokenKeyName?
    public var tokenSigningPublicKeys: PublicKeyMap?

    public init(authorizerFunctionArn: AuthorizerFunctionArn? = nil,
                authorizerName: AuthorizerName,
                status: AuthorizerStatus? = nil,
                tokenKeyName: TokenKeyName? = nil,
                tokenSigningPublicKeys: PublicKeyMap? = nil) {
        self.authorizerFunctionArn = authorizerFunctionArn
        self.authorizerName = authorizerName
        self.status = status
        self.tokenKeyName = tokenKeyName
        self.tokenSigningPublicKeys = tokenSigningPublicKeys
    }

    enum CodingKeys: String, CodingKey {
        case authorizerFunctionArn
        case authorizerName
        case status
        case tokenKeyName
        case tokenSigningPublicKeys
    }

    public func validate() throws {
        try authorizerName.validateAsAuthorizerName()
        try tokenKeyName?.validateAsTokenKeyName()
    }
}

public struct UpdateAuthorizerResponse: Codable, Equatable {
    public var authorizerArn: AuthorizerArn?
    public var authorizerName: AuthorizerName?

    public init(authorizerArn: AuthorizerArn? = nil,
                authorizerName: AuthorizerName? = nil) {
        self.authorizerArn = authorizerArn
        self.authorizerName = authorizerName
    }

    enum CodingKeys: String, CodingKey {
        case authorizerArn
        case authorizerName
    }

    public func validate() throws {
        try authorizerName?.validateAsAuthorizerName()
    }
}

public struct UpdateBillingGroupRequest: Codable, Equatable {
    public var billingGroupName: BillingGroupName
    public var billingGroupProperties: BillingGroupProperties
    public var expectedVersion: OptionalVersion?

    public init(billingGroupName: BillingGroupName,
                billingGroupProperties: BillingGroupProperties,
                expectedVersion: OptionalVersion? = nil) {
        self.billingGroupName = billingGroupName
        self.billingGroupProperties = billingGroupProperties
        self.expectedVersion = expectedVersion
    }

    enum CodingKeys: String, CodingKey {
        case billingGroupName
        case billingGroupProperties
        case expectedVersion
    }

    public func validate() throws {
        try billingGroupName.validateAsBillingGroupName()
        try billingGroupProperties.validate()
    }
}

public struct UpdateBillingGroupResponse: Codable, Equatable {
    public var version: Version?

    public init(version: Version? = nil) {
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case version
    }

    public func validate() throws {
    }
}

public struct UpdateCACertificateParams: Codable, Equatable {
    public var action: CACertificateUpdateAction

    public init(action: CACertificateUpdateAction) {
        self.action = action
    }

    enum CodingKeys: String, CodingKey {
        case action
    }

    public func validate() throws {
    }
}

public struct UpdateCACertificateRequest: Codable, Equatable {
    public var certificateId: CertificateId
    public var newAutoRegistrationStatus: AutoRegistrationStatus?
    public var newStatus: CACertificateStatus?
    public var registrationConfig: RegistrationConfig?
    public var removeAutoRegistration: RemoveAutoRegistration?

    public init(certificateId: CertificateId,
                newAutoRegistrationStatus: AutoRegistrationStatus? = nil,
                newStatus: CACertificateStatus? = nil,
                registrationConfig: RegistrationConfig? = nil,
                removeAutoRegistration: RemoveAutoRegistration? = nil) {
        self.certificateId = certificateId
        self.newAutoRegistrationStatus = newAutoRegistrationStatus
        self.newStatus = newStatus
        self.registrationConfig = registrationConfig
        self.removeAutoRegistration = removeAutoRegistration
    }

    enum CodingKeys: String, CodingKey {
        case certificateId = "caCertificateId"
        case newAutoRegistrationStatus
        case newStatus
        case registrationConfig
        case removeAutoRegistration
    }

    public func validate() throws {
        try certificateId.validateAsCertificateId()
        try registrationConfig?.validate()
    }
}

public struct UpdateCertificateRequest: Codable, Equatable {
    public var certificateId: CertificateId
    public var newStatus: CertificateStatus

    public init(certificateId: CertificateId,
                newStatus: CertificateStatus) {
        self.certificateId = certificateId
        self.newStatus = newStatus
    }

    enum CodingKeys: String, CodingKey {
        case certificateId
        case newStatus
    }

    public func validate() throws {
        try certificateId.validateAsCertificateId()
    }
}

public struct UpdateDeviceCertificateParams: Codable, Equatable {
    public var action: DeviceCertificateUpdateAction

    public init(action: DeviceCertificateUpdateAction) {
        self.action = action
    }

    enum CodingKeys: String, CodingKey {
        case action
    }

    public func validate() throws {
    }
}

public struct UpdateDynamicThingGroupRequest: Codable, Equatable {
    public var expectedVersion: OptionalVersion?
    public var indexName: IndexName?
    public var queryString: QueryString?
    public var queryVersion: QueryVersion?
    public var thingGroupName: ThingGroupName
    public var thingGroupProperties: ThingGroupProperties

    public init(expectedVersion: OptionalVersion? = nil,
                indexName: IndexName? = nil,
                queryString: QueryString? = nil,
                queryVersion: QueryVersion? = nil,
                thingGroupName: ThingGroupName,
                thingGroupProperties: ThingGroupProperties) {
        self.expectedVersion = expectedVersion
        self.indexName = indexName
        self.queryString = queryString
        self.queryVersion = queryVersion
        self.thingGroupName = thingGroupName
        self.thingGroupProperties = thingGroupProperties
    }

    enum CodingKeys: String, CodingKey {
        case expectedVersion
        case indexName
        case queryString
        case queryVersion
        case thingGroupName
        case thingGroupProperties
    }

    public func validate() throws {
        try indexName?.validateAsIndexName()
        try queryString?.validateAsQueryString()
        try thingGroupName.validateAsThingGroupName()
        try thingGroupProperties.validate()
    }
}

public struct UpdateDynamicThingGroupResponse: Codable, Equatable {
    public var version: Version?

    public init(version: Version? = nil) {
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case version
    }

    public func validate() throws {
    }
}

public struct UpdateEventConfigurationsRequest: Codable, Equatable {
    public var eventConfigurations: EventConfigurations?

    public init(eventConfigurations: EventConfigurations? = nil) {
        self.eventConfigurations = eventConfigurations
    }

    enum CodingKeys: String, CodingKey {
        case eventConfigurations
    }

    public func validate() throws {
    }
}

public struct UpdateEventConfigurationsResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct UpdateIndexingConfigurationRequest: Codable, Equatable {
    public var thingGroupIndexingConfiguration: ThingGroupIndexingConfiguration?
    public var thingIndexingConfiguration: ThingIndexingConfiguration?

    public init(thingGroupIndexingConfiguration: ThingGroupIndexingConfiguration? = nil,
                thingIndexingConfiguration: ThingIndexingConfiguration? = nil) {
        self.thingGroupIndexingConfiguration = thingGroupIndexingConfiguration
        self.thingIndexingConfiguration = thingIndexingConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case thingGroupIndexingConfiguration
        case thingIndexingConfiguration
    }

    public func validate() throws {
        try thingGroupIndexingConfiguration?.validate()
        try thingIndexingConfiguration?.validate()
    }
}

public struct UpdateIndexingConfigurationResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct UpdateJobRequest: Codable, Equatable {
    public var abortConfig: AbortConfig?
    public var description: JobDescription?
    public var jobExecutionsRolloutConfig: JobExecutionsRolloutConfig?
    public var jobId: JobId
    public var presignedUrlConfig: PresignedUrlConfig?
    public var timeoutConfig: TimeoutConfig?

    public init(abortConfig: AbortConfig? = nil,
                description: JobDescription? = nil,
                jobExecutionsRolloutConfig: JobExecutionsRolloutConfig? = nil,
                jobId: JobId,
                presignedUrlConfig: PresignedUrlConfig? = nil,
                timeoutConfig: TimeoutConfig? = nil) {
        self.abortConfig = abortConfig
        self.description = description
        self.jobExecutionsRolloutConfig = jobExecutionsRolloutConfig
        self.jobId = jobId
        self.presignedUrlConfig = presignedUrlConfig
        self.timeoutConfig = timeoutConfig
    }

    enum CodingKeys: String, CodingKey {
        case abortConfig
        case description
        case jobExecutionsRolloutConfig
        case jobId
        case presignedUrlConfig
        case timeoutConfig
    }

    public func validate() throws {
        try abortConfig?.validate()
        try description?.validateAsJobDescription()
        try jobExecutionsRolloutConfig?.validate()
        try jobId.validateAsJobId()
        try presignedUrlConfig?.validate()
        try timeoutConfig?.validate()
    }
}

public struct UpdateMitigationActionRequest: Codable, Equatable {
    public var actionName: MitigationActionName
    public var actionParams: MitigationActionParams?
    public var roleArn: RoleArn?

    public init(actionName: MitigationActionName,
                actionParams: MitigationActionParams? = nil,
                roleArn: RoleArn? = nil) {
        self.actionName = actionName
        self.actionParams = actionParams
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case actionName
        case actionParams
        case roleArn
    }

    public func validate() throws {
        try actionName.validateAsMitigationActionName()
        try actionParams?.validate()
        try roleArn?.validateAsRoleArn()
    }
}

public struct UpdateMitigationActionResponse: Codable, Equatable {
    public var actionArn: MitigationActionArn?
    public var actionId: MitigationActionId?

    public init(actionArn: MitigationActionArn? = nil,
                actionId: MitigationActionId? = nil) {
        self.actionArn = actionArn
        self.actionId = actionId
    }

    enum CodingKeys: String, CodingKey {
        case actionArn
        case actionId
    }

    public func validate() throws {
    }
}

public struct UpdateRoleAliasRequest: Codable, Equatable {
    public var credentialDurationSeconds: CredentialDurationSeconds?
    public var roleAlias: RoleAlias
    public var roleArn: RoleArn?

    public init(credentialDurationSeconds: CredentialDurationSeconds? = nil,
                roleAlias: RoleAlias,
                roleArn: RoleArn? = nil) {
        self.credentialDurationSeconds = credentialDurationSeconds
        self.roleAlias = roleAlias
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case credentialDurationSeconds
        case roleAlias
        case roleArn
    }

    public func validate() throws {
        try credentialDurationSeconds?.validateAsCredentialDurationSeconds()
        try roleAlias.validateAsRoleAlias()
        try roleArn?.validateAsRoleArn()
    }
}

public struct UpdateRoleAliasResponse: Codable, Equatable {
    public var roleAlias: RoleAlias?
    public var roleAliasArn: RoleAliasArn?

    public init(roleAlias: RoleAlias? = nil,
                roleAliasArn: RoleAliasArn? = nil) {
        self.roleAlias = roleAlias
        self.roleAliasArn = roleAliasArn
    }

    enum CodingKeys: String, CodingKey {
        case roleAlias
        case roleAliasArn
    }

    public func validate() throws {
        try roleAlias?.validateAsRoleAlias()
    }
}

public struct UpdateScheduledAuditRequest: Codable, Equatable {
    public var dayOfMonth: DayOfMonth?
    public var dayOfWeek: DayOfWeek?
    public var frequency: AuditFrequency?
    public var scheduledAuditName: ScheduledAuditName
    public var targetCheckNames: TargetAuditCheckNames?

    public init(dayOfMonth: DayOfMonth? = nil,
                dayOfWeek: DayOfWeek? = nil,
                frequency: AuditFrequency? = nil,
                scheduledAuditName: ScheduledAuditName,
                targetCheckNames: TargetAuditCheckNames? = nil) {
        self.dayOfMonth = dayOfMonth
        self.dayOfWeek = dayOfWeek
        self.frequency = frequency
        self.scheduledAuditName = scheduledAuditName
        self.targetCheckNames = targetCheckNames
    }

    enum CodingKeys: String, CodingKey {
        case dayOfMonth
        case dayOfWeek
        case frequency
        case scheduledAuditName
        case targetCheckNames
    }

    public func validate() throws {
        try dayOfMonth?.validateAsDayOfMonth()
        try scheduledAuditName.validateAsScheduledAuditName()
    }
}

public struct UpdateScheduledAuditResponse: Codable, Equatable {
    public var scheduledAuditArn: ScheduledAuditArn?

    public init(scheduledAuditArn: ScheduledAuditArn? = nil) {
        self.scheduledAuditArn = scheduledAuditArn
    }

    enum CodingKeys: String, CodingKey {
        case scheduledAuditArn
    }

    public func validate() throws {
    }
}

public struct UpdateSecurityProfileRequest: Codable, Equatable {
    public var additionalMetricsToRetain: AdditionalMetricsToRetainList?
    public var alertTargets: AlertTargets?
    public var behaviors: Behaviors?
    public var deleteAdditionalMetricsToRetain: DeleteAdditionalMetricsToRetain?
    public var deleteAlertTargets: DeleteAlertTargets?
    public var deleteBehaviors: DeleteBehaviors?
    public var expectedVersion: OptionalVersion?
    public var securityProfileDescription: SecurityProfileDescription?
    public var securityProfileName: SecurityProfileName

    public init(additionalMetricsToRetain: AdditionalMetricsToRetainList? = nil,
                alertTargets: AlertTargets? = nil,
                behaviors: Behaviors? = nil,
                deleteAdditionalMetricsToRetain: DeleteAdditionalMetricsToRetain? = nil,
                deleteAlertTargets: DeleteAlertTargets? = nil,
                deleteBehaviors: DeleteBehaviors? = nil,
                expectedVersion: OptionalVersion? = nil,
                securityProfileDescription: SecurityProfileDescription? = nil,
                securityProfileName: SecurityProfileName) {
        self.additionalMetricsToRetain = additionalMetricsToRetain
        self.alertTargets = alertTargets
        self.behaviors = behaviors
        self.deleteAdditionalMetricsToRetain = deleteAdditionalMetricsToRetain
        self.deleteAlertTargets = deleteAlertTargets
        self.deleteBehaviors = deleteBehaviors
        self.expectedVersion = expectedVersion
        self.securityProfileDescription = securityProfileDescription
        self.securityProfileName = securityProfileName
    }

    enum CodingKeys: String, CodingKey {
        case additionalMetricsToRetain
        case alertTargets
        case behaviors
        case deleteAdditionalMetricsToRetain
        case deleteAlertTargets
        case deleteBehaviors
        case expectedVersion
        case securityProfileDescription
        case securityProfileName
    }

    public func validate() throws {
        try behaviors?.validateAsBehaviors()
        try securityProfileDescription?.validateAsSecurityProfileDescription()
        try securityProfileName.validateAsSecurityProfileName()
    }
}

public struct UpdateSecurityProfileResponse: Codable, Equatable {
    public var additionalMetricsToRetain: AdditionalMetricsToRetainList?
    public var alertTargets: AlertTargets?
    public var behaviors: Behaviors?
    public var creationDate: Timestamp?
    public var lastModifiedDate: Timestamp?
    public var securityProfileArn: SecurityProfileArn?
    public var securityProfileDescription: SecurityProfileDescription?
    public var securityProfileName: SecurityProfileName?
    public var version: Version?

    public init(additionalMetricsToRetain: AdditionalMetricsToRetainList? = nil,
                alertTargets: AlertTargets? = nil,
                behaviors: Behaviors? = nil,
                creationDate: Timestamp? = nil,
                lastModifiedDate: Timestamp? = nil,
                securityProfileArn: SecurityProfileArn? = nil,
                securityProfileDescription: SecurityProfileDescription? = nil,
                securityProfileName: SecurityProfileName? = nil,
                version: Version? = nil) {
        self.additionalMetricsToRetain = additionalMetricsToRetain
        self.alertTargets = alertTargets
        self.behaviors = behaviors
        self.creationDate = creationDate
        self.lastModifiedDate = lastModifiedDate
        self.securityProfileArn = securityProfileArn
        self.securityProfileDescription = securityProfileDescription
        self.securityProfileName = securityProfileName
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case additionalMetricsToRetain
        case alertTargets
        case behaviors
        case creationDate
        case lastModifiedDate
        case securityProfileArn
        case securityProfileDescription
        case securityProfileName
        case version
    }

    public func validate() throws {
        try behaviors?.validateAsBehaviors()
        try securityProfileDescription?.validateAsSecurityProfileDescription()
        try securityProfileName?.validateAsSecurityProfileName()
    }
}

public struct UpdateStreamRequest: Codable, Equatable {
    public var description: StreamDescription?
    public var files: StreamFiles?
    public var roleArn: RoleArn?
    public var streamId: StreamId

    public init(description: StreamDescription? = nil,
                files: StreamFiles? = nil,
                roleArn: RoleArn? = nil,
                streamId: StreamId) {
        self.description = description
        self.files = files
        self.roleArn = roleArn
        self.streamId = streamId
    }

    enum CodingKeys: String, CodingKey {
        case description
        case files
        case roleArn
        case streamId
    }

    public func validate() throws {
        try description?.validateAsStreamDescription()
        try files?.validateAsStreamFiles()
        try roleArn?.validateAsRoleArn()
        try streamId.validateAsStreamId()
    }
}

public struct UpdateStreamResponse: Codable, Equatable {
    public var description: StreamDescription?
    public var streamArn: StreamArn?
    public var streamId: StreamId?
    public var streamVersion: StreamVersion?

    public init(description: StreamDescription? = nil,
                streamArn: StreamArn? = nil,
                streamId: StreamId? = nil,
                streamVersion: StreamVersion? = nil) {
        self.description = description
        self.streamArn = streamArn
        self.streamId = streamId
        self.streamVersion = streamVersion
    }

    enum CodingKeys: String, CodingKey {
        case description
        case streamArn
        case streamId
        case streamVersion
    }

    public func validate() throws {
        try description?.validateAsStreamDescription()
        try streamId?.validateAsStreamId()
        try streamVersion?.validateAsStreamVersion()
    }
}

public struct UpdateThingGroupRequest: Codable, Equatable {
    public var expectedVersion: OptionalVersion?
    public var thingGroupName: ThingGroupName
    public var thingGroupProperties: ThingGroupProperties

    public init(expectedVersion: OptionalVersion? = nil,
                thingGroupName: ThingGroupName,
                thingGroupProperties: ThingGroupProperties) {
        self.expectedVersion = expectedVersion
        self.thingGroupName = thingGroupName
        self.thingGroupProperties = thingGroupProperties
    }

    enum CodingKeys: String, CodingKey {
        case expectedVersion
        case thingGroupName
        case thingGroupProperties
    }

    public func validate() throws {
        try thingGroupName.validateAsThingGroupName()
        try thingGroupProperties.validate()
    }
}

public struct UpdateThingGroupResponse: Codable, Equatable {
    public var version: Version?

    public init(version: Version? = nil) {
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case version
    }

    public func validate() throws {
    }
}

public struct UpdateThingGroupsForThingRequest: Codable, Equatable {
    public var overrideDynamicGroups: OverrideDynamicGroups?
    public var thingGroupsToAdd: ThingGroupList?
    public var thingGroupsToRemove: ThingGroupList?
    public var thingName: ThingName?

    public init(overrideDynamicGroups: OverrideDynamicGroups? = nil,
                thingGroupsToAdd: ThingGroupList? = nil,
                thingGroupsToRemove: ThingGroupList? = nil,
                thingName: ThingName? = nil) {
        self.overrideDynamicGroups = overrideDynamicGroups
        self.thingGroupsToAdd = thingGroupsToAdd
        self.thingGroupsToRemove = thingGroupsToRemove
        self.thingName = thingName
    }

    enum CodingKeys: String, CodingKey {
        case overrideDynamicGroups
        case thingGroupsToAdd
        case thingGroupsToRemove
        case thingName
    }

    public func validate() throws {
        try thingName?.validateAsThingName()
    }
}

public struct UpdateThingGroupsForThingResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct UpdateThingRequest: Codable, Equatable {
    public var attributePayload: AttributePayload?
    public var expectedVersion: OptionalVersion?
    public var removeThingType: RemoveThingType?
    public var thingName: ThingName
    public var thingTypeName: ThingTypeName?

    public init(attributePayload: AttributePayload? = nil,
                expectedVersion: OptionalVersion? = nil,
                removeThingType: RemoveThingType? = nil,
                thingName: ThingName,
                thingTypeName: ThingTypeName? = nil) {
        self.attributePayload = attributePayload
        self.expectedVersion = expectedVersion
        self.removeThingType = removeThingType
        self.thingName = thingName
        self.thingTypeName = thingTypeName
    }

    enum CodingKeys: String, CodingKey {
        case attributePayload
        case expectedVersion
        case removeThingType
        case thingName
        case thingTypeName
    }

    public func validate() throws {
        try attributePayload?.validate()
        try thingName.validateAsThingName()
        try thingTypeName?.validateAsThingTypeName()
    }
}

public struct UpdateThingResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ValidateSecurityProfileBehaviorsRequest: Codable, Equatable {
    public var behaviors: Behaviors

    public init(behaviors: Behaviors) {
        self.behaviors = behaviors
    }

    enum CodingKeys: String, CodingKey {
        case behaviors
    }

    public func validate() throws {
        try behaviors.validateAsBehaviors()
    }
}

public struct ValidateSecurityProfileBehaviorsResponse: Codable, Equatable {
    public var valid: Valid?
    public var validationErrors: ValidationErrors?

    public init(valid: Valid? = nil,
                validationErrors: ValidationErrors? = nil) {
        self.valid = valid
        self.validationErrors = validationErrors
    }

    enum CodingKeys: String, CodingKey {
        case valid
        case validationErrors
    }

    public func validate() throws {
    }
}

public struct ValidationError: Codable, Equatable {
    public var errorMessage: ErrorMessage2?

    public init(errorMessage: ErrorMessage2? = nil) {
        self.errorMessage = errorMessage
    }

    enum CodingKeys: String, CodingKey {
        case errorMessage
    }

    public func validate() throws {
        try errorMessage?.validateAsErrorMessage2()
    }
}

public struct VersionConflictException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct VersionsLimitExceededException: Codable, Equatable {
    public var message: ErrorMessage1?

    public init(message: ErrorMessage1? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct ViolationEvent: Codable, Equatable {
    public var behavior: Behavior?
    public var metricValue: MetricValue?
    public var securityProfileName: SecurityProfileName?
    public var thingName: DeviceDefenderThingName?
    public var violationEventTime: Timestamp?
    public var violationEventType: ViolationEventType?
    public var violationId: ViolationId?

    public init(behavior: Behavior? = nil,
                metricValue: MetricValue? = nil,
                securityProfileName: SecurityProfileName? = nil,
                thingName: DeviceDefenderThingName? = nil,
                violationEventTime: Timestamp? = nil,
                violationEventType: ViolationEventType? = nil,
                violationId: ViolationId? = nil) {
        self.behavior = behavior
        self.metricValue = metricValue
        self.securityProfileName = securityProfileName
        self.thingName = thingName
        self.violationEventTime = violationEventTime
        self.violationEventType = violationEventType
        self.violationId = violationId
    }

    enum CodingKeys: String, CodingKey {
        case behavior
        case metricValue
        case securityProfileName
        case thingName
        case violationEventTime
        case violationEventType
        case violationId
    }

    public func validate() throws {
        try behavior?.validate()
        try metricValue?.validate()
        try securityProfileName?.validateAsSecurityProfileName()
        try thingName?.validateAsDeviceDefenderThingName()
        try violationId?.validateAsViolationId()
    }
}
