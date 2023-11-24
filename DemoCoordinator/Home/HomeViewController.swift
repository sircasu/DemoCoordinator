//
//  HomeViewController.swift
//  DemoCoordinator
//
//  Created by Matteo Casu on 24/11/23.
//

import UIKit

class HomeViewController: UIViewController {

    
    var completion: () -> Void

    
    init(completion: @escaping () -> Void) {
        self.completion = completion
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .magenta

        // Do any additional setup after loading the view.
        title = "Home"
        
        let button = createButton()
        view.addSubview(button)
                
        // Layout constraints
        NSLayoutConstraint.activate([

            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    
    
    
    @objc func didTapButton() {
        completion()
    }

    
    private func createButton() -> UIButton {
        
        let nextButton = UIButton(type: .infoDark)
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.setTitle("Push a controller", for: .normal)
        nextButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)

        
        return nextButton
    }
}
