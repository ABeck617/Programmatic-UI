//
//  FirstScreen.swift
//  Programmatic-UI
//
//  Created by Anthony Beckford on 9/22/22.
//

import UIKit

class FirstScreen: UIViewController {
    
    // Create an instance of a button
    
    let nextButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton()
        view.backgroundColor = .systemBackground
        title = "First Screen"
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }

    func setupButton() {
        // Adding a View to ViewController Programmatically
        view.addSubview(nextButton)
        
        // Styling the View
        nextButton.configuration = .filled()
        nextButton.configuration?.baseBackgroundColor = .systemGray
        nextButton.configuration?.title = "Next"
        
        // Tell what function to run
        nextButton.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
        
        
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        // Laying out the button programmatically 
        NSLayoutConstraint.activate([
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nextButton.widthAnchor.constraint(equalToConstant: 200),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    
    
    @objc func goToNextScreen() {
        let nextScreen = SecondScreen()
        nextScreen.title = "Second Screen"
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    

}

