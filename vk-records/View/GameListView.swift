import SwiftUI


struct GameListView: View {
    @StateObject private var viewModel = GameListViewModel()
    let userID = "76561198300021798"

    var body: some View {
        NavigationView {
            List(viewModel.games) { game in
                GameCardView(
<<<<<<< Updated upstream
                    id: game.id,
                    name: game.name,
                    playtime: game.playtime,
                    imgIconURL: "https://media.steampowered.com/steamcommunity/public/images/apps/\(game.id)/\(game.imgIconURL).jpg",
                    hasCommunityStats: game.hasCommunityStats,
                    contentDescriptorIDs: game.contentDescriptorIDs
=======
                    title: "Test",
                    content: "test"
>>>>>>> Stashed changes
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
