//
//  Coordinator.swift
//  DemoCoordinator
//
//  Created by Matteo Casu on 21/11/23.
//

import Foundation
import UIKit

enum Event {
    case buttonTapped
}

protocol Coordinator {

    var navigationController: UINavigationController? { get set }
    var children: [Coordinator]? { get set }
    
    func eventOccurred(with type: Event)
    func start()
}


protocol Coordinating {
    var coordinator: Coordinator? { get set }
}
