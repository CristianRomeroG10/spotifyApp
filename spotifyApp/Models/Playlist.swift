//
//  Playlist.swift
//  SpotifyApp
//
//  Created by Cristian guillermo Romero garcia on 01/05/24.
//

import Foundation

struct Playlist: Codable{
    let description: String
    let external_urls: [String: String]
    let id: String
    let images: [APIImage]
    let name: String
    let owner: User
}
