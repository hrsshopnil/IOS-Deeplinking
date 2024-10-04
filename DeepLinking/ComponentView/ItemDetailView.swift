//
//  ItemDetailView.swift
//  DeepLinking
//
//  Created by shopnil hasan on 2/10/24.
//

import SwiftUI

struct ItemDetailView: View {
    
    @EnvironmentObject private var routerManager: NavigationRouter
    let menu: MenuItem
    
    var body: some View {
        LabeledContent(menu.name, value: menu.price, format: .currency(code: "BDT"))
    }
}

#Preview {
    ItemDetailView(menu: Food(name: "Coke", title: "Coke", description: "", price: 5.6))
        .environmentObject(NavigationRouter())
}
