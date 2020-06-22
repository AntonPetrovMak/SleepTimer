//
//  RecorderRepository.swift
//  SleepTimer
//
//  Created by Petrov Anton on 19.06.2020.
//  Copyright © 2020 APM. All rights reserved.
//

import Foundation

struct RecorderRepository: RecorderRepositoryProtocol {
  func startRecord(durationOption: RecordingDurationOption) {
    
  }
  
  func pauseRecording() {
    
  }
  
  func stopRecording() {
    
  }
  
  func observeRecordingDidFinish(completion: ((_ record: Any) -> Void)?) {
    
  }
}

// MARK: - Mock Repository

struct RecorderMockRepository: RecorderRepositoryProtocol {
  func startRecord(durationOption: RecordingDurationOption) {
    
  }
  
  func pauseRecording() {
    
  }
  
  func stopRecording() {
    
  }
  
  func observeRecordingDidFinish(completion: ((_ record: Any) -> Void)?) {
    
  }
}
