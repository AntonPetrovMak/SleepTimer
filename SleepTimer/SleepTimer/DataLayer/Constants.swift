//
//  Constants.swift
//  SleepTimer
//
//  Created by Petrov Anton on 19.06.2020.
//  Copyright © 2020 APM. All rights reserved.
//

import Foundation

enum STProcessInfo {
  static let isMocking = ProcessInfo.processInfo.environment["STDataMockingEnabled"] == "YES"
}
