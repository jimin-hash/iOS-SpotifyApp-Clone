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

struct Playlist: Codable {
    let description: String
    let external_urls: [String: String]
    let id: String
    let images: [APIImage]
    let name: String
    let owner: User
}

struct User: Codable {
    let display_name: String
    let external_urls: [String: String]
    let id: String
}

//true
//{
//    message = "\Uc5d0\Ub514\Ud130 \Ucd94\Ucc9c";
//    playlists =     {
//        href = "https://api.spotify.com/v1/browse/featured-playlists?timestamp=2022-02-24T14%3A06%3A59&offset=0&limit=2";
//        items =         (
//                        {
//                collaborative = 0;
//                description = "Rock legends & epic songs spanning decades, that continue to inspire generations. ";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DWXRqgorJj26U";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWXRqgorJj26U";
//                id = 37i9dQZF1DWXRqgorJj26U;
//                images =                 (
//                                        {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f0000000342f2feffa24c09214ab3be76";
//                        width = "<null>";
//                    }
//                );
//                name = "Rock Classics";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTY0NTYzMTA1NywwMDAwMDA3ZjAwMDAwMTdmMjc0MTJmZTEwMDAwMDE3ZTU4Y2U5NjY0;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWXRqgorJj26U/tracks";
//                    total = 201;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DWXRqgorJj26U";
//            },
//                        {
//                collaborative = 0;
//                description = "Clock in from the comfort of your own home with 8 hours of music to carry you through the day.";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DWTLSN7iG21yC";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWTLSN7iG21yC";
//                id = 37i9dQZF1DWTLSN7iG21yC;
//                images =                 (
//                                        {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f000000039ed927af72b644ee065cc980";
//                        width = "<null>";
//                    }
//                );
//                name = "Work From Home";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTY0NTcxMTU3MiwwMDAwMDAwMGQ0MWQ4Y2Q5OGYwMGIyMDRlOTgwMDk5OGVjZjg0Mjdl;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWTLSN7iG21yC/tracks";
//                    total = 150;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DWTLSN7iG21yC";
//            }
//        );
//        limit = 2;
//        next = "https://api.spotify.com/v1/browse/featured-playlists?timestamp=2022-02-24T14%3A06%3A59&offset=2&limit=2";
//        offset = 0;
//        previous = "<null>";
//        total = 10;
//    };
//}
