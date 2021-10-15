//
//  ViewController.swift
//  Flash-Chat
//
//  Created by Onopriienko.Sergii on 29.07.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    lazy var logoNameLabel: CustomLabelClass = {
        let label = CustomLabelClass()
        label.text = K.appName
        label.font = .systemFont(ofSize: 50.0, weight: .black)
        label.textColor = UIColor(named: K.BrandColor.blue)
        return label
    }()

    lazy var logInButton: CustomButtonClass = {
        let button = CustomButtonClass()
        button.setTitle("Log In", for: .normal)
        button.backgroundColor = UIColor(named: K.BrandColor.blue)
        button.addTarget(self, action: #selector(logInButoonTapped(_:)), for: .touchUpInside)
        return button
    }()
    
    lazy var registerButton: CustomButtonClass = {
        let button = CustomButtonClass()
        button.setTitle("Register", for: .normal)
        button.setTitleColor(UIColor(named: K.BrandColor.blue), for: .normal)
        button.backgroundColor = UIColor(named: K.BrandColor.lighBlue)
        button.addTarget(self, action: #selector(registerButtonTapped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        addSubviews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        setupContentViewConstraints()
    }

    fileprivate func addSubviews() {
        view.addSubview(logoNameLabel)
        view.addSubview(logInButton)
        view.addSubview(registerButton)
    }
    
    //MARK: - Actions
    
    @objc fileprivate func logInButoonTapped(_ sender: Any) {
        
        let loginVC = LoginViewController()
//        loginVC.title = "Login"
//        let navVC = UINavigationController(rootViewController: loginVC)
//        navVC.modalPresentationStyle = .fullScreen
//        present(navVC, animated: true, completion: nil)
        navigationController?.modalPresentationStyle = .overCurrentContext
        navigationController?.pushViewController(loginVC, animated: true)
    }
    
    @objc fileprivate func registerButtonTapped() {
        let registerVC = RegisterViewController()
        present(registerVC, animated: true, completion: nil)
    }
    
    //MARK: - Constraints

    fileprivate func setupContentViewConstraints() {
        NSLayoutConstraint.activate([
            logoNameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            logoNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            registerButton.bottomAnchor.constraint(equalTo: logInButton.safeAreaLayoutGuide.topAnchor, constant: -10.0),
            registerButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10.0),
            registerButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10.0),
            
            logInButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10.0),
            logInButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10.0),
            logInButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10.0)
        ])
    }
}

