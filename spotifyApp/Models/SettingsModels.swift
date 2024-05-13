//
//  SettingsModels.swift
//  SpotifyApp
//
//  Created by Cristian guillermo Romero garcia on 05/05/24.
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
