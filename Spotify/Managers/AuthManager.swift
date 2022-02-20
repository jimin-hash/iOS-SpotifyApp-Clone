//
//  AuthManager.swift
//  Spotify
//
//  Created by 박지민 on 2022/02/18.
//

import Foundation


final class AuthManager {
    static let shard = AuthManager()
    
    struct Constants {
        static let clientID = "3708d1d1583545f3b0ebcb7175942424"
        static let clientSecret = "d3cf043f4014475fbbe944ffcf769d5e"
    }
    
    private init() {}
    
    public var signInURL: URL? {
        let scopes = "user-read-private"
        let redirectURL = "https://www.iosacademy.io"
        let base = "https://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURL)&show_dialog=TRUE"
        
        return URL(string: string)
    }
    
    
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
    
    public func exchangeCodeForToken(code: String, completion: @escaping ((Bool) -> Void)
    ) {
        // get Token
    }
    
    private func refreshAccessToken() {
        
    }
    
    private func cacheToken() {
        
    }
}
