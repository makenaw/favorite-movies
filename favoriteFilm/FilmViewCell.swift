//
//  FilmViewCell.swift
//  favoriteFilm
//
//  Created by makena  on 1/19/16.
//  Copyright © 2016 makena . All rights reserved.
//

import UIKit

class FilmViewCell: UITableViewCell {
    
    @IBOutlet weak var filmTitle: UILabel!
    @IBOutlet weak var filmDescription: UILabel!
    @IBOutlet weak var filmImage: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(film: Film) {
        filmTitle.text = film.title
        filmDescription.text = film.description
        filmImage.image = film.getFilmImage()
    }


}
