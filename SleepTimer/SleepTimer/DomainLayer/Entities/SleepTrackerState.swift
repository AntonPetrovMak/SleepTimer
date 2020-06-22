//
//  SleepTrackerState.swift
//  SleepTimer
//
//  Created by Petrov Anton on 22.06.2020.
//  Copyright © 2020 APM. All rights reserved.
//

import Foundation

enum SleepTrackerState {
  case idle
  case playingSound
  case recordingSound
  case pausedPlaying
  case pausedRecording
}
