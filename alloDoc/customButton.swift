//
//  customButton.swift
//  alloDoc
//
//  Created by mac on 03/05/2017.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class customButton: UIButton
{
    
    func radius(_ radius: Double)
    {
        self.layer.cornerRadius = CGFloat(radius)
    }
    
    
    func border(pixel: Double, couleurHEX: String)
    {
        self.layer.borderWidth = CGFloat(pixel)
        self.layer.borderColor = MyCustonColor().hexStringToUIColor(hex: "\(couleurHEX)").cgColor
    }

    
    
    /*
     var border: Float = 0.0
     {
     didSet
     {
     self.layer.borderWidth = CGFloat(border)
     self.layer.borderColor = UIColor.black.cgColor
     }
     } //[end border]
     
     var radius: Float = 0.0
     {
     didSet
     {
     self.layer.cornerRadius = CGFloat(radius)
     }
     } //[end radius]
     
     */
    
} //[end class]
