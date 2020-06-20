//
//  PlayerUseCase.swift
//  SleepTimer
//
//  Created by Petrov Anton on 19.06.2020.
//  Copyright © 2020 APM. All rights reserved.
//

import Foundation

protocol PlayerUseCaseProtocol {
  func playSound(soundTimer: SoundTimerOption)
  func pauseSound()
  func stopSound()
  func observeSoundDidEndPlaying(completion: (() -> Void)?)
}

struct PlayerUseCase {
  let repository: PlayerRepositoryProtocol
}

// MARK: - PlayerUseCaseProtocol

extension PlayerUseCase: PlayerUseCaseProtocol {
  func playSound(soundTimer: SoundTimerOption) {
    repository.playSound(soundTimer: soundTimer)
  }
  
  func pauseSound() {
    repository.pauseSound()
  }
  
  func stopSound() {
    repository.stopSound()
  }
  
  func observeSoundDidEndPlaying(completion: (() -> Void)?) {
    repository.observeSoundDidEndPlaying(completion: completion)
  }
}
