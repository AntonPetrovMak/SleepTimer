//
//  STStoryboards.swift
//  SleepTimer
//
//  Created by Petrov Anton on 16.06.2020.
//  Copyright © 2020 APM. All rights reserved.
//

import UIKit

enum STStoryboard: String {
  case home = "Home"
}

protocol StoryboardInstantiableProtocol: class {
  static var storyboardIdentifier: String {get}
  static func instantiateFromStoryboard(storyboard: STStoryboard) -> Self
}

extension UIViewController: StoryboardInstantiableProtocol {
  static var storyboardIdentifier: String {
    /// ATTENTION: This approach work correct when we use the same identifier and name of class. You can always override `storyboardIdentifier` in a clas if needed.
    return String(describing: self)
  }
  
  /** Example how it use:
   let vc = PositionDetailsViewController.instantiateFromStoryboard(storyboard: .PositionDetails)
   self.navigationController?.pushViewController(vc, animated: true)
   */
  class func instantiateFromStoryboard(storyboard: STStoryboard) -> Self {
    let storyboard = UIStoryboard(name: storyboard.rawValue, bundle: nil)
    return instantiateFromStoryboard(storyboard: storyboard, type: self)
  }
}

extension UIViewController {
  /// Return automatically the right type
  private class func instantiateFromStoryboard<T: UIViewController>(storyboard: UIStoryboard, type: T.Type) -> T {
    return storyboard.instantiateViewController(withIdentifier: self.storyboardIdentifier) as! T
  }
}
