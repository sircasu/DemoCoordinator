//
//  ViewController.swift
//  DemoCoordinator
//
//  Created by Matteo Casu on 17/11/23.
//


import UIKit


class ViewController: UIViewController {
        
   
    
    override func viewDidLoad() {
        title = "Home"
        

        let button = createButton()
        
        view.addSubview(button)
    }
    
    
    @objc func didTapButton() {
        
    }
    

    
    private func createButton() -> UIButton {
        
        let nextButton = UIButton(type: .system)
        nextButton.setTitle("Go to ", for: .normal)
        nextButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        return nextButton
    }
}
