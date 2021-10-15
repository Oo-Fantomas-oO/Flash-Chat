//
//  CustomUIView.swift
//  Flash-Chat
//
//  Created by Onopriienko.Sergii on 10.08.2021.
//

import UIKit

class CustomEmailView: UIView {
    
    lazy var textFieldImage: UIImageView = {
        var textFieldImage = UIImageView()
        textFieldImage.contentMode = .scaleAspectFit
        
        return textFieldImage
    }()
 
    lazy var emailTextfield: CustomTextFieldClass = {
        var emailTextfield = CustomTextFieldClass()
        emailTextfield.placeholder = "Email"
        let imageView = UIImageView(image: UIImage(systemName: "at"))
        emailTextfield.leftView = imageView
        emailTextfield.leftView?.tintColor = .systemGray
        
        return emailTextfield
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentMode = .scaleToFill
                
        addSubviews()
        setupImageView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init has not been implemented")
    }

    //MARK: - Func
    
    fileprivate func addSubviews() {
        addSubview(textFieldImage)
        addSubview(emailTextfield)
    }
    
    fileprivate func setupImageView() {
        textFieldImage.image = UIImage(named: K.ImageName.field)
        textFieldImage.contentMode = .scaleAspectFit
        
        setupImageViewConstraints()
    }
    
    //MARK: - Constraints
    
    fileprivate func setupImageViewConstraints() {
        
        self.textFieldImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            textFieldImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 20.0),
            textFieldImage.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            textFieldImage.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            textFieldImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20.0),
            
            emailTextfield.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 51.0),
            emailTextfield.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 49.0),
            emailTextfield.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -49.0),
            emailTextfield.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -81.0)
            
        ])
    }
}
