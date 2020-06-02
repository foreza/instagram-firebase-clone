//
//  ViewController.swift
//  yvonneagram
//
//  Created by Jason Chiu on 5/25/20.
//  Copyright © 2020 Jason Chiu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let plusPhotoButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "plus_photo"), for: .normal)
        button.backgroundColor = UIColor.gray
        
        // These do the same thing. The below is considered short-hand (implicit member expression)
//        button.backgroundColor = .gray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button;
    }()
    
    let emailTextField: UITextField = {
       let textField = UITextField()
        textField.placeholder = "Email"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = UIColor.init(white: 0, alpha: 0.05)
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.font = UIFont.systemFont(ofSize: 14)
        return textField
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.addSubview(plusPhotoButton);
        
        plusPhotoButton.heightAnchor.constraint(equalToConstant: 140).isActive = true;
        plusPhotoButton.widthAnchor.constraint(equalToConstant: 140).isActive = true;
        plusPhotoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true;
        plusPhotoButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true;
        // Note: this fails with autolayout
        // plusPhotoButton.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        // plusPhotoButton.center = view.center;
        
        
        view.addSubview(emailTextField);
        
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: plusPhotoButton.bottomAnchor, constant: 40),
            emailTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40),
            emailTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40),
            emailTextField.heightAnchor.constraint(equalToConstant: 50)
         ])
        
  
        
    }


}

