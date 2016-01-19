//
//  ViewController.swift
//  favoriteFilm
//
//  Created by makena  on 1/19/16.
//  Copyright © 2016 makena . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var films = [Film]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return UITableViewCell()
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("FilmCell") as? FilmViewCell {
            
            let film = films[indexPath.row]
            cell.configureCell(film)
            return cell
        } else {
            return FilmViewCell()
        }
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return films.count
    }



}

