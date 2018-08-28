//
//  Movie.swift
//  Atelier1_Parsing
//
//  Created by CedricSoubrie on 12/10/2017.
//  Copyright © 2017 CedricSoubrie. All rights reserved.
//

import UIKit

class Movie: NSObject, Codable {
    
    enum CodingKeys: String, CodingKey {
        case title
        case overview
        case voteAverage = "vote_average"
        case releaseDate = "release_date"
        case posterPath = "poster_path"
        case backdropPath = "backdrop_path"
    }
    
    var title: String = ""
    var overview: String = ""
    var voteAverage: Double = 0.0
    var releaseDate: Date = Date() // The movie DB format : "2017-09-05"
    var posterPath: String = ""
    var backdropPath: String? = ""
    
    override var description: String {
        return "\(title) - (\(voteAverage)/10)"
    }
    
    func fullPosterURLString() -> String {
        return String(format: "https://image.tmdb.org/t/p/w500\(posterPath)")
    }
    
    func fullBackdropURLString() -> String {
        if let backdropPath = backdropPath {
            return String(format: "https://image.tmdb.org/t/p/w500\(backdropPath)")
        } else {
            return fullPosterURLString()
        }
    }
}
