//
//  CustomButton.swift
//  Flash-Chat
//
//  Created by Onopriienko.Sergii on 30.07.2021.
//

import UIKit

class CustomButtonClass: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initializeButton()
    }
    
    required init(coder: NSCoder) {
        fatalError("init has not been implemented")
    }
    
    fileprivate func initializeButton() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .none
        self.setTitle("Default", for: .normal)
        self.setTitleColor(.white, for: .normal)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        self.layer.cornerRadius = 15
        self.layer.masksToBounds = true
    }
}
