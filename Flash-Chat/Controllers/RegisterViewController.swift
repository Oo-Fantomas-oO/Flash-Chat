//
//  File.swift
//  Flash-Chat
//
//  Created by Onopriienko.Sergii on 17.08.2021.
//

import UIKit

class RegisterViewController: UIViewController {

    //MARK: - Properties
    
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
        
        view.backgroundColor = UIColor(named: K.BrandColor.lighBlue)
        passwordView.enterButton.setTitle("Register", for: .normal)
        passwordView.enterButton.setTitleColor(UIColor(named: K.BrandColor.blue), for: .normal)
        passwordView.enterButton.addTarget(self, action: #selector(registerButtonTapped(_:)), for: .touchUpInside)
        
        addSubviews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        setupContentViewConstraints()
    }
    
    //MARK: - Func
    
    fileprivate func addSubviews(){
        view.addSubview(emailView)
        view.addSubview(passwordView)
    }
    
    @objc fileprivate func registerButtonTapped(_ sender: Any) {
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

