//
//  APIRouter.swift
//  RestCountry
//
//  Created by Tuấn Nguyễn on 4/9/25.
//

import Foundation
import Alamofire

enum APIRouter: URLRequestConvertible {
    case continent(_ region: String)
    case country(_ name: String)

    var baseURL: URL {
        return URL(string: "https://restcountries.com/v3.1")!
    }

    var method: HTTPMethod {
        return .get
    }

    var path: String {
        switch self {
        case .continent(let region):
            return "region/\(region)"
        case .country(let name):
            return "name/\(name)"
        }
    }

    var parameters: Parameters? {
        return nil // mình không cần param body
    }

    func asURLRequest() throws -> URLRequest {
        let url = baseURL.appendingPathComponent(path)
        var request = URLRequest(url: url)
        request.method = method
        return try URLEncoding.default.encode(request, with: parameters)
    }
}
