//
//  ChatViewController.swift
//  Flash-Chat
//
//  Created by Onopriienko.Sergii on 18.08.2021.
//

import UIKit

class ChatViewController: UIViewController {
    
    lazy var messageView: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor(named: K.BrandColor.purple)
        return view
    }()
    
    lazy var messageTextField: CustomTextFieldClass = {
        var messageTextField = CustomTextFieldClass()
        messageTextField.placeholder = "Write a message..."
        messageTextField.backgroundColor = .systemBackground
        messageTextField.textAlignment = .left
        
        return messageTextField
    }()
    
    lazy var sendButton: CustomButtonClass = {
        var button = CustomButtonClass()
        button.setTitle("", for: .normal)
        button.setBackgroundImage(UIImage(systemName: "paperplane.fill"), for: .normal)
        button.tintColor = .white
        return button
    }()

    var chatTableView: UITableView = {
        let table = UITableView()
        table.register(CustomTableViewCell.self, forCellReuseIdentifier: K.cellInedtifier)
        
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chatTableView.delegate = self
        chatTableView.dataSource = self
    
        view.backgroundColor = UIColor(named: K.BrandColor.purple)
        addSubviews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        setupContentViewConstraints()
    }
    
    fileprivate func addSubviews() {
//        view.addSubview(messageTextField)
        view.addSubview(messageView)
        view.addSubview(chatTableView)
        
        messageView.addSubview(messageTextField)
        messageView.addSubview(sendButton)
    }
    
    fileprivate func setupContentViewConstraints() {
        
        chatTableView.translatesAutoresizingMaskIntoConstraints    = false
        messageView.translatesAutoresizingMaskIntoConstraints      = false
        
        NSLayoutConstraint.activate([
        
            messageView.heightAnchor.constraint(equalToConstant: 60.0),
            messageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            messageView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            messageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            chatTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            chatTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            chatTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            chatTableView.bottomAnchor.constraint(equalTo: messageView.topAnchor),
                        
            messageTextField.leadingAnchor.constraint(equalTo: messageView.leadingAnchor, constant: 20.0),
            messageTextField.trailingAnchor.constraint(equalTo: sendButton.leadingAnchor, constant: -20.0),
            messageTextField.bottomAnchor.constraint(equalTo: messageView.bottomAnchor),
            messageTextField.heightAnchor.constraint(equalToConstant: 40.0),

            sendButton.heightAnchor.constraint(equalToConstant: 40.0),
            sendButton.widthAnchor.constraint(equalToConstant: 40.0),
            sendButton.trailingAnchor.constraint(equalTo: messageView.trailingAnchor, constant: -20.0),
            sendButton.topAnchor.constraint(equalTo: messageView.topAnchor, constant: 20.0),
            
        ])
    }
}
