//
//  OnboardingCoordinator.swift
//  DemoCoordinator
//
//  Created by Matteo Casu on 24/11/23.
//

import Foundation
import UIKit

class OnboardingCoordinator: IRootCoordinator {
    
    var navigationController: UINavigationController
    var completion: () -> Void
    var children: [IRootCoordinator]?
    
    init(navigationController: UINavigationController, completion: @escaping () -> Void) {
        self.navigationController = navigationController
        self.completion = completion
    }
    
    func start() {
        
        let onBoardingViewController = OnboardingViewController(completion: self.completion)
        navigationController.setViewControllers([onBoardingViewController], animated: true)
    }
    
    
    
}
