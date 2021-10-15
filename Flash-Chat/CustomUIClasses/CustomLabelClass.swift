//
//  CustomLabel.swift
//  Flash-Chat
//
//  Created by Onopriienko.Sergii on 29.07.2021.
//

import UIKit

class CustomLabelClass: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initializeLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init has not been implemented")
    }
    
    fileprivate func initializeLabel() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.text = "Default"
        self.textAlignment = .right
        self.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 30.0)
        self.textColor = .black
        self.numberOfLines = 1
    }
}
