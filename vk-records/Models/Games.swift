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
    let playtime: Int

    enum CodingKeys: String, CodingKey {
        case id = "appid"
        case playtime = "playtime_forever"
    }
}
