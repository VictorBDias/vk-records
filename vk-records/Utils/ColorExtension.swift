import SwiftUI

extension Color {
    static let background = Color(hex: "274156")
    static let card = Color(hex: "1F3344")
    static let text = Color(hex: "AABBCC")

    // Helper initializer to create a Color from a HEX code
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
