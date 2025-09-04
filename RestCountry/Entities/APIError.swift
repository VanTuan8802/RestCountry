//
//  APIError.swift
//  RestCountry
//
//  Created by Tuấn Nguyễn on 4/9/25.
//


import Foundation
import Alamofire

enum APIError: Error, LocalizedError {
    case invalidURL
    case statusCode(Int, Data?)
    case decoding(Error)
    case network(AFError)
    case unknown(Error)

    var errorDescription: String? {
        switch self {
        case .invalidURL: return "URL invalid."
        case .statusCode(let code, _): return "Error HTTP status code: \(code)"
        case .decoding(let err): return "Decode JSON Error`: \(err.localizedDescription)"
        case .network(let err): return "Error Network: \(err.localizedDescription)"
        case .unknown(let err): return "Unknown Error: \(err.localizedDescription)"
        }
    }
}
