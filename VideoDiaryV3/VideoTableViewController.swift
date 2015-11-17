//
//  VideoTableViewController.swift
//  VideoDiaryV3
//
//  Created by Andrew Bell on 11/17/15.
//  Copyright © 2015 FiixedMobile. All rights reserved.
//

import UIKit

class VideoTableViewController: UITableViewController {
    
    var videoNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats",
        "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina",
        "Donostia", "Royal Oak", "Thai Cafe"]
    
    var videoImages = ["cafedeadend.jpg", "homei.jpg", "teakha.jpg",
        "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg",
        "bourkestreetbakery.jpg", "haighschocolate.jpg", "palominoespresso.jpg",
        "upstate.jpg", "traif.jpg", "grahamavenuemeats.jpg", "wafflewolf.jpg",
        "fiveleaves.jpg", "cafelore.jpg", "confessional.jpg", "barrafina.jpg",
        "donostia.jpg", "royaloak.jpg", "thaicafe.jpg"]
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videoNames.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! VideoTableViewCell
        
        // Configure the cell
        
        cell.dateLabel?.text = videoNames[indexPath.row]
        cell.thumbnailImageView?.image = UIImage(named: videoImages[indexPath.row])
        
        return cell
    }
    
    override func prefersStatusBarHidden() -> Bool {
            return true
    }

}
