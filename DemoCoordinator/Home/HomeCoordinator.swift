//
//  HomeCoordinator.swift
//  DemoCoordinator
//
//  Created by Matteo Casu on 24/11/23.
//

import Foundation
import UIKit

class HomeCoordinator: IMainCoordinator {
    var navigationController: UINavigationController
    var children: [IMainCoordinator]?
    
    init(navigationController: UINavigationController, children: [IMainCoordinator]? = nil) {
        self.navigationController = navigationController
        self.children = children
    }
    
    func start() {
        let homeViewController = HomeViewController {
        
            print("push other viewcontroller")
            self.pushOtherViewController()
            
        }
        navigationController.setViewControllers([homeViewController], animated: true)
        
    }
    
    private func pushOtherViewController() {
        
    

        navigationController.pushViewController(OtherViewController(), animated: true)
    }
    
    
}
