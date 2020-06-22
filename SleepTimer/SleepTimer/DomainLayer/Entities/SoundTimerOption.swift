//
//  SoundTimerEnum.swift
//  SleepTimer
//
//  Created by Petrov Anton on 16.06.2020.
//  Copyright © 2020 APM. All rights reserved.
//

import Foundation

enum SoundTimerOption {
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

extension SoundTimerOption {
  static let `default` = SoundTimerOption.timer(20)
  
  static let defaultRange: [SoundTimerOption] = [.off,
                                                 .timer(1),
                                                 .timer(5),
                                                 .timer(10),
                                                 .timer(15),
                                                 .timer(20)]
}
