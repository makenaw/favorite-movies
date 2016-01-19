//
//  Film+CoreDataProperties.swift
//  favoriteFilm
//
//  Created by makena  on 1/19/16.
//  Copyright © 2016 makena . All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Film {

    @NSManaged var image: NSData?
    @NSManaged var title: String?
    @NSManaged var review: String?
    @NSManaged var plot: String?
    @NSManaged var imdburl: String?

}
