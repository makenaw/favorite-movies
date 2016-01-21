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
    
    static func getAll () -> [Film] {
        let app = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = app.managedObjectContext
        
        let fetchReq = NSFetchRequest(entityName: "Film")
        
        do {
            return try context.executeFetchRequest(fetchReq) as! [Film]
        } catch let e as NSError {
            print(e.debugDescription)
            return [Film]()
        }
    }

}
