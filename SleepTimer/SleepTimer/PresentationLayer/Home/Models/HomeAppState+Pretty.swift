//
//  HomeAppState+Pretty.swift
//  SleepTimer
//
//  Created by Petrov Anton on 19.06.2020.
//  Copyright © 2020 APM. All rights reserved.
//

import Foundation

// MARK: - Localized

extension HomeAppState {
  // TODO: can be localized here
  var localized: String {
    switch self {
    case .idle:       return "Idle"
    case .playing:    return "Playing"
    case .recording:  return "Recording"
    case .paused:     return "Paused"
    }
  }
}

// MARK: - PrettyEnumValue

extension HomeAppState: PrettyEnumValue {
  var prettyValue: String {
    return localized
  }
}
