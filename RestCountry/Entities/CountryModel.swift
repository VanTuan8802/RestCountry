//
//  CountryModel.swift
//  RestCountry
//
//  Created by Tuấn Nguyễn on 4/9/25.
//

import Foundation

struct Name: Decodable {
    let common: String
    let official: String
}

struct Flags: Decodable {
    let png: String?
    let svg: String?
}

struct CountryModel: Decodable {
    let name: Name
    let cca2: String?
    let region: String?
    let subregion: String?
    let capital: [String]?
    let population: Int?
    let flags: Flags?
}
