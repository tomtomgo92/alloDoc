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
    
    var radius: Float = 0.0
    {
        didSet
        {
            self.layer.cornerRadius = CGFloat(radius)
        }
    } //[end radius]
    
    

    
} //[end class]
