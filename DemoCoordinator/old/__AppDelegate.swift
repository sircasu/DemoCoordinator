//
//  AppDelegate.swift
//  DemoCoordinator
//
//  Created by Matteo Casu on 17/11/23.
//

import UIKit

//protocol Coordinator {
//    var childCoordinators: [Coordinator] { get }
//    var navigationController: UINavigationController { get }
//
//    func start()
//}
//
//
//class MainCooordinator: Coordinator {
//    
//    var childCoordinators = [Coordinator]()
//    var navigationController = UINavigationController()
//    
////    init(navigationController: UINavigationController) {
////        self.navigationController = navigationController
////    }
//    
//    func start() {
//        let tabBarController = UITabBarController()
//        
//        // create coordinator for each tab
//        let nc1 = UINavigationController()
//        nc1.tabBarItem.title = "Tab1"
//        nc1.tabBarItem.image = .strokedCheckmark
//        let tab1Coordinator = Tab1Coordinator(navigationController: nc1)
//        tab1Coordinator.start()
//        
//        
//        //
//        let nc2 = UINavigationController()
//        nc2.tabBarItem.title = "Tab2"
//        nc2.tabBarItem.image = .strokedCheckmark
//        let tab2Coordinator = Tab2Coordinator(navigationController: nc2)
//        tab2Coordinator.start()
//        
//        tabBarController.viewControllers = [tab1Coordinator.navigationController, tab2Coordinator.navigationController]
//        
//        // Set the tab bar controller as the root view controller
//        navigationController.setViewControllers([tabBarController], animated: false)
//    }
//    
//}
//
//
//
//class Tab1Coordinator: Coordinator {
//    
//    var childCoordinators = [Coordinator]()
//    var navigationController: UINavigationController
//    
//    init(navigationController: UINavigationController) {
//        self.navigationController = navigationController
//    }
//    
//    func start() {
//        
//        let vc = Tab1ViewController()
//        vc.coordinator = self
//        navigationController.pushViewController(vc, animated: false)
//        
//    }
//}
//
////
//class Tab2Coordinator: Coordinator {
//    
//    var childCoordinators = [Coordinator]()
//    var navigationController: UINavigationController
//
//    
//    init(navigationController: UINavigationController) {
//        self.navigationController = navigationController
//    }
//    
//    func start() {
//        
//        let vc = Tab2ViewController()
//        vc.coordinator = self
//        navigationController.pushViewController(vc, animated: false)
//    }
//}





//@main
//class AppDelegate: UIResponder, UIApplicationDelegate {
//
//    var window: UIWindow?
//    var mainCoordinator: MainCooordinator?
//
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//        // Override point for customization after application launch.
//        
//        window = UIWindow(frame: UIScreen.main.bounds)
//        window?.makeKeyAndVisible()
////        window?.backgroundColor = .systemPink
//        
//        
//        mainCoordinator = MainCooordinator()
//        mainCoordinator?.start()
//        
////        let mainTabBarController = MainTabBarController(coordinators: self.rootCoordinators)
////        window.rootViewController = mainTabBarController
//        
////        let testViewModel= TestViewModel()
//        window?.rootViewController = mainCoordinator?.navigationController
//        return true
//    }
//
//
//
//}

