//
//  ChatsTableViewCell.swift
//  WeChatClone
//
//  Created by CHEN on 19/02/2018.
//  Copyright © 2018 CHEN. All rights reserved.
//

import UIKit

// This is the Cell of the Table Chat View
class ChatsTableViewCell: UITableViewCell {

    // chaque Cell de la Table contient les paties
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = #imageLiteral(resourceName: "friend1")
        imageView.layer.cornerRadius = 5
        return imageView
    }()
    
    let timeStampLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "10: 15 PM"
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 12)
        label.textAlignment = .right
        //label.backgroundColor = .green
        return label
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
    
    let lastMessageLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "this is the last message with tom, how are you today"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 12)
        //label.backgroundColor = .red
        return label
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setUpView()
    }
    
    // Do not use the interface to set up these properties 
    func setUpView() {
        // Add the image View in the cell
        self.addSubview(profileImageView)
        // Set the position and the size of the image in the Cell
        profileImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 40).isActive = true
        // Set it to the center of the line
        profileImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        
        // Add the Time Label in the Cell
        self.addSubview(timeStampLabel)
        timeStampLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        timeStampLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        timeStampLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        timeStampLabel.widthAnchor.constraint(equalToConstant: 60).isActive = true
        
        
        // Add the Username Label in the Cell : Set the position absolu !!
        self.addSubview(usernameLabel)
        usernameLabel.rightAnchor.constraint(equalTo: timeStampLabel.leftAnchor).isActive = true
        usernameLabel.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 8).isActive = true
        usernameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        usernameLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        // Add the lastMessage Label in the Cell : Set the position absolu !!
        self.addSubview(lastMessageLabel)
        lastMessageLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        lastMessageLabel.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 8).isActive = true
        lastMessageLabel.topAnchor.constraint(equalTo: usernameLabel.bottomAnchor, constant: 5).isActive = true
        lastMessageLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
