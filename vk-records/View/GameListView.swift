import SwiftUI

struct GameListView: View {
    @StateObject private var viewModel = GameListViewModel()
    let userID = "76561198089755360"

    var body: some View {
        NavigationView {
            List(viewModel.games) { game in
                CardView(
                    title: "Test",
                    content: "test"
                )
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
