//
//  HomeRows.swift
//  SleepTimer
//
//  Created by Petrov Anton on 16.06.2020.
//  Copyright © 2020 APM. All rights reserved.
//

import Foundation

enum HomeRows {
  case soundTimer(value: String, didSelect: () -> Void)
  case recordingDuration(value: String, didSelect: () -> Void)
}

// MARK: - KeyValueViewModelProtocol

extension HomeRows: KeyValueViewModelProtocol {
  var title: String {
    switch self {
    case .soundTimer:        return "Sound Timer"
    case .recordingDuration: return "Recording Duration"
    }
  }
  
  var value: String {
    switch self {
    case let .soundTimer(value, _):        return value
    case let .recordingDuration(value, _): return value
    }
  }
  
  var didSelect: () -> Void {
    switch self {
    case let .soundTimer(_, block):        return block
    case let .recordingDuration(_, block): return block
    }
  }
}
