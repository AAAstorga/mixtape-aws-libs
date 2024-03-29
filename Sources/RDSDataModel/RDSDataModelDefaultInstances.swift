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
// RDSDataModelDefaultInstances.swift
// RDSDataModel
//

import Foundation

public extension BadRequestException {
    /**
     Default instance of the BadRequestException structure.
     */
    public static let __default: RDSDataModel.BadRequestException = {
        let defaultInstance = RDSDataModel.BadRequestException(
            message: nil)

        return defaultInstance
    }()
}

public extension BatchExecuteStatementRequest {
    /**
     Default instance of the BatchExecuteStatementRequest structure.
     */
    public static let __default: RDSDataModel.BatchExecuteStatementRequest = {
        let defaultInstance = RDSDataModel.BatchExecuteStatementRequest(
            database: nil,
            parameterSets: nil,
            resourceArn: "",
            schema: nil,
            secretArn: "",
            sql: "",
            transactionId: nil)

        return defaultInstance
    }()
}

public extension BatchExecuteStatementResponse {
    /**
     Default instance of the BatchExecuteStatementResponse structure.
     */
    public static let __default: RDSDataModel.BatchExecuteStatementResponse = {
        let defaultInstance = RDSDataModel.BatchExecuteStatementResponse(
            updateResults: nil)

        return defaultInstance
    }()
}

public extension BeginTransactionRequest {
    /**
     Default instance of the BeginTransactionRequest structure.
     */
    public static let __default: RDSDataModel.BeginTransactionRequest = {
        let defaultInstance = RDSDataModel.BeginTransactionRequest(
            database: nil,
            resourceArn: "",
            schema: nil,
            secretArn: "")

        return defaultInstance
    }()
}

public extension BeginTransactionResponse {
    /**
     Default instance of the BeginTransactionResponse structure.
     */
    public static let __default: RDSDataModel.BeginTransactionResponse = {
        let defaultInstance = RDSDataModel.BeginTransactionResponse(
            transactionId: nil)

        return defaultInstance
    }()
}

public extension ColumnMetadata {
    /**
     Default instance of the ColumnMetadata structure.
     */
    public static let __default: RDSDataModel.ColumnMetadata = {
        let defaultInstance = RDSDataModel.ColumnMetadata(
            arrayBaseColumnType: nil,
            isAutoIncrement: nil,
            isCaseSensitive: nil,
            isCurrency: nil,
            isSigned: nil,
            label: nil,
            name: nil,
            nullable: nil,
            precision: nil,
            scale: nil,
            schemaName: nil,
            tableName: nil,
            type: nil,
            typeName: nil)

        return defaultInstance
    }()
}

public extension CommitTransactionRequest {
    /**
     Default instance of the CommitTransactionRequest structure.
     */
    public static let __default: RDSDataModel.CommitTransactionRequest = {
        let defaultInstance = RDSDataModel.CommitTransactionRequest(
            resourceArn: "",
            secretArn: "",
            transactionId: "")

        return defaultInstance
    }()
}

public extension CommitTransactionResponse {
    /**
     Default instance of the CommitTransactionResponse structure.
     */
    public static let __default: RDSDataModel.CommitTransactionResponse = {
        let defaultInstance = RDSDataModel.CommitTransactionResponse(
            transactionStatus: nil)

        return defaultInstance
    }()
}

public extension ExecuteSqlRequest {
    /**
     Default instance of the ExecuteSqlRequest structure.
     */
    public static let __default: RDSDataModel.ExecuteSqlRequest = {
        let defaultInstance = RDSDataModel.ExecuteSqlRequest(
            awsSecretStoreArn: "",
            database: nil,
            dbClusterOrInstanceArn: "",
            schema: nil,
            sqlStatements: "")

        return defaultInstance
    }()
}

public extension ExecuteSqlResponse {
    /**
     Default instance of the ExecuteSqlResponse structure.
     */
    public static let __default: RDSDataModel.ExecuteSqlResponse = {
        let defaultInstance = RDSDataModel.ExecuteSqlResponse(
            sqlStatementResults: nil)

        return defaultInstance
    }()
}

public extension ExecuteStatementRequest {
    /**
     Default instance of the ExecuteStatementRequest structure.
     */
    public static let __default: RDSDataModel.ExecuteStatementRequest = {
        let defaultInstance = RDSDataModel.ExecuteStatementRequest(
            continueAfterTimeout: nil,
            database: nil,
            includeResultMetadata: nil,
            parameters: nil,
            resourceArn: "",
            schema: nil,
            secretArn: "",
            sql: "",
            transactionId: nil)

        return defaultInstance
    }()
}

public extension ExecuteStatementResponse {
    /**
     Default instance of the ExecuteStatementResponse structure.
     */
    public static let __default: RDSDataModel.ExecuteStatementResponse = {
        let defaultInstance = RDSDataModel.ExecuteStatementResponse(
            columnMetadata: nil,
            generatedFields: nil,
            numberOfRecordsUpdated: nil,
            records: nil)

        return defaultInstance
    }()
}

