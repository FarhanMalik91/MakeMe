//
//  AppDelegate.swift
//  MakeMe
//
//  Created by Malik Farhan Asim on 17/07/2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController =  UINavigationController(rootViewController: MainAuthViewController())
        window?.makeKeyAndVisible()
        
        return true
    }

   


}

