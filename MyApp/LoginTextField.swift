//
//  LoginTextField.swift
//  MyApp
//
//  Created by CHEN on 09/02/2018.
//  Copyright © 2018 CHEN. All rights reserved.
//

import UIKit

@IBDesignable

//Cette configuartion permet d'exécuter sur un device vesion 7.0
class LoginTextField: UITextField {
    
    //définir le style du TextField par les fonction de la class
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.borderColor = UIColor(white: 231/255, alpha: 1).cgColor
        self.layer.borderWidth = 1
    }
 
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 8, dy: 7)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return textRect(forBounds: bounds)
    }

}
