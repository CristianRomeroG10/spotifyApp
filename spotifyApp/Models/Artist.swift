//
//  Artist.swift
//  SpotifyApp
//
//  Created by Cristian guillermo Romero garcia on 01/05/24.
//

import Foundation

struct Artist: Codable {
    let id: String
    let name: String
    let type: String
    let external_urls: [String: String]
}
