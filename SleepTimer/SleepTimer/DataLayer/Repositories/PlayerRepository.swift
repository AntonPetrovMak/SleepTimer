//
//  PlayerRepository.swift
//  SleepTimer
//
//  Created by Petrov Anton on 19.06.2020.
//  Copyright © 2020 APM. All rights reserved.
//

import Foundation
import AVFoundation

class PlayerRepository: NSObject {
  
  private let player: AVAudioPlayer!
  
  private let session = AVAudioSession.sharedInstance()
  private var didEndPlaying: (() -> Void)?
  
  override init() {
    do {
      try session.setCategory(.playback,
                              mode: .default,
                              policy: .longFormAudio,
                              options: [])
      
      try session.setActive(true, options: [])
      let url = Bundle.main.url(forResource: "nature", withExtension: "m4a")!
      player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.m4a.rawValue)
    } catch let error {
      player = AVAudioPlayer()
      print("\(#function) Error:\(error.localizedDescription)")
    }
    
    super.init()
    player.delegate = self
  }
  
}

// MARK: - PlayerRepositoryProtocol

extension PlayerRepository: PlayerRepositoryProtocol {
  func playSound(soundTimer: SoundTimerOption) {
    player.play()
  }
  
  func pauseSound() {
    player.pause()
  }
  
  func stopSound() {
    player.currentTime = 0
    player.stop()
  }
  
  func observeSoundDidEndPlaying(completion: (() -> Void)?) {
    didEndPlaying = completion
  }
}

extension PlayerRepository: AVAudioPlayerDelegate {
  func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
    player.currentTime = 0
    didEndPlaying?()
  }
}


// MARK: - Mock Repository

struct PlayerMockRepository: PlayerRepositoryProtocol {
  func playSound(soundTimer: SoundTimerOption) {
    
  }
  
  func pauseSound() {
    
  }
  
  func stopSound() {
    
  }
  
  func observeSoundDidEndPlaying(completion: (() -> Void)?) {
    completion?()
  }
  
  
}
