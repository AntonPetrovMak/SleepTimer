//
//  HomeRows.swift
//  SleepTimer
//
//  Created by Petrov Anton on 16.06.2020.
//  Copyright © 2020 APM. All rights reserved.
//

import Foundation

protocol KeyValueViewModelProtocol {
  var title: String { get }
  var value: String { get }
}

enum HomeRows {
  case soundTimer(value: String)
  case recordingDuration(value: String)
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
    case .soundTimer(let value):        return value
    case .recordingDuration(let value): return value
    }
  }
}
