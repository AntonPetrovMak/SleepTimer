//
//  HomeAppState.swift
//  SleepTimer
//
//  Created by Petrov Anton on 16.06.2020.
//  Copyright © 2020 APM. All rights reserved.
//

import Foundation

enum HomeAppState {
  case idle
  case playing
  case recording
  case paused
}

extension HomeAppState {
  // TODO: can be localized
  var localized: String {
    switch self {
    case .idle:       return "Idle"
    case .playing:    return "Playing"
    case .recording:  return "Recording"
    case .paused:     return "Paused"
    }
  }
}

// MARK: - PrettyPresentaion

extension HomeAppState: PrettyPresentaion {
  var prettyValue: String {
    return localized
  }
}
