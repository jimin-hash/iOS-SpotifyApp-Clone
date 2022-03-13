//
//  SearchResult.swift
//  Spotify
//
//  Created by 박지민 on 2022/03/13.
//

import Foundation

enum SearchResult {
    case artist(model: Artist)
    case album(model: Album)
    case track(model: AudioTrack)
    case playlist(model: Playlist)
}
