import SwiftUI

struct GameCardView: View {
    let id: Int
    let name: String
    let playtime: Int
    let imgIconURL: String
    let hasCommunityStats: Bool?
    let contentDescriptorIDs: [Int]?

    var body: some View {
        HStack(spacing: 12) {
            // Game Image
            AsyncImage(url: URL(string: imgIconURL)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 32, height: 32)
                    .clipped()
            } placeholder: {
                Color.gray.opacity(0.3)
                    .frame(width: 32, height: 32)
            }
        

            VStack(alignment: .leading, spacing: 4) {
                // Game Name
                Text(name)
                    .font(.headline)
                    .foregroundColor(.white)
                    .lineLimit(1)

                // Playtime
                Text("Playtime: \(playtime) minutes")
                    .font(.subheadline)
                    .foregroundColor(.white)

                // Community Stats
                if let hasCommunityStats = hasCommunityStats {
                    Text("\(hasCommunityStats ? "Available" : "Not Available")")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            Spacer() // Push everything to the left
        }
        .padding(12)
        .background(Color.card)
    }
}
