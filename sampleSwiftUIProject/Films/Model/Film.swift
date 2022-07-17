//
//  Model.swift
//  sampleSwiftUIProject
//
//  Created by Denis Evdokimov on 7/15/22.
//

import Foundation


// MARK: - Film
struct Film: Codable, Identifiable {
    let id: Int
    let nameRu: String
    let year: String
    let countries: [Country]
    let genres: [Genre]
    let rating: String
    let ratingVoteCount: Int
    let posterURL, posterURLPreview: String

    enum CodingKeys: String, CodingKey {
        case id = "filmId"
        case nameRu, year, countries, genres, rating, ratingVoteCount
        case posterURL = "posterUrl"
        case posterURLPreview = "posterUrlPreview"
    }
}

// MARK: - Country
struct Country: Codable {
    let country: String
}

// MARK: - Genre
struct Genre: Codable {
    let genre: String
}
