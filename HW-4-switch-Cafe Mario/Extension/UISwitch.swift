//
//  UISwitch.swift
//  HW-4-switch-Cafe Mario
//
//  Created by Артем Галай on 15.08.22.
//

import UIKit

extension UISwitch {

    convenience init(isOn: Bool) {
        self.init()
        self.isOn = isOn
        onTintColor = .systemGreen
        translatesAutoresizingMaskIntoConstraints = false
    }
}
