//
//  AlbumDetailsResponse.swift
//  spotifyApp
//
//  Created by Cristian guillermo Romero garcia on 16/07/24.
//

import Foundation

struct AlbumDetailsResponse: Codable{
    let album_type: String
    let artists: [Artist]
    let available_markets: [String]
    let external_urls: [String: String]
    let id: String
    let images: [APIImage]
    let label: String
    let name: String
    let tracks: TracksResponse
}

struct TracksResponse: Codable{
    let items: [AudioTrack]
}
