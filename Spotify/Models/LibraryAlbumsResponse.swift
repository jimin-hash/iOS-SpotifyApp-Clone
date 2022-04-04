//
//  LibraryAlbumsResponse.swift
//  Spotify
//
//  Created by 박지민 on 2022/04/04.
//

import Foundation

struct LibraryAlbumsResponse: Codable {
    let items: [SavedAlbum]
}

struct SavedAlbum: Codable {
    let added_at: String
    let album: Album
}
