//
//  Artist.swift
//  Spotify
//
//  Created by 박지민 on 2022/02/18.
//

import Foundation

struct Artist: Codable {
    let id: String
    let name: String
    let type: String
    let external_urls: [String: String]
}
