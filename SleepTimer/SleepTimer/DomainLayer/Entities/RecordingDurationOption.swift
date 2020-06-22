//
//  RecordingDurationOption.swift
//  SleepTimer
//
//  Created by Petrov Anton on 16.06.2020.
//  Copyright © 2020 APM. All rights reserved.
//

import Foundation

enum RecordingDurationOption {
  case off
  case timer(Int)
  
  var minutes: Int {
    switch self {
    case .off:
      return 0
    case .timer(let value):
      return value
    }
  }
}

// MARK: - Defaults

extension RecordingDurationOption {
  static let `default` = RecordingDurationOption.timer(60 * 2)
  
  static let defaultRange: [RecordingDurationOption] = [.off,
                                                        .timer(5),
                                                        .timer(60),
                                                        .timer(60 * 2),
                                                        .timer(60 * 3),
                                                        .timer(60 * 4),
                                                        .timer(60 * 6)]
}
