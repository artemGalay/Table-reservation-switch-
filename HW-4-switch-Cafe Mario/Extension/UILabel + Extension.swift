//
//  UILabel + Extension.swift
//  HW-4-switch-Cafe Mario
//
//  Created by Артем Галай on 15.08.22.
//

import UIKit

extension UILabel {

    convenience init(text: String) {
        self.init()
        self.text = text
        font = UIFont.systemFont(ofSize: 20)
        textColor = .systemPink
        translatesAutoresizingMaskIntoConstraints = false
    }
}

