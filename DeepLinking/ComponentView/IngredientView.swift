//
//  IngredientView.swift
//  DeepLinking
//
//  Created by shopnil hasan on 4/10/24.
//

import SwiftUI

struct IngredientView: View {
    @EnvironmentObject private var routerManager: NavigationRouter
    var body: some View {
        Button {
            routerManager.push(to: Route.location)
        } label: {
            Text("Ingredients")
        }
    }
}

#Preview {
    IngredientView()
        .environmentObject(NavigationRouter())
}
