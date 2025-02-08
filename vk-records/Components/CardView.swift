import SwiftUI

struct CardView: View {
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
    }
}
