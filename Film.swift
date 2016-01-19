//
//  Film.swift
//  favoriteFilm
//
//  Created by makena  on 1/19/16.
//  Copyright © 2016 makena . All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Film: NSManagedObject {
    
    func setFilmImage(img: UIImage) {
        let data = UIImagePNGRepresentation(img)
        self.image = data
    }
    
    func getFilmImage() -> UIImage {
        let img = UIImage(data: self.image!)!
        return img
    }

}
