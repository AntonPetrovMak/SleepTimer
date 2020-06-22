//
//  RouterProtocol.swift
//  SleepTimer
//
//  Created by Petrov Anton on 19.06.2020.
//  Copyright © 2020 APM. All rights reserved.
//

import UIKit

protocol RouterProtocol {
  var baseViewController: UIViewController? { get set }
}

extension RouterProtocol {
  func showError(message: String, animated: Bool = true, completion: (() -> Void)? = nil) {
    showAlert("Error", message, animated: animated, completion: completion)
  }
  
  func showAlert(_ title: String, _ message: String, animated: Bool = true, completion: (() -> Void)? = nil) {
    guard let baseViewController = baseViewController else { return }
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    baseViewController.present(alert, animated: animated, completion: completion)
  }
}
