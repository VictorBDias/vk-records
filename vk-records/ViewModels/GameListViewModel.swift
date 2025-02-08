//
//  GameListViewModel.swift
//  vk-records
//
//  Created by Victor Batisttete Dias on 08/02/25.
//

import Foundation

class GameListViewModel: ObservableObject {
    @Published var games: [Game] = []
    @Published var isLoading = false
    @Published var errorMessage: String?

    func fetchGames(for userID: String) {
        isLoading = true
        SteamAPI.fetchGames(for: userID) { result in
            DispatchQueue.main.async {
                self.isLoading = false
                switch result {
                case .success(let games):
                    self.games = games
                case .failure(let error):
                    self.errorMessage = error.localizedDescription
                }
            }
        }
    }
}
