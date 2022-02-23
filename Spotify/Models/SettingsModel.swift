//
//  SettingsModel.swift
//  Spotify
//
//  Created by 박지민 on 2022/02/22.
//

import Foundation

struct Section {
    let title: String
    let options: [Option]
}

struct Option {
    let title: String
    let handler: () -> Void
}
