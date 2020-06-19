//
//  RecorderUseCase.swift
//  SleepTimer
//
//  Created by Petrov Anton on 19.06.2020.
//  Copyright © 2020 APM. All rights reserved.
//

import Foundation

protocol RecorderUseCaseProtocol {
  func startRecord(durationOption: RecordingDurationOption, completion: @escaping (Result<Void, Error>) -> Void)
  func pauseRecord(completion: @escaping (Result<Void, Error>) -> Void)
}

struct RecorderUseCase {
  let repository: RecorderRepositoryProtocol
}

// MARK: - PlayerUseCaseProtocol

extension RecorderUseCase: RecorderUseCaseProtocol {
  func startRecord(durationOption: RecordingDurationOption, completion: @escaping (Result<Void, Error>) -> Void) {
    repository.startRecord(durationOption: durationOption, completion: completion)
  }
  
  func pauseRecord(completion: @escaping (Result<Void, Error>) -> Void) {
    repository.pauseRecord(completion: completion)
  }
}
