//
//  ChatViewController.swift
//  Flash-Chat
//
//  Created by Onopriienko.Sergii on 18.08.2021.
//

import UIKit

class ChatViewController: UIViewController {
    
    lazy var messageTextField: CustomTextFieldClass = {
        var messageTextField = CustomTextFieldClass()
        messageTextField.placeholder = "Write a message..."
        messageTextField.backgroundColor = .systemBackground
        messageTextField.textAlignment = .left
        
        return messageTextField
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
        view.addSubview(messageTextField)
        view.addSubview(chatTableView)
    }
    
    fileprivate func setupContentViewConstraints() {
        
        chatTableView.translatesAutoresizingMaskIntoConstraints    = false
        
        NSLayoutConstraint.activate([
        
            messageTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0.0),
            messageTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0.0),
            messageTextField.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0.0),
            messageTextField.heightAnchor.constraint(equalToConstant: 60.0),
            
            chatTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0.0),
            chatTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0.0),
            chatTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0.0),
            chatTableView.bottomAnchor.constraint(equalTo: messageTextField.topAnchor, constant: 0.0)
            
        ])
    }
}
