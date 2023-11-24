//
//  SplashCoordinator.swift
//  DemoCoordinator
//
//  Created by Matteo Casu on 24/11/23.
//

import Foundation
import UIKit

class SplashCoordinator: IRootCoordinator {
    
    
    var navigationController: UINavigationController
    var splashCompletion: () -> Void
    
    var children: [IRootCoordinator]?
    
    
    
    init(navigationController: UINavigationController, completion: @escaping () -> Void) {
        self.navigationController = navigationController
        self.splashCompletion = completion
    }
    
    
    func start() {
        
        let splashViewController = SplashViewController(completion: splashCompletion)
        navigationController.setViewControllers([splashViewController], animated: false)
    }
    
    
}
