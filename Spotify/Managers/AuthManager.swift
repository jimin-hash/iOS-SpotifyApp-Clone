//
//  AuthManager.swift
//  Spotify
//
//  Created by 박지민 on 2022/02/18.
//

import Foundation


final class AuthManager {
    static let shard = AuthManager()
    
    private init() {}
    
    var isSinged: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var expirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
}