public extension Field {
    /**
     Default instance of the Field structure.
     */
    public static let __default: RDSDataModel.Field = {
        let defaultInstance = RDSDataModel.Field(
            blobValue: nil,
            booleanValue: nil,
            doubleValue: nil,
            isNull: nil,
            longValue: nil,
            stringValue: nil)

        return defaultInstance
    }()
}

public extension ForbiddenException {
    /**
     Default instance of the ForbiddenException structure.
     */
    public static let __default: RDSDataModel.ForbiddenException = {
        let defaultInstance = RDSDataModel.ForbiddenException(
            message: nil)

        return defaultInstance
    }()
}

public extension InternalServerErrorException {
    /**
     Default instance of the InternalServerErrorException structure.
     */
    public static let __default: RDSDataModel.InternalServerErrorException = {
        let defaultInstance = RDSDataModel.InternalServerErrorException()

        return defaultInstance
    }()
}

public extension NotFoundException {
    /**
     Default instance of the NotFoundException structure.
     */
    public static let __default: RDSDataModel.NotFoundException = {
        let defaultInstance = RDSDataModel.NotFoundException(
            message: nil)

        return defaultInstance
    }()
}

public extension Record {
    /**
     Default instance of the Record structure.
     */
    public static let __default: RDSDataModel.Record = {
        let defaultInstance = RDSDataModel.Record(
            values: nil)

        return defaultInstance
    }()
}

public extension ResultFrame {
    /**
     Default instance of the ResultFrame structure.
     */
    public static let __default: RDSDataModel.ResultFrame = {
        let defaultInstance = RDSDataModel.ResultFrame(
            records: nil,
            resultSetMetadata: nil)

        return defaultInstance
    }()
}

public extension ResultSetMetadata {
    /**
     Default instance of the ResultSetMetadata structure.
     */
    public static let __default: RDSDataModel.ResultSetMetadata = {
        let defaultInstance = RDSDataModel.ResultSetMetadata(
            columnCount: nil,
            columnMetadata: nil)

        return defaultInstance
    }()
}

public extension RollbackTransactionRequest {
    /**
     Default instance of the RollbackTransactionRequest structure.
     */
    public static let __default: RDSDataModel.RollbackTransactionRequest = {
        let defaultInstance = RDSDataModel.RollbackTransactionRequest(
            resourceArn: "",
            secretArn: "",
            transactionId: "")

        return defaultInstance
    }()
}

public extension RollbackTransactionResponse {
    /**
     Default instance of the RollbackTransactionResponse structure.
     */
    public static let __default: RDSDataModel.RollbackTransactionResponse = {
        let defaultInstance = RDSDataModel.RollbackTransactionResponse(
            transactionStatus: nil)

        return defaultInstance
    }()
}

public extension ServiceUnavailableError {
    /**
     Default instance of the ServiceUnavailableError structure.
     */
    public static let __default: RDSDataModel.ServiceUnavailableError = {
        let defaultInstance = RDSDataModel.ServiceUnavailableError()

        return defaultInstance
    }()
}

public extension SqlParameter {
    /**
     Default instance of the SqlParameter structure.
     */
    public static let __default: RDSDataModel.SqlParameter = {
        let defaultInstance = RDSDataModel.SqlParameter(
            name: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension SqlStatementResult {
    /**
     Default instance of the SqlStatementResult structure.
     */
    public static let __default: RDSDataModel.SqlStatementResult = {
        let defaultInstance = RDSDataModel.SqlStatementResult(
            numberOfRecordsUpdated: nil,
            resultFrame: nil)

        return defaultInstance
    }()
}

public extension StatementTimeoutException {
    /**
     Default instance of the StatementTimeoutException structure.
     */
    public static let __default: RDSDataModel.StatementTimeoutException = {
        let defaultInstance = RDSDataModel.StatementTimeoutException(
            dbConnectionId: nil,
            message: nil)

        return defaultInstance
    }()
}

public extension StructValue {
    /**
     Default instance of the StructValue structure.
     */
    public static let __default: RDSDataModel.StructValue = {
        let defaultInstance = RDSDataModel.StructValue(
            attributes: nil)

        return defaultInstance
    }()
}

public extension UpdateResult {
    /**
     Default instance of the UpdateResult structure.
     */
    public static let __default: RDSDataModel.UpdateResult = {
        let defaultInstance = RDSDataModel.UpdateResult(
            generatedFields: nil)

        return defaultInstance
    }()
}

public extension Value {
    /**
     Default instance of the Value structure.
     */
    public static let __default: RDSDataModel.Value = {
        let defaultInstance = RDSDataModel.Value(
            arrayValues: nil,
            bigIntValue: nil,
            bitValue: nil,
            blobValue: nil,
            doubleValue: nil,
            intValue: nil,
            isNull: nil,
            realValue: nil,
            stringValue: nil,
            structValue: nil)

        return defaultInstance
    }()
}
