//
//  UITexfield + Extension.swift
//  HW-4-switch-Cafe Mario
//
//  Created by Артем Галай on 15.08.22.
//

import UIKit

extension UITextField {

    convenience init(placeholder: String) {
        self.init()
        text = ""
        self.placeholder = placeholder
        layer.borderWidth = 0.1
        layer.cornerRadius = 5
        translatesAutoresizingMaskIntoConstraints = false
    }
}
