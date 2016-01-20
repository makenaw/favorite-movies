//
//  FilmDetailController.swift
//  favoriteFilm
//
//  Created by makena  on 1/20/16.
//  Copyright © 2016 makena . All rights reserved.
//

import UIKit

class FilmDetailController: UIViewController {
    
    @IBOutlet weak var detailTitle: UILabel!
    @IBOutlet weak var detailDescription: UILabel!
    @IBOutlet weak var detailIMDB: UILabel!
    @IBOutlet weak var detailPlot: UILabel!
    @IBOutlet weak var detailImage:UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        func configureCell(film: Film) {
            detailTitle.text = film.title
            detailDescription.text = film.review
            detailIMDB.text = film.imdburl
            detailImage.image = film.getFilmImage()
            
        }

    }

}
