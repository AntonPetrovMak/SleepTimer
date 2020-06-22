//
//  SleepTrackerUseCase.swift
//  SleepTimer
//
//  Created by Petrov Anton on 22.06.2020.
//  Copyright © 2020 APM. All rights reserved.
//

import Foundation

protocol SleepTrackerUseCaseDelegate: class {
  func didChangeStatus(_ status: SleepTrackerState)
}

protocol SleepTrackerUseCaseProtocol {
  func play()
  func pause()
  func stop()
  
  var delegate: SleepTrackerUseCaseDelegate? { get set }
}

class SleepTrackerUseCase {
  fileprivate let soundTimer: Observable<SoundTimerOption>
  fileprivate let recordingDuration: Observable<RecordingDurationOption>
  fileprivate var trackerStatus: SleepTrackerState = .idle {
    didSet {
      delegate?.didChangeStatus(trackerStatus)
    }
  }
  weak var delegate: SleepTrackerUseCaseDelegate?
  
  fileprivate let playerUseCase: PlayerUseCaseProtocol
  fileprivate let recorderUseCase: RecorderUseCaseProtocol
  
  init(soundTimer: Observable<SoundTimerOption>,
       recordingDuration: Observable<RecordingDurationOption>,
       playerRepository: PlayerRepositoryProtocol,
       recorderRepository: RecorderRepositoryProtocol) {
    self.soundTimer = soundTimer
    self.recordingDuration = recordingDuration
    self.playerUseCase = PlayerUseCase(repository: playerRepository)
    self.recorderUseCase = RecorderUseCase(repository: recorderRepository)
    self.playerUseCase.observeSoundDidEndPlaying(completion: self.soundDidEndPlaying)
    self.recorderUseCase.observeRecordingDidFinish { record in
      self.soundDidEndRecording(record)
    }
  }
  
  func soundDidEndPlaying() {
    recorderUseCase.startRecord(durationOption: recordingDuration.value)
    trackerStatus = .recordingSound
  }
  
  func soundDidEndRecording(_ record: Any) {
    // TODO: save track
    trackerStatus = .idle
  }
  
}

// MARK: - SleepTrackerUseCaseProtocol

extension SleepTrackerUseCase: SleepTrackerUseCaseProtocol {
  
  func play() {
    switch trackerStatus {
    case .idle:
      playerUseCase.playSound(soundTimer: soundTimer.value)
      trackerStatus = .playingSound
    case .pausedPlaying:
      playerUseCase.playSound(soundTimer: soundTimer.value)
      trackerStatus = .playingSound
    case .pausedRecording:
      recorderUseCase.startRecord(durationOption: recordingDuration.value)
      trackerStatus = .recordingSound
    default: ()
    }
  }
  
  func pause() {
    switch trackerStatus {
    case .playingSound:
      playerUseCase.pauseSound()
      trackerStatus = .pausedPlaying
    case .recordingSound:
      recorderUseCase.pauseRecording()
      trackerStatus = .pausedRecording
    default: ()
    }
  }
  
  func stop() {
    // TODO: if needed
  }
  
}
