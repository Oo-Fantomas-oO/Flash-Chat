//
//  CustomTableViewCell.swift
//  Flash-Chat
//
//  Created by Onopriienko.Sergii on 04.10.2021.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    var myLable: UILabel = {
        let myLabel = UILabel()
        myLabel.textColor = .white
        myLabel.font = .systemFont(ofSize: 17, weight: .bold)
        myLabel.text = "Custom Cell!"
        
        return myLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = .orange
        contentView.addSubview(myLable)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()

        myLable.frame = CGRect(x: 5,
                               y: 5,
                               width: contentView.frame.size.width - 70,
                               height: contentView.frame.size.height - 10)
    }
}
