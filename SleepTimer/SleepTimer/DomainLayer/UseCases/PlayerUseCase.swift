//
//  PlayerUseCase.swift
//  SleepTimer
//
//  Created by Petrov Anton on 19.06.2020.
//  Copyright © 2020 APM. All rights reserved.
//

import Foundation

protocol PlayerUseCaseProtocol {
  func playSound(soundTimer: SoundTimerOption, completion: @escaping (Result<Void, Error>) -> Void)
  func pauseSound(completion: @escaping (Result<Void, Error>) -> Void)
}

struct PlayerUseCase {
  let repository: PlayerRepositoryProtocol
}

// MARK: - PlayerUseCaseProtocol

extension PlayerUseCase: PlayerUseCaseProtocol {
  func playSound(soundTimer: SoundTimerOption, completion: @escaping (Result<Void, Error>) -> Void) {
    repository.playSound(soundTimer: soundTimer, completion: completion)
  }
  
  func pauseSound(completion: @escaping (Result<Void, Error>) -> Void) {
    repository.pauseSound(completion: completion)
  }
}
