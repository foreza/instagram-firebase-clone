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
        button.setImage(#imageLiteral(resourceName: "plus_photo").withRenderingMode(.alwaysOriginal), for: .normal)
        button.backgroundColor = UIColor.white
        
        
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
    
    let usernameTextField: UITextField = {
         let textField = UITextField()
          textField.placeholder = "Username"
          textField.translatesAutoresizingMaskIntoConstraints = false
          textField.backgroundColor = UIColor.init(white: 0, alpha: 0.05)
          textField.borderStyle = UITextField.BorderStyle.roundedRect
          textField.font = UIFont.systemFont(ofSize: 14)
          return textField
      }()
    
    let passwordTextField: UITextField = {
         let textField = UITextField()
          textField.placeholder = "Password"
        textField.isSecureTextEntry = true
          textField.translatesAutoresizingMaskIntoConstraints = false
          textField.backgroundColor = UIColor.init(white: 0, alpha: 0.05)
          textField.borderStyle = UITextField.BorderStyle.roundedRect
          textField.font = UIFont.systemFont(ofSize: 14)
          return textField
      }()
    
    let signupButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign up", for: UIControl.State.normal)
        button.backgroundColor = UIColor(red: 149/255, green: 204/255, blue: 244/255, alpha: 1)
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.addSubview(plusPhotoButton);
        
        plusPhotoButton.heightAnchor.constraint(equalToConstant: 140).isActive = true;
        plusPhotoButton.widthAnchor.constraint(equalToConstant: 140).isActive = true;
        plusPhotoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true;
        plusPhotoButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true;

        
        
        
        setupInputFields()
        
  
        
   
        
    }
    
    
    fileprivate func setupInputFields() {
        
        let greenView = UIView()
        greenView.backgroundColor = UIColor.green
        
        let stackView = UIStackView(arrangedSubviews: [emailTextField, usernameTextField, passwordTextField, signupButton])
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.spacing = 10
        
        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: plusPhotoButton.bottomAnchor, constant: 20),
            stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40),
            stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40),
            stackView.heightAnchor.constraint(equalToConstant: 200)
        ])
        
    }


}

