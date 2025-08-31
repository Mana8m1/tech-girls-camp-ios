//
//  FavoriteListView.swift
//  NetworkedApp
//
//  Created by marcy731 on 2025/03/08.
//

import SwiftUI

struct FavoriteListView: View {
    @State private var favoriteCoffeeManager = favoritemanager

    var body: some View {
        let coffees = Array(favoriteCoffeeManager.favoriteIDs)
        ScrollView {
            LazyVStack {
                ForEach(coffees) { coffee in
//                    CoffeeItemView(coffee: coffee)
//                        .padding(.horizontal, 20)
                }
            }
        }
        .overlay {
            if coffees.isEmpty {
                Text("お気に入りはありません")
                    .padding()
            }
        }

    }
}

#Preview {
    FavoriteListView()
}

