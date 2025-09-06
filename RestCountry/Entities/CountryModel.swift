//
//  CountryModel.swift
//  RestCountry
//
//  Created by Tuấn Nguyễn on 4/9/25.
//

import Foundation

struct Name: Decodable, Hashable {
    let common: String
    let official: String
}

struct Flags: Decodable, Hashable {
    let png: String?
    let svg: String?
}

struct CountryModel: Decodable, Identifiable, Hashable {
    var id: String { cca2 ?? UUID().uuidString }
    let name: Name
    let cca2: String?
    let region: String?
    let subregion: String?
    let capital: [String]?
    let population: Int?
    let flags: Flags?
}
