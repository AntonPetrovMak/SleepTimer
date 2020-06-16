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
    var dimension = "min"
    if self >= 60 {
      dimension = self == 60 ? "hour" : "hours"
    }
    return "\(self) \(dimension)"
  }
}
