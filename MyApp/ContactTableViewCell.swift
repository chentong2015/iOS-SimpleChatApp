//
//  ContactTableViewCell.swift
//  WeChatClone
//
//  Created by CHEN on 19/02/2018.
//  Copyright © 2018 CHEN. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = #imageLiteral(resourceName: "friend1")
        imageView.layer.cornerRadius = 5
        return imageView
    }()
    
    let usernameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "chentong"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 18)
        //label.backgroundColor = .gray
        return label
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
         self.setUpView()
    }

    func setUpView(){
        self.addSubview(profileImageView)
        
        // Set the position and the size of the image in the Cell
        profileImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 40).isActive = true
        // Set it to the center of the line
        profileImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        
        // Add the Username Label in the Cell : Set the position absolu !!
        self.addSubview(usernameLabel)
        usernameLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        usernameLabel.centerYAnchor.constraint(equalTo: profileImageView.centerYAnchor).isActive = true
        usernameLabel.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 8).isActive = true
        usernameLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
}
