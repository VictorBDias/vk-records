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
                    .frame(width: 72, height: 72) // Larger size to match the style
                    .clipped()
            } placeholder: {
                Color.gray.opacity(0.3)
                    .frame(width: 64, height: 64)
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

                // Content Descriptors
                if let contentDescriptorIDs = contentDescriptorIDs, !contentDescriptorIDs.isEmpty {
                    Text("Descriptors: \(contentDescriptorIDs.map { String($0) }.joined(separator: ", "))")
                        .font(.caption)
                        .foregroundColor(.blue)
                }
            }.padding(8)
            Spacer() // Push everything to the left
        }
        .background(Color(hex: "1F3344"))
    }
}


extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var hexNumber: UInt64 = 0
        scanner.scanHexInt64(&hexNumber)
        
        let r = Double((hexNumber & 0xFF0000) >> 16) / 255.0
        let g = Double((hexNumber & 0x00FF00) >> 8) / 255.0
        let b = Double(hexNumber & 0x0000FF) / 255.0
        
        self.init(.sRGB, red: r, green: g, blue: b, opacity: 1)
    }
}
