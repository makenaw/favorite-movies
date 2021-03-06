//
//  ViewController.swift
//  favoriteFilm
//
//  Created by makena  on 1/19/16.
//  Copyright © 2016 makena . All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var films = [Film]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidAppear(animated: Bool) {
        fetchAndSetResults()
        tableView.reloadData()
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .ScaleAspectFit
        let image = UIImage(named: "film")
        imageView.image = image
        navigationItem.titleView = imageView
    }
    
    override func viewWillAppear(animated: Bool) {
        films = Film.getAll()
        tableView.reloadData()
    }
    
    func fetchAndSetResults() {
        let app = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = app.managedObjectContext
        let fetchRequest = NSFetchRequest(entityName: "Film")
        
        do {
            let results = try context.executeFetchRequest(fetchRequest)
            self.films = results as! [Film]
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let film = films[indexPath.row]
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("FilmCell") as? FilmViewCell {
            cell.configureCell(film)
            return cell
        } else {
            let cell = FilmViewCell()
            cell.configureCell(film)
            return cell
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return films.count
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let film = films[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        let jared = storyboard.instantiateViewControllerWithIdentifier("filmer") as! DetailViewController
        jared.film = film
        
        navigationController?.pushViewController(jared, animated: true)
    }
}

