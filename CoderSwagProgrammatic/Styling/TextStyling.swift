//
//  TextStyling.swift
//  CoderSwagProgrammatic
//
//  Created by Julian Worden on 7/2/22.
//

import Foundation
import UIKit

enum TextStyle {
    case title
    case subtitle
    case body
    case faded

    var textColor: UIColor {
        switch self {
        case .title:
            return UIColor.white
        case .subtitle, .body:
            return UIColor.black
        case .faded:
            return UIColor.lightGray
        }
    }

    var font: UIFont {
        switch self {
        case .title:
            return UIFont(name: "Avenir Heavy", size: 25) ?? .systemFont(ofSize: 25)
        case .subtitle:
            return UIFont(name: "Avenir Book", size: 17) ?? .systemFont(ofSize: 17)
        case .body, .faded:
            return UIFont(name: "Avenir Book", size: 14) ?? .systemFont(ofSize: 14)
        }
    }
}
