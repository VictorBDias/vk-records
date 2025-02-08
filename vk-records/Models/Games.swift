//
//  Games.swift
//  vk-records
//
//  Created by Victor Batisttete Dias on 08/02/25.
//

import Foundation

struct SteamResponse: Codable {
    let response: GamesResponse
}

struct GamesResponse: Codable {
    let gameCount: Int
    let games: [Game]

    enum CodingKeys: String, CodingKey {
        case gameCount = "game_count"
        case games
    }
}

struct Game: Codable, Identifiable {
    let id: Int
    let name: String
    let playtime: Int
    let imgIconURL: String
    let hasCommunityStats: Bool
    let contentDescriptorIDs: [Int]

    enum CodingKeys: String, CodingKey {
        case id = "appid"
        case name
        case playtime = "playtime_forever"
        case imgIconURL = "img_icon_url"
        case hasCommunityStats = "has_community_visible_stats"
        case contentDescriptorIDs = "content_descriptorids"
    }

    // ✅ Custom Decodable to handle missing values
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(Int.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        playtime = try container.decode(Int.self, forKey: .playtime)
        imgIconURL = try container.decode(String.self, forKey: .imgIconURL)
        hasCommunityStats = try container.decodeIfPresent(Bool.self, forKey: .hasCommunityStats) ?? false
        contentDescriptorIDs = try container.decodeIfPresent([Int].self, forKey: .contentDescriptorIDs) ?? []
    }
}
