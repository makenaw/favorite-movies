//
//  roundedImage.swift
//  favoriteFilm
//
//  Created by makena  on 1/22/16.
//  Copyright © 2016 makena . All rights reserved.
//

import Foundation
import UIKit

class RoundedImage: UIImageView {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.cornerRadius = 5
        self.clipsToBounds = true
    }
}