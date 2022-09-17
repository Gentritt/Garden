//
//  WebService.swift
//  GardenAp11
//
//  Created by TestPc on 4.9.22.
//

import Foundation
enum NetworkError: Error {
    case badUrl
    case invalidRequest
}

class Webservice {
    
    func getAllVegetables(url: URL?) async throws -> [Vegetable] {
        
        guard let url = url else {
            throw NetworkError.badUrl
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            throw NetworkError.invalidRequest
        }
        
        let vegetables = try? JSONDecoder().decode([Vegetable].self, from: data)
        return vegetables ?? []
    }
    
}
