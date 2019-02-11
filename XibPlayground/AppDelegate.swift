//
//  AppDelegate.swift
//  XibPlayground
//
//  Created by TSL150 on 2019-01-22.
//  Copyright © 2019 TSL150. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        window?.rootViewController = XibViewController(injectedParameter1: 88, injectedParameter2: 42)
        window?.makeKeyAndVisible()
        
        return true
    }
}

