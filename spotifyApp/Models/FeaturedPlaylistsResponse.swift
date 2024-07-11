//
//  FeaturedPlaylistsResponse.swift
//  spotifyApp
//
//  Created by Cristian guillermo Romero garcia on 10/07/24.
//

import Foundation

struct FeaturedPlaylistsResponse: Codable {
    let playlists: PlaylistResponse
}
struct PlaylistResponse: Codable{
    let items: [Playlist]
}


struct User: Codable{
    let display_name: String
    let external_urls: [String: String]
    let id: String
}
