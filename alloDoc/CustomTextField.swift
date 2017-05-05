//
//  CustomTextField.swift
//  alloDoc
//
//  Created by thomas millet on 05/05/2017.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {

    func TM_txtField_disabled()
    {
        self.isUserInteractionEnabled = false
    }
    
    func TM_barder_txtField_Enabled()
    {
        self.isUserInteractionEnabled = true
    }

}
