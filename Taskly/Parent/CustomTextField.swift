//
//  CustomTextField.swift
//  Taskly
//
//  Created by PCS213 on 05/07/22.
//

import Foundation
import UIKit

class CustomTextField : UITextField {
    required init?(coder: NSCoder){
        super.init(coder: coder)
        let bottomLine = UIView()
        bottomLine.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(bottomLine)
        
        bottomLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        bottomLine.widthAnchor.constraint(equalTo:self.widthAnchor).isActive = true
        bottomLine.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -1).isActive = true
        bottomLine.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        bottomLine.backgroundColor = UIColor.blue
        
        self.borderStyle = UITextField.BorderStyle.none
        self.layoutIfNeeded()
    }
}
