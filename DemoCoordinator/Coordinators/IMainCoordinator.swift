//
//  IMainCoordinator.swift
//  DemoCoordinator
//
//  Created by Matteo Casu on 24/11/23.
//

import Foundation
import UIKit

protocol IMainCoordinator {
    var navigationController: UINavigationController { get set }
    var children: [IMainCoordinator]? { get set }
    
    func start()
}
