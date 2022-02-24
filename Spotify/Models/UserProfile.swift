//
//  UserProfile.swift
//  Spotify
//
//  Created by 박지민 on 2022/02/18.
//

import Foundation

struct UserProfile: Codable {
    let country: String
    let display_name: String
//    let email: String
    let explicit_content: [String : Bool]
    let external_urls: [String : String]
    let id: String
    let product: String
    let images: [APIImage]
}

//{
//    country = KR;
//    "display_name" = "\Ubc15\Uc9c0\Ubbfc";
//    "explicit_content" =     {
//        "filter_enabled" = 0;
//        "filter_locked" = 0;
//    };
//    "external_urls" =     {
//        spotify = "https://open.spotify.com/user/31djnqmok6acffaidnkp4gua4uw4";
//    };
//    followers =     {
//        href = "<null>";
//        total = 0;
//    };
//    href = "https://api.spotify.com/v1/users/31djnqmok6acffaidnkp4gua4uw4";
//    id = 31djnqmok6acffaidnkp4gua4uw4;
//    images =     (
//    );
//    product = open;
//    type = user;
//    uri = "spotify:user:31djnqmok6acffaidnkp4gua4uw4";
//}
