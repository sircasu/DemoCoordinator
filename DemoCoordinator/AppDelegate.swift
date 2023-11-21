//
//  AppDelegate.swift
//  DemoCoordinator
//
//  Created by Matteo Casu on 21/11/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground

        let navigationController = UINavigationController()
        let mainCoordinator = MainCoordinator()
        mainCoordinator.navigationController = navigationController
        
        
        window?.rootViewController = navigationController
        
        
        mainCoordinator.start()
        
        
        return true
    }



}
