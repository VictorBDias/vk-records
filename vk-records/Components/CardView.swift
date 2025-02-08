import SwiftUI

struct CardView: View {
    var title: String
    var content: String
    var image: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .cornerRadius(12)

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
        CardView(title: "Example Title", content: "This is an example content for the card.", image: "exampleImage")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
