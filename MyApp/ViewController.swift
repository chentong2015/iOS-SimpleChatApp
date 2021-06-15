//
//  ViewController.swift
//  MyApp
//
//  Created by CHEN on 09/02/2018.
//  Copyright © 2018 CHEN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Les composants sur interface
    @IBOutlet weak var usernameButton: LoginTextField!
    @IBOutlet weak var passwordButton: LoginTextField!
    @IBOutlet weak var forgetButton: UIButton!
    @IBOutlet weak var buttonRegister: UIButton!
    
    //Load the view
    override func viewDidLoad() {
        super.viewDidLoad()
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Control the Rigister by the username and password : Static !
    //Use an DataBase to control this fonction later
    @IBAction func RegisterButton(_ sender: Any) {
        if usernameButton.text == "chentong" && passwordButton.text == "chentong" {
            
            
            
            // Add a new View by the identifier of the lien between these views
            //performSegue(withIdentifier: "locationView", sender: sender)
            performSegue(withIdentifier: "CustomTabBarController", sender: sender)
            print("Load Success !")
        } else {
            print("Load Failed !")
        }
    }
}

