//
//  HomeButtomState.swift
//  SleepTimer
//
//  Created by Petrov Anton on 16.06.2020.
//  Copyright © 2020 APM. All rights reserved.
//

import Foundation

enum HomeButtomState {
  case play
  case pause
}

extension HomeButtomState {
  // TODO: can be localized
  var localized: String {
    switch self {
    case .play:   return "Play"
    case .pause:  return "Pause"
    }
  }
}

// MARK: - PrettyPresentaion

extension HomeButtomState: PrettyPresentaion {
  var prettyValue: String {
    return localized
  }
}
