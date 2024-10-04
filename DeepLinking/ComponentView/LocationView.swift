//
//  LocationView.swift
//  DeepLinking
//
//  Created by shopnil hasan on 4/10/24.
//

import SwiftUI

struct LocationView: View {
    @EnvironmentObject private var routerManager: NavigationRouter
    var body: some View {
        HStack {
            Button {
               _ = routerManager.routes.popLast()
            } label: {
                Text("Go back")
            }
            .buttonStyle(.borderedProminent)
            
            Button {
                routerManager.reset()
            } label: {
                Text("Go Home")
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    LocationView()
        .environmentObject(NavigationRouter())
}
