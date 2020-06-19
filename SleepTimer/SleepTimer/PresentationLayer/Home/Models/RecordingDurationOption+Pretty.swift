//
//  RecordingDurationOption+Pretty.swift
//  SleepTimer
//
//  Created by Petrov Anton on 19.06.2020.
//  Copyright © 2020 APM. All rights reserved.
//

import Foundation

extension RecordingDurationOption: PrettyEnumValue {
  var prettyValue: String {
    switch self {
    case .off:
      return "Off"
    case .timer(let value):
      return value.timeDetection
    }
  }
}
