//
//  HomeRepository.swift
//  SleepTimer
//
//  Created by Petrov Anton on 19.06.2020.
//  Copyright © 2020 APM. All rights reserved.
//

import Foundation

protocol PlayerRepositoryProtocol {
  func playSound(soundTimer: SoundTimerOption)
  func pauseSound()
  func stopSound()
  func observeSoundDidEndPlaying(completion: (() -> Void)?)
}
