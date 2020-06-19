//
//  AppDelegate.swift
//  SleepTimer
//
//  Created by Petrov Anton on 15.06.2020.
//  Copyright © 2020 APM. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    window = UIWindow(frame: UIScreen.main.bounds)
    let router = HomeRouter()
    let homeViewController = HomeConfigurator.fromStoryboard(router: router)
    router.baseViewController = homeViewController
    window?.rootViewController = homeViewController
    window?.makeKeyAndVisible()
    
    return true
  }
}

