//
//  MainTabBarController.swift
//  DemoCoordinator
//
//  Created by Matteo Casu on 20/11/23.
//

import UIKit

//class MainTabBarController: UITabBarController {
//    
//    private var coordinators: [Coordinator]
//    
//    
//    // MARK: - Initializers
//
//    init(coordinators: [Coordinator]) {
//        self.coordinators = coordinators
//        super.init(nibName: nil, bundle: nil)
//    }
//    
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    
//    
//    // MARK: - Lifecycle
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        delegate = self
//        viewControllers = coordinators.map { $0.navigationController }
//    }
//    
//
//
//    func setSelectedIndex(_ index: Int) {
//        selectedIndex = index
//    }
//
//}
//
//
//
//
//// MARK: - UITabBarControllerDelegate
//
//extension MainTabBarController: UITabBarControllerDelegate {  }
//
