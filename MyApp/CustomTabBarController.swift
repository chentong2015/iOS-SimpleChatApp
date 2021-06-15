//
//  CustomTabBarController.swift
//  WeChatClone
//
//  Created by CHEN on 19/02/2018.
//  Copyright © 2018 CHEN. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
 
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // créer les 4 tableViewController, les afficher par Navigation Controller
        let chatViewController = ChatsTableViewController()
        chatViewController.tabBarItem.title = "Chats"
        chatViewController.tabBarItem.image = #imageLiteral(resourceName: "chat-icon")
        chatViewController.tabBarItem.selectedImage = #imageLiteral(resourceName: "chat-icon")
        let chatNav = UINavigationController(rootViewController: chatViewController)
        
        let contactViewController = ContactTableViewController()
        contactViewController.tabBarItem.title = "Contacts"
        contactViewController.tabBarItem.image = #imageLiteral(resourceName: "contact-icon")
        contactViewController.tabBarItem.selectedImage = #imageLiteral(resourceName: "contact-icon")
        let ContactNav = UINavigationController(rootViewController: contactViewController)
        
        let discoverViewController = DiscoverTableViewController()
        discoverViewController.tabBarItem.title = "Discover"
        discoverViewController.tabBarItem.image = #imageLiteral(resourceName: "Discover-icon")
        discoverViewController.tabBarItem.selectedImage = #imageLiteral(resourceName: "Discover-icon")
        let DiscoverNav = UINavigationController(rootViewController: discoverViewController)
        
        let meViewController = MeTableViewController()
        meViewController.tabBarItem.title = "Me"
        meViewController.tabBarItem.image = #imageLiteral(resourceName: "Me-icon")
        meViewController.tabBarItem.selectedImage = #imageLiteral(resourceName: "Me-icon")
        let MeNav = UINavigationController(rootViewController: meViewController)
        
        // An table of controller : an array of view
        self.viewControllers = [chatNav, ContactNav, DiscoverNav, MeNav]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
