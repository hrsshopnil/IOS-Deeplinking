//
//  ContentView.swift
//  DeepLinking
//
//  Created by shopnil hasan on 2/10/24.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject private var path: NavigationRouter
    
    var body: some View {
        
        NavigationStack(path: $path.routes) {
            List {
                Section("Food") {
                    ForEach(foods) { item in
                        NavigationLink(value: Route.menuItem(item: item)) {
                            ItemDetailView(menu: item)
                        }
                    }
                }
                
                Section("Drink") {
                    ForEach(drinks) { item in
                        NavigationLink(value: Route.menuItem(item: item)) {
                            ItemDetailView(menu: item)
                        }
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Menu")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        path.push(to: .cart(text: "hello"))
                    } label: {
                        Image(systemName: "cart")
                    }
                }
            }
            .navigationDestination(for: Route.self) { $0 }
            .environmentObject(path)
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(NavigationRouter())
}
