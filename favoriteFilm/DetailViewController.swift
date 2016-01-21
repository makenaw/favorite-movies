//
//  DetailViewController.swift
//  favoriteFilm
//
//  Created by makena  on 1/21/16.
//  Copyright © 2016 makena . All rights reserved.
//

import UIKit
import CoreData

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailtitle: UILabel!
    @IBOutlet weak var plot: UILabel!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var imdb: UILabel!
    
    var film: Film!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        //change values here
        detailtitle.text = film.title
        plot.text = film.plot
        desc.text = film.review
        imdb.text = film.imdburl
        image.image = film.getFilmImage()
        
    }



}
