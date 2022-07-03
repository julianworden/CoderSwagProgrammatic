//
//  UILabel+style.swift
//  CoderSwagProgrammatic
//
//  Created by Julian Worden on 7/2/22.
//

import Foundation
import UIKit

extension UILabel {
    func style(as textStyle: TextStyle) {
        textColor = textStyle.textColor
        font = textStyle.font
    }
}
