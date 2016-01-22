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
    @IBOutlet weak var filmImage: RoundedImage!
    @IBOutlet weak var filmurl: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func configureCell(film: Film) {
        filmTitle.text = film.title
        filmDescription.text = film.review
        filmurl.text = film.imdburl
        filmImage.image = film.getFilmImage()
        
    }


}
