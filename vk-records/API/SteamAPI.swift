//
//  SteamAPI.swift
//  vk-records
//
//  Created by Victor Batisttete Dias on 08/02/25.
//

import Foundation

struct SteamAPI {
    static let apiKey = "7B9584B406717E6709179D0C739F803A"
    static let baseURL = "https://api.steampowered.com/"

    static func fetchGames(for userID: String, completion: @escaping (Result<[Game], Error>) -> Void) {
        let urlString = "\(baseURL)/IPlayerService/GetOwnedGames/v0001/?key=\(apiKey)&steamid=\(userID)&include_appinfo=true&format=json"
        
        guard let url = URL(string: urlString) else { return }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else { return }

            do {
                let decodedResponse = try JSONDecoder().decode(SteamResponse.self, from: data)
                completion(.success(decodedResponse.response.games))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
