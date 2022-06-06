//
//  FontExtension.swift
//  PasteBoard
//
//  Created by developer on 6/6/22.
//

import Foundation
import SwiftUI

enum fonts: String {
    case medium = "Poppins-Medium"
    case regular = "Poppins-Regular"
    case semiBold = "Poppins-SemiBold"
}

extension Font {
    static let sidebarItem = Font.custom(fonts.regular.rawValue, size: 26.0)
    static let sidebarClose = Font.system(size: 10.0, weight: .bold, design: .rounded)
    
    static let itemHour = Font.custom(fonts.semiBold.rawValue, size: 12.0)
    static let itemTextAndLink = Font.custom(fonts.semiBold.rawValue, size: 12.0)
}
