//
//  SlideMenuTableViewController.swift
//  Side Menu
//
//  Created by Bipin on 2/23/17.
//  Copyright © 2017 Bipin. All rights reserved.
//

import UIKit

class SlideMenuTableViewController: UITableViewController {

    var menuArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuArray = ["first" , "second" , "third"]
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: menuArray[indexPath.row], for: indexPath)
        cell.textLabel?.text = menuArray[indexPath.row]
        return cell
        
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        
//        var destinationViewController = segue.destination as! ViewController
//        
//        let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow! as NSIndexPath
//        
//        
//        destinationViewController.clickedAt = [String(indexPath.row)]
//    }
    

}
