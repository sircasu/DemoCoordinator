//
//  SplashViewController.swift
//  DemoCoordinator
//
//  Created by Matteo Casu on 24/11/23.
//

import Foundation
import UIKit

final class SplashViewController: UIViewController {
    
    
    var completion: () -> Void
    
    init(completion: @escaping () -> Void) {
        
        self.completion = completion
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .systemPink
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
            self.completion()
        }
    }
}

