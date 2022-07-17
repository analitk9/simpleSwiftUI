//
//  DetailFilm.swift
//  sampleSwiftUIProject
//
//  Created by Denis Evdokimov on 7/17/22.
//

import Foundation

struct DetailFilm: Codable {
    var kinopoiskID: Int = 0
    var nameRu: String = ""
    var posterURL: String = ""
    var purpleDescription: String = ""
  

    enum CodingKeys: String, CodingKey {
        case kinopoiskID = "kinopoiskId"
        case nameRu = "nameRu"
        case posterURL = "posterUrl"
        case purpleDescription = "description"

    }
}

