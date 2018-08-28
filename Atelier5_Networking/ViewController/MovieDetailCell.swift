//
//  MovieDetailCell.swift
//  Films
//
//  Created by Claire Reynaud on 13/10/2017.
//  Copyright © 2017 Claire Reynaud EIRL. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailCell: UITableViewCell {
    
    @IBOutlet weak var customImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    func fill(with movie: Movie) {
        print ("Fill detail cell with \(movie)")
        customImageView.image = nil
        if let url = URL(string: movie.fullBackdropURLString()) {
            customImageView.af_setImage(withURL: url)
        }
        titleLabel.text = movie.title
        descriptionLabel.text = movie.overview
        ratingLabel.text = String(format: "Note : %.1f/10", movie.voteAverage)
    }
}
