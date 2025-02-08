import SwiftUI

struct GameListView: View {
    @StateObject private var viewModel = GameListViewModel()
    let userID = "76561198300021798"

    var body: some View {
        NavigationView {
            List(viewModel.games) { game in
                GameCardView(
                    id: game.id,
                    name: game.name,
                    playtime: game.playtime,
                    imgIconURL: game.imgIconURL,
                    hasCommunityStats: game.hasCommunityStats,
                    contentDescriptorIDs: game.contentDescriptorIDs
                )
                .listRowSeparator(.hidden)
            }
            .navigationTitle("Steam Games")
            .listStyle(PlainListStyle())
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
