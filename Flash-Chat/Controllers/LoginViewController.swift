//
//  LoginViewController.swift
//  Flash-Chat
//
//  Created by Onopriienko.Sergii on 10.08.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    lazy var emailView: CustomEmailView = {
        var emailView = CustomEmailView()
        return emailView
    }()
    
    lazy var passwordView: CustomPasswordView = {
        var passView = CustomPasswordView()
        return passView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(named: K.BrandColor.blue)
        
        addSubviews()
        
        passwordView.enterButton.addTarget(self, action: #selector(logInButtonTapped), for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        setupContentViewConstraints()
    }

    //MARK: - Func
    
    fileprivate func addSubviews() {
        view.addSubview(emailView)
        view.addSubview(passwordView)
    }
    
    @objc fileprivate func logInButtonTapped() {
        let chatVC = ChatViewController()
        navigationController?.pushViewController(chatVC, animated: true)
    }
    
    //MARK: - Constraints
    
    fileprivate func setupContentViewConstraints() {
                     
        NSLayoutConstraint.activate([
        
            emailView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            emailView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            emailView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
//            emailView.heightAnchor.constraint(equalToConstant: 177.0),
            
            passwordView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            passwordView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            passwordView.topAnchor.constraint(equalTo: emailView.bottomAnchor, constant: -100),
//            passwordView.heightAnchor.constraint(equalToConstant: 177.0)
        ])
    }
}
