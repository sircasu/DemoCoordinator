//
//  IRootCoordinator.swift
//  DemoCoordinator
//
//  Created by Matteo Casu on 21/11/23.
//

import Foundation
import UIKit


protocol IRootCoordinator {

    var navigationController: UINavigationController { get set }
    var children: [IRootCoordinator]? { get set }
    
    func start()
}



