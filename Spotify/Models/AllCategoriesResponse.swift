//
//  AllCategoriesResponse.swift
//  Spotify
//
//  Created by 박지민 on 2022/03/12.
//

import Foundation

struct AllCategoriesResponse: Codable {
    let categories: Categories
}

struct Categories: Codable {
    let items: [Category]
}

struct Category: Codable {
    let id: String
    let name: String
    let icons: [APIImage]
}
