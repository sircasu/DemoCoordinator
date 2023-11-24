//
//  MainCoordinator.swift
//  DemoCoordinator
//
//  Created by Matteo Casu on 24/11/23.
//

import Foundation
import UIKit

class MainCoordinator: IMainCoordinator {
    var navigationController: UINavigationController
    
    var children: [IMainCoordinator]?
    
    
    init(navigationController: UINavigationController, children: [IMainCoordinator]? = nil) {
        self.navigationController = navigationController
        self.children = children
    }
    
    func start() {
        let homeCoordinator = HomeCoordinator(navigationController: self.navigationController) 
        
        navigationController.setViewControllers([homeCoordinator.navigationController], animated: true)
//        navigationController.pushViewController(homeCoordinator.navigationController, animated: true)
        homeCoordinator.start()
        
        children?.append(homeCoordinator)
    }
    
    

}
