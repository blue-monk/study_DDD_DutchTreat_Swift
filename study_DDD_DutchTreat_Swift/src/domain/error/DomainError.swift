//
//  DomainError.swift
//  study_DDD_DutchTreat_Swift
//
//  Created by blue-monk on 2020/01/26.
//  Copyright © 2020 blue-monk. All rights reserved.
//

import Foundation

enum DomainError: Error, Equatable {

    case invalid(message: String)
    case notAllowedOperation(message: String)
    case unknownDate(dateComponents: DateComponents)
}
