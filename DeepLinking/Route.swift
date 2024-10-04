//
//  Route.swift
//  DeepLinking
//
//  Created by shopnil hasan on 3/10/24.
//

import Foundation
import SwiftUI

enum Route {
    case menuItem(item: any MenuItem)
    case cart(text: String)
    case ingredient
    case location
}

extension Route: View {
    
    var body: some View {
        switch self {
        case .menuItem(let item):
            switch item {
            case is Food :
                FoodView(item: item)
            case is Drink:
                Text("Drink: \(item.name)")
            default:
                EmptyView()
            }
        case .cart(let text):
            CartView(text: text)
        case .ingredient:
            IngredientView()
            case .location:
            LocationView()
        }
    }
}

extension Route: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.hashValue)
    }
    
    static func == (lhs: Route, rhs: Route) -> Bool {
        switch(lhs, rhs) {
        case(.menuItem(let lhsItem), .menuItem(let rhsItem)):
            return lhsItem.id == rhsItem.id
        default:
            return false
        }
    }
}
