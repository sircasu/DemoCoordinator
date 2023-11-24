//
//  RootCoordinator.swift
//  DemoCoordinator
//
//  Created by Matteo Casu on 24/11/23.
//

import Foundation
import UIKit


class RootCoordinator: IRootCoordinator {
    
    var window: UIWindow
    var navigationController: UINavigationController
    var children: [IRootCoordinator]?
    
    
    init(window: UIWindow, navigationController: UINavigationController) {
        self.window = window
        self.navigationController = navigationController
    }
    
    
    func start() {
        

        let splashCoordinator = SplashCoordinator(navigationController: navigationController) {
            
            print ("splash completed")
            self.startOnboarding()
        }
        
        self.window.rootViewController = splashCoordinator.navigationController
        
        splashCoordinator.start()
    }
    
    
    
    private func startOnboarding() {
        
        let onboardingCoordinator = OnboardingCoordinator(navigationController: navigationController) {
            
            
            print("onboarding completed")
            self.startHome()
        }

        self.window.rootViewController = onboardingCoordinator.navigationController
        
        onboardingCoordinator.start()
        
    }
    
    
    
    private func startHome() {
        
        let homeCoordinator = HomeCoordinator(navigationController: navigationController)
        
        self.window.rootViewController = homeCoordinator.navigationController
        
        homeCoordinator.start()
    }
    
}
