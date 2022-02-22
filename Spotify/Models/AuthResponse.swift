//
//  AuthResponse.swift
//  Spotify
//
//  Created by 박지민 on 2022/02/20.
//

import Foundation

struct AuthResponse: Codable {
    let access_token: String
    let expires_in: Int
    let refresh_token: String?
    let scope: String
    let token_type: String
}

//"access_token" = "BQBLTpgBnr9NKGBq4qRzICsGCKK9a-wXPZ-b9MbZxo_R4MS86EAA5-ELI1pO6nFFN3-fBWZ1fsfGOItN3P0cuwyBTZIXf4X0JvrhjBeCAXvggkE3wgMdzkOeYx3zUU80inR9r9U0lPkfDQ_SviJ9PJZywdP6yp_ag0jXfHsrycp-1rv81C8";
//"expires_in" = 3600;
//"refresh_token" = "AQCIzOt4abe24DXbbCaGHKRCOd0lL0Wkrj7CQ56X-uF0orFdqg-dWW7S3bRf2iQykLY29gCkh0yWvoOX_CqtsNsU-pOdl4HE9ABNJDXCBQVJQ7ls0zxgtgSHc0vWQ5lrUOU";
//scope = "user-read-private";
//"token_type" = Bearer;
