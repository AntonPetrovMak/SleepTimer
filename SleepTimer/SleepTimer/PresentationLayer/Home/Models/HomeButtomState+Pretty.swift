//
//  HomeButtomState+Pretty.swift
//  SleepTimer
//
//  Created by Petrov Anton on 19.06.2020.
//  Copyright © 2020 APM. All rights reserved.
//

import Foundation

// MARK: - Localized

extension HomeButtomState {
  // TODO: can be localized
  var localized: String {
    switch self {
    case .play:   return "Play"
    case .pause:  return "Pause"
    }
  }
}

// MARK: - PrettyEnumValue

extension HomeButtomState: PrettyEnumValue {
  var prettyValue: String {
    return localized
  }
}
