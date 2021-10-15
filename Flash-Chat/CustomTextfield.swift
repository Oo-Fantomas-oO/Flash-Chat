//
//  CustomTextfield.swift
//  Flash-Chat
//
//  Created by Onopriienko.Sergii on 10.08.2021.
//

import UIKit

class CustomTextFieldClass: UITextField {
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        initializeTextField()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init has not been implemented")
    }
    
    fileprivate func initializeTextField() {
        translatesAutoresizingMaskIntoConstraints = false
        font?.withSize(25.0)
        minimumFontSize = 17.0
        placeholder = "Default"
        textAlignment = .center
        clearButtonMode = UITextField.ViewMode.always
        leftViewMode = UITextField.ViewMode.always
        layer.cornerRadius = 5
        layer.masksToBounds = true
    }
}
