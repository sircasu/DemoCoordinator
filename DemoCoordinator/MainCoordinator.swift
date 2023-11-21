//
//  MainCoordinator.swift
//  DemoCoordinator
//
//  Created by Matteo Casu on 21/11/23.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    var children: [Coordinator]? = nil
    var navigationController: UINavigationController?
    
    func eventOccurred(with type: Event) {
        
        switch type {
        case .buttonTapped:
            let vc = SecondViewController()
            vc.coordinator = self
            navigationController?.pushViewController(vc, animated: true)
            break
        }
    }
    
    func start() {
        
        let vc = ViewController()
        vc.coordinator = self
    
        navigationController?.setViewControllers([vc], animated: false)
    }
    
    
}
