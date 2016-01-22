//
//  CreateFilmVC.swift
//  favoriteFilm
//
//  Created by makena  on 1/19/16.
//  Copyright © 2016 makena . All rights reserved.
//

import UIKit
import CoreData

class CreateFilmVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var filmTitle: UITextField!
    @IBOutlet weak var filmDescription: UITextField!
    @IBOutlet weak var imdburl: UITextField!
    @IBOutlet weak var plot: UITextField!
    @IBOutlet weak var filmImg: UIImageView!
    
    var imagePicker: UIImagePickerController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        filmImg.layer.cornerRadius = 5.0
        filmImg.clipsToBounds = true

    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        dismissViewControllerAnimated(true, completion: nil)
        filmImg.image = image
    }
    
    @IBAction func addImage(sender: AnyObject!) {
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func onCancelBtnPressed (sender: UIButton) {
        navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func onSaveBtnPressed (sender: AnyObject!) {
        if let title = filmTitle.text where title != "" {
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Film", inManagedObjectContext: context)!
            let film = Film(entity: entity, insertIntoManagedObjectContext: context)
            film.title = filmTitle.text
            film.review = filmDescription.text
            film.imdburl = imdburl.text
            film.plot = plot.text
            film.setFilmImage(filmImg.image!)
            
            context.insertObject(film)
            
            do {
                try context.save()
            } catch {
                print("could not save film")
            }
            
            self.navigationController?.popViewControllerAnimated(true)
            
        }
        
    }

}
