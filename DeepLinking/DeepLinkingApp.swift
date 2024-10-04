//
//  DeepLinkingApp.swift
//  DeepLinking
//
//  Created by shopnil hasan on 2/10/24.
//

import SwiftUI

@main
struct DeepLinkingApp: App {
    @StateObject private var routeManager = NavigationRouter()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(routeManager)
                .onOpenURL { url in
                    let routeFinder = RouteFinder()
                    if let route = routeFinder.find(from: url) {
                        guard !routeManager.routes.contains(route) else { return }
                        routeManager.push(to: route)
                    }
                }
        }
    }
}
