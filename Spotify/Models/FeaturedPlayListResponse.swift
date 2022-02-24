//
//  FeaturedPlayListResponse.swift
//  Spotify
//
//  Created by 박지민 on 2022/02/24.
//

import Foundation

struct FeaturedPlayListResponse: Codable {
    let playlists: PlayListResponse
}

struct PlayListResponse: Codable {
    let items: [Playlist]
}

struct User: Codable {
    let display_name: String
    let external_urls: [String: String]
    let id: String
}
