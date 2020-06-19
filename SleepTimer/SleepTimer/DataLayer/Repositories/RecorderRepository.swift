//
//  RecorderRepository.swift
//  SleepTimer
//
//  Created by Petrov Anton on 19.06.2020.
//  Copyright © 2020 APM. All rights reserved.
//

import Foundation

struct RecorderRepository: RecorderRepositoryProtocol {
  func startRecord(durationOption: RecordingDurationOption, completion: @escaping (Result<Void, Error>) -> Void) {
    
  }
  
  func pauseRecord(completion: @escaping (Result<Void, Error>) -> Void) {
    
  }
}

// MARK: - Mock Repository

struct RecorderMockRepository: RecorderRepositoryProtocol {
  func startRecord(durationOption: RecordingDurationOption, completion: @escaping (Result<Void, Error>) -> Void) {
    completion(.success(()))
  }
  
  func pauseRecord(completion: @escaping (Result<Void, Error>) -> Void) {
    completion(.success(()))
  }
}
