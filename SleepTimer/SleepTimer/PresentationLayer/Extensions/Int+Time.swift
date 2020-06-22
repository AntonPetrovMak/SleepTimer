//
//  Int+Time.swift
//  SleepTimer
//
//  Created by Petrov Anton on 16.06.2020.
//  Copyright © 2020 APM. All rights reserved.
//

import Foundation

extension Int {
  var timeDetection: String {
    if self >= 60 {
      if self == 60 {
        return "1 hour"
      } else {
        return "\(self / 60) hours"
      }
    }
    return "\(self) min"
  }
}
