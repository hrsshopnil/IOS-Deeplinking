//
//  NavigationRouter.swift
//  DeepLinking
//
//  Created by shopnil hasan on 3/10/24.
//

import Foundation
import SwiftUI

final class NavigationRouter: ObservableObject {
    
    @Published var routes = [Route]()
    
    func push(to screen: Route) {
        guard !routes.contains(screen) else { return }
        routes.append(screen)
    }
    
    func reset() {
        routes = []
    }
}
