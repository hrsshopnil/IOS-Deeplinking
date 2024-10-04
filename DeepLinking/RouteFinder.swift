//
//  RouteFinder.swift
//  DeepLinking
//
//  Created by shopnil hasan on 4/10/24.
//

import Foundation

enum DeepLinkingUrl: String {
    case cart
}

struct RouteFinder {
    
    func find(from url: URL) -> Route? {
        guard let host = url.host() else { return nil }
        
        switch(DeepLinkingUrl(rawValue: host)) {
        case .cart:
            
            let queryParams = url.queryParameters
            guard let text = queryParams?["text"] else { return nil }
            
            return .cart(text: text)
        default:
            return nil
        }
    }
}


extension URL {
    public var queryParameters: [String: String]? {
        guard let components = URLComponents(url: self, resolvingAgainstBaseURL: true),
                let queryItems = components.queryItems else { return nil }
        
        return queryItems.reduce(into: [String: String]()) { result, item in
            result[item.name] = item.value?.replacingOccurrences(of: "+", with: " ")
        }
        
    }
}
