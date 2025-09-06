//
//  ContinentEnum.swift
//  RestCountry
//
//  Created by Tuấn Nguyễn on 3/9/25.
//

import SwiftUI

enum ContinentEnum: String, CaseIterable {
    case asia
    case europe
    case northAmerica
    case southAmerica
    case antarctic
    case africa
    case australia
    
    var name: String {
        switch self {
        case .asia: return "Asia"
        case .europe: return "Europe"
        case .northAmerica: return "North America"
        case .southAmerica: return "South America"
        case .antarctic: return "Antarctic"
        case .africa: return "Africa"
        case .australia: return "Australia"
        }
    }
    
    var imageName: Image {
        switch self {
        case .asia: return Image(.asia)
        case .europe: return Image(.europe)
        case .northAmerica: return Image(.northAmerica)
        case .southAmerica: return Image(.southAmerica)
        case .antarctic: return Image(.antarctica)
        case .africa: return Image(.africa)
        case .australia: return Image(.australia)
        }
    }
    
    var apiValue: String {
        switch self {
        case .asia: return "asia"
        case .europe: return "europe"
        case .africa: return "africa"
        case .australia: return "oceania"
        case .antarctic: return "antarctic"
        case .northAmerica, .southAmerica: return "americas" 
        }
    }
    
    var path: String { "region/\(apiValue)" }
    
    var subregionFilter: String? {
        switch self {
        case .northAmerica: return "North America"
        case .southAmerica: return "South America"
        default: return nil
        }
    }
}
