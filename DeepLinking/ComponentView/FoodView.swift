//
//  FoodView.swift
//  DeepLinking
//
//  Created by shopnil hasan on 4/10/24.
//

import SwiftUI

struct FoodView: View {
    @EnvironmentObject private var routerManager: NavigationRouter
    let item: MenuItem
    var body: some View {
        Button {
            routerManager.reset()
        }label: {
            Text(item.title)
        }
    }
}

#Preview {
    FoodView(item: Food(name: "", title: "", description: "", price: 7.8))
        .environmentObject(NavigationRouter())
}
