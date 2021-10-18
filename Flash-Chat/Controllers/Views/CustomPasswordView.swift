//
//  CustomLoginView.swift
//  Flash-Chat
//
//  Created by Onopriienko.Sergii on 13.08.2021.
//

import UIKit

class CustomPasswordView: UIView {
    
    lazy var passwordTextField: CustomTextFieldClass = {
        var passwordTextField = CustomTextFieldClass()
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        let imageView = UIImageView(image: UIImage(systemName: "key"))
        passwordTextField.leftView = imageView
        passwordTextField.leftView?.tintColor = .systemGray
        
        return passwordTextField
    }()
    
    lazy var passwordImageView: UIImageView = {
        var passImage = UIImageView()
        passImage.contentMode = .scaleAspectFit
        
        return passImage
    }()

    lazy var enterButton: CustomButtonClass = {
        var button = CustomButtonClass()
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubviews()
        setupImageView()
        setupLoginButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Func
    
    fileprivate func addSubviews() {
        addSubview(passwordImageView)
        addSubview(passwordTextField)
        addSubview(enterButton)
    }

    fileprivate func setupImageView() {
        passwordImageView.image = UIImage(named: K.ImageName.field)
        passwordImageView.contentMode = .scaleAspectFit
        
        setupImageViewConstraints()
    }
    
    fileprivate func setupLoginButton() {
        enterButton.setTitle("Log In", for: .normal)
        enterButton.setTitleColor(UIColor(named: K.BrandColor.lighBlue), for: .normal)
    }
    
    //MARK: - Constraints
    
    fileprivate func setupImageViewConstraints() {
        
        passwordImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            passwordImageView.topAnchor.constraint(equalTo: topAnchor, constant: 20.0),
            passwordImageView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            passwordImageView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            passwordImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20.0),
            
            passwordTextField.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 51.0),
            passwordTextField.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 49.0),
            passwordTextField.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -49.0),
            passwordTextField.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -81.0),
            
            enterButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 31),
            enterButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            enterButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
        ])
    }
}
