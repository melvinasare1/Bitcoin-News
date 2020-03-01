//
//  AppDelegate.swift
//  NewsApp2
//
//  Created by Melvin Asare  on 09/01/2020.
//  Copyright © 2020 Melvin Asare . All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
        let navigationController = UINavigationController(rootViewController: NewsList())
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.makeKeyAndVisible()
        self.window?.rootViewController = navigationController
        
        return true
    }
}
