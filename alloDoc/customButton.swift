//
//  customButton.swift
//  alloDoc
//
//  Created by Thomas Millet on 03/05/2017.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class customButton: UIButton
{

    //MARK: Palette
    
    //Background
    let Bg_Delfaut: UIColor = UIColor.white
    let Bg_Primary: UIColor = UIColor.init(red: 2, green: 90, blue: 165, alpha: 1)
    let Bg_Success: UIColor = UIColor.init(red: 68, green: 157, blue: 68, alpha: 1)
    let Bg_Info:    UIColor = UIColor.init(red: 49, green: 176, blue: 213, alpha: 1)
    let Bg_Warning: UIColor = UIColor.init(red: 236, green: 151, blue: 31, alpha: 1)
    let Bg_Danger:  UIColor = UIColor.init(red: 201, green: 48, blue: 44, alpha: 1)
    
    //Border
    let Bd_Delfaut: UIColor = UIColor.init(red: 204, green: 204, blue: 204, alpha: 1)
    let Bd_Primary: UIColor = UIColor.init(red: 1, green: 99, blue: 31, alpha: 1)
    let Bd_Success: UIColor = UIColor.init(red: 65, green: 150, blue: 65, alpha: 1)
    let Bd_Info:    UIColor = UIColor.init(red: 42, green: 171, blue: 210, alpha: 1)
    let Bd_Warning: UIColor = UIColor.init(red: 235, green: 147, blue: 22, alpha: 1)
    let Bd_Danger:  UIColor = UIColor.init(red: 193, green: 46, blue: 42, alpha: 1)
    
    //Title
    let TitleColorBlack: UIColor = UIColor.black
    let TitleColorWhite: UIColor = UIColor.white
    
    //Insets
    let InsetsSize = UIEdgeInsetsMake(5, 10, 5, 10)
    
    //Radius
    let Radius = CGFloat(5)
    
    //Border Size
    let Bd_size = CGFloat(1)
    
    func TM_radius(_ radius: Double)
    {
        self.layer.cornerRadius = CGFloat(radius)
    }
    
    
    func TM_border_HEX(pixel: Double, couleurHEX: String)
    {
        self.layer.borderWidth = CGFloat(pixel)
        self.layer.borderColor = MyCustonColor().hexStringToUIColor(hex: "\(couleurHEX)").cgColor
    }
    
    func TM_border_RGBA(pixel: Double, rouge: Int, vert: Int, bleu: Int, opacite: Int)
    {
        self.layer.borderWidth = CGFloat(pixel)
        self.layer.borderColor = UIColor.init(red: CGFloat(rouge), green: CGFloat(vert),blue: CGFloat(bleu), alpha: CGFloat(opacite)).cgColor
    }

    
    
    func TM_delfautBtm()
    {
        //Color
        self.layer.backgroundColor  = Bg_Delfaut.cgColor
        self.layer.borderColor      = Bd_Delfaut.cgColor
        self.setTitleColor(TitleColorBlack, for: .normal)
        
        //Corner
        self.layer.cornerRadius     = Radius
        
        //Border
        self.layer.borderWidth      = Bd_size
        
        //Insets
        self.contentEdgeInsets      = InsetsSize
    }
    
    
    func TM_primaryBtm()
    {
        //Color
        self.layer.backgroundColor  = Bg_Primary.cgColor
        self.layer.borderColor      = Bd_Primary.cgColor
        self.setTitleColor(TitleColorWhite, for: .normal)
        
        //Corner
        self.layer.cornerRadius     = Radius
        
        //Border
        self.layer.borderWidth      = Bd_size
        
        //Insets
        self.contentEdgeInsets      = InsetsSize
    }
    
    func TM_successBtm()
    {
        //Color
        self.layer.backgroundColor  = Bg_Success.cgColor
        self.layer.borderColor      = Bd_Success.cgColor
        self.setTitleColor(TitleColorWhite, for: .normal)
        
        //Corner
        self.layer.cornerRadius     = Radius
        
        //Border
        self.layer.borderWidth      = Bd_size
        
        //Insets
        self.contentEdgeInsets      = InsetsSize
        
    }
    
    func TM_infoBtm()
    {
        //Color
        self.layer.backgroundColor  = Bg_Info.cgColor
        self.layer.borderColor      = Bd_Info.cgColor
        self.setTitleColor(TitleColorWhite, for: .normal)
        
        //Corner
        self.layer.cornerRadius     = Radius
        
        //Border
        self.layer.borderWidth      = Bd_size
        
        //Insets
        self.contentEdgeInsets      = InsetsSize
        
    }
    
    func TM_warningBtm()
    {
        //Color
        self.layer.backgroundColor  = Bg_Warning.cgColor
        self.layer.borderColor      = Bd_Warning.cgColor
        self.setTitleColor(TitleColorWhite, for: .normal)
        
        //Corner
        self.layer.cornerRadius     = Radius
        
        //Border
        self.layer.borderWidth      = Bd_size
        
        //Insets
        self.contentEdgeInsets      = InsetsSize
        
    }
    
    func TM_dangerBtm()
    {
        //Color
        self.layer.backgroundColor  = Bg_Danger.cgColor
        self.layer.borderColor      = Bd_Danger.cgColor
        self.setTitleColor(TitleColorBlack, for: .normal)
        
        //Corner
        self.layer.cornerRadius     = Radius
        
        //Border
        self.layer.borderWidth      = Bd_size
        
        //Insets
        self.contentEdgeInsets      = InsetsSize
        
    }
    
    func TM_ombre_Haut()
    {
        self.layer.cornerRadius = 1
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: -1.5, height: -1.5)
        self.layer.shadowOpacity = 0.5
        self.layer.shadowRadius = 1.5
        
    }
    
    func TM_ombre_bas()
    {
        self.layer.cornerRadius = 1
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 1.5, height: 1.5)
        self.layer.shadowOpacity = 0.5
        self.layer.shadowRadius = 1.5
        
    }
    
    func TM_btmInsets()
    {
        self.contentEdgeInsets = UIEdgeInsetsMake(5, 10, 5, 10)
    }

    
        
} //[end class]
