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

    func border(couleurHEX: String)
    {
        
        self.layer.borderColor = MyCustonColor().hexStringToUIColor(hex: "\(couleurHEX)").cgColor
        
    }
    
    func delfautBtm()
    {
        self.layer.backgroundColor = MyCustonColor().hexStringToUIColor(hex: "#ffffff").cgColor
        self.setTitleColor(MyCustonColor().hexStringToUIColor(hex: "#292b2c") , for: .normal)
        self.layer.cornerRadius = CGFloat(5)
        self.layer.borderWidth = CGFloat(1)
        self.layer.borderColor = MyCustonColor().hexStringToUIColor(hex: "#cccccc").cgColor
        self.contentEdgeInsets = UIEdgeInsetsMake(5, 10, 5, 10)
    }
    
    func delfautOutBtm()
    {
        self.layer.backgroundColor = UIColor.init(colorLiteralRed: 250, green: 250, blue: 250, alpha: 0).cgColor
        self.setTitleColor(MyCustonColor().hexStringToUIColor(hex: "#0275d8") , for: .normal)
        self.layer.cornerRadius = CGFloat(5)
        self.layer.borderWidth = CGFloat(1)
        self.layer.borderColor = MyCustonColor().hexStringToUIColor(hex: "#0275d8").cgColor
        self.contentEdgeInsets = UIEdgeInsetsMake(5, 10, 5, 10)
    }
    
    func primaryBtm()
    {
        self.layer.backgroundColor = MyCustonColor().hexStringToUIColor(hex: "#025aa5").cgColor
        self.setTitleColor(MyCustonColor().hexStringToUIColor(hex: "#ffffff") , for: .normal)
        self.layer.cornerRadius = CGFloat(5)
        self.layer.borderWidth = CGFloat(1)
        self.layer.borderColor = MyCustonColor().hexStringToUIColor(hex: "#01549b").cgColor
        self.contentEdgeInsets = UIEdgeInsetsMake(5, 10, 5, 10)
    }
    
    func successBtm()
    {
        self.layer.backgroundColor = MyCustonColor().hexStringToUIColor(hex: "#449d44").cgColor
        self.setTitleColor(MyCustonColor().hexStringToUIColor(hex: "#ffffff") , for: .normal)
        self.layer.cornerRadius = CGFloat(5)
        self.layer.borderWidth = CGFloat(1)
        self.layer.borderColor = MyCustonColor().hexStringToUIColor(hex: "#419641").cgColor
        self.contentEdgeInsets = UIEdgeInsetsMake(5, 10, 5, 10)
    }

    func infoBtm()
    {
        self.layer.backgroundColor = MyCustonColor().hexStringToUIColor(hex: "#31b0d5").cgColor
        self.setTitleColor(MyCustonColor().hexStringToUIColor(hex: "#ffffff") , for: .normal)
        self.layer.cornerRadius = CGFloat(5)
        self.layer.borderWidth = CGFloat(1)
        self.layer.borderColor = MyCustonColor().hexStringToUIColor(hex: "#2aabd2").cgColor
        self.contentEdgeInsets = UIEdgeInsetsMake(5, 10, 5, 10)
    }

    func warningBtm()
    {
        self.layer.backgroundColor = MyCustonColor().hexStringToUIColor(hex: "#ec971f").cgColor
        self.setTitleColor(MyCustonColor().hexStringToUIColor(hex: "#ffffff") , for: .normal)
        self.layer.cornerRadius = CGFloat(5)
        self.layer.borderWidth = CGFloat(1)
        self.layer.borderColor = MyCustonColor().hexStringToUIColor(hex: "#eb9316").cgColor
        self.contentEdgeInsets = UIEdgeInsetsMake(5, 10, 5, 10)
    }
    
    func dangerBtm()
    {
        self.layer.backgroundColor = MyCustonColor().hexStringToUIColor(hex: "#c9302c").cgColor
        self.setTitleColor(MyCustonColor().hexStringToUIColor(hex: "#ffffff") , for: .normal)
        self.layer.cornerRadius = CGFloat(5)
        self.layer.borderWidth = CGFloat(1)
        self.layer.borderColor = MyCustonColor().hexStringToUIColor(hex: "#c12e2a").cgColor
        self.contentEdgeInsets = UIEdgeInsetsMake(5, 10, 5, 10)
    }

    func ombre()
    {
        let radius: CGFloat = self.frame.width / 2.0 //change it to .height if you need spread for height
        let shadowPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 2.1 * radius, height: self.frame.height))
        //Change 2.1 to amount of spread you need and for height replace the code for height
        
        self.layer.cornerRadius = 2
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0.5, height: 0.4)  //Here you control x and y
        self.layer.shadowOpacity = 0.5
        self.layer.shadowRadius = 5.0 //Here your control your blur
        self.layer.masksToBounds =  false
        self.layer.shadowPath = shadowPath.cgPath
    }
    
    func btmInsets()
    {
        self.contentEdgeInsets = UIEdgeInsetsMake(5, 10, 5, 10)
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
