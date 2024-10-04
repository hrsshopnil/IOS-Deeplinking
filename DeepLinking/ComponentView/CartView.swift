//
//  CartView.swift
//  DeepLinking
//
//  Created by shopnil hasan on 4/10/24.
//

import SwiftUI

struct CartView: View {
    let text: String
    var body: some View {
        NavigationLink(value: Route.ingredient) {
            Text(text)
        }
    }
}

#Preview {
    CartView(text: "hello")
}
