//
//  Playlist.swift
//  Spotify
//
//  Created by 박지민 on 2022/02/18.
//

import Foundation

struct Playlist: Codable {
    let description: String
    let external_urls: [String: String]
    let id: String
    let images: [APIImage]
    let name: String
    let owner: User
}
