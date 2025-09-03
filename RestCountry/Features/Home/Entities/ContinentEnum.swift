//
//  ContinentEnum.swift
//  RestCountry
//
//  Created by Tuấn Nguyễn on 3/9/25.
//

import Foundation
import SwiftUI

enum ContinentEnum: CaseIterable {
    case asia
    case europe
    case northAmerica
    case southAmerica
    case antarctica
    case africa
    case australia

    var name : String {
        switch self {
        case .asia:
            return "Asia"
        case .europe:
            return "Europe"
        case .northAmerica:
            return "North America"
        case .southAmerica:
            return "South America"
        case .antarctica:
            return "Antarctica"
        case .africa:
            return "Africa"
        case .australia:
            return "Australia"
        }
    }

    var imageName : Image {
        switch self {
        case .asia:
            return Image(.asia)
        case .europe:
            return Image(.europe)
        case .northAmerica:
            return Image(.northAmerica)
        case .southAmerica:
            return Image(.southAmerica)
        case .antarctica:
            return Image(.antarctica)
        case .africa:
            return Image(.africa)
        case .australia:
            return Image(.australia)
        }
    }
}
