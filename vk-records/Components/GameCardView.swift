import SwiftUI

struct GameCardView: View {
<<<<<<< Updated upstream
    let id: Int
    let name: String
    let playtime: Int
    let imgIconURL: String
    let hasCommunityStats: Bool?
    let contentDescriptorIDs: [Int]?

    var body: some View {
        VStack(alignment: .leading) {
            // Game Image
            AsyncImage(url: URL(string: imgIconURL)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 150)
                    .clipped()
            } placeholder: {
                Color.gray.opacity(0.3)
                    .frame(height: 150)
            }

            // Game Info
            VStack(alignment: .leading, spacing: 8) {
                Text(name)
                    .font(.headline)
                    .lineLimit(2)
                Text("Playtime: \(playtime) minutes")
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                if let hasCommunityStats = hasCommunityStats {
                    Text("Community Stats: \(hasCommunityStats ? "Available" : "Not Available")")
                        .font(.caption)
                        .foregroundColor(hasCommunityStats ? .green : .red)
                }

                if let contentDescriptorIDs = contentDescriptorIDs, !contentDescriptorIDs.isEmpty {
                    Text("Descriptors: \(contentDescriptorIDs.map { String($0) }.joined(separator: ", "))")
                        .font(.caption)
                        .foregroundColor(.blue)
                }
            }
            .padding()
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
=======
    var title: String
    var content: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.headline)
                .foregroundColor(.primary)

            Text(content)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .lineLimit(3)

            Spacer()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: .gray.opacity(0.3), radius: 6, x: 0, y: 4)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        GameCardView(title: "Example Title", content: "This is an example content for the card.")
            .previewLayout(.sizeThatFits)
            .padding()
>>>>>>> Stashed changes
    }
}
