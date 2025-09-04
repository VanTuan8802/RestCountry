//
//  APIService.swift
//  RestCountry
//
//  Created by Tuấn Nguyễn on 4/9/25.
//


import Alamofire

final class APIService {
    static let shared = APIService()
    
    private init() {}
    
    func request<T: Decodable>(_ route: APIRouter) async throws -> T {
        return try await withCheckedThrowingContinuation { continuation in
            AF.request(route)
                .validate()
                .responseDecodable(of: T.self) { response in
                    switch response.result {
                    case .success(let data):
                        continuation.resume(returning: data)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                    }
                }
        }
    }
}
