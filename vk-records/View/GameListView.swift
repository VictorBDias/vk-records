//
//  GameListView.swift
//  vk-records
//
//  Created by Victor Batisttete Dias on 08/02/25.
//

import SwiftUI

struct GameListView: View {
    @StateObject private var viewModel = GameListViewModel()
    let userID = "76561198089755360"

    var body: some View {
        NavigationView {
            List(viewModel.games) { game in
                VStack(alignment: .leading) {
                    Text(String(game.id))
                        .font(.headline)
                    Text("Playtime: \(game.playtime) mins")
                        .font(.subheadline)
                }
            }
            .navigationTitle("Steam Games")
            .onAppear {
                viewModel.fetchGames(for: userID)
            }
        }
    }
}

struct GameListView_Previews: PreviewProvider {
    static var previews: some View {
        GameListView()
    }
}
