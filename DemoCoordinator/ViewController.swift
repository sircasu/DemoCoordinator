//
//  ViewController.swift
//  DemoCoordinator
//
//  Created by Matteo Casu on 17/11/23.
//


import UIKit


class ViewController: UIViewController, Coordinating {
        
    var coordinator: Coordinator?
    
    override func viewDidLoad() {
        title = "Home"
        

        let button = createButton()
        
        view.addSubview(button)
    }
    
    
    @objc func didTapButton() {
        coordinator?.eventOccurred(with: .buttonTapped)
    }
    

    
    private func createButton() -> UIButton {
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 220, height: 55))
        button.center = view.center
        button.backgroundColor = .systemGreen
        button.setTitle("Go to second VC", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        return button
    }
}
