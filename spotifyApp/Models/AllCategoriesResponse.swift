//
//  AllCategoriesResponse.swift
//  spotifyApp
//
//  Created by Cristian guillermo Romero garcia on 21/11/24.
//

import Foundation

struct AllCategoriesResponse: Codable{
    let categories: Categories
}

struct Categories: Codable{
    let items: [Category]
}

struct Category: Codable{
    let id: String
    let name: String
    let icons: [APIImage]
}
