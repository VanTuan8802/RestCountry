//
//  Font+.swift
//  RestCountry
//
//  Created by Tuấn Nguyễn on 3/9/25.
//

import Foundation
import SwiftUI

enum FontFamily {
    case regular
    case medium
    case semiBold
    case bold

    var font: String {
        switch self {
        case .regular:
            return "Poppins-Regular"
        case .medium:
            return "Poppins-Medium"
        case .semiBold:
            return "Poppins-Semibold"
        case .bold:
            return "Poppins-Bold"
        }
    }
}

extension Font {
    /// Regular
    static let regular8 = Font.custom(FontFamily.regular.font, size: 8)

    /// Medium
    static let medium10 = Font.custom(FontFamily.medium.font, size: 10)
    static let medium16 = Font.custom(FontFamily.medium.font, size: 16)

    /// SemiBold
    static let semibold12 = Font.custom(FontFamily.semiBold.font, size: 12)
    static let semibold14 = Font.custom(FontFamily.semiBold.font, size: 14)
    static let semibold16 = Font.custom(FontFamily.semiBold.font, size: 16)
    static let semibold20 = Font.custom(FontFamily.semiBold.font, size: 20)
    static let semibold24 = Font.custom(FontFamily.semiBold.font, size: 24)

    /// Bold
    static let bold12 = Font.custom(FontFamily.bold.font, size: 12)

}
