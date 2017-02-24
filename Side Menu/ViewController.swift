//
//  ViewController.swift
//  Side Menu
//
//  Created by Bipin on 2/23/17.
//  Copyright © 2017 Bipin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var open: UIBarButtonItem!
    @IBOutlet weak var textLabel: UILabel!
    var clickedAt = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        open.target = self.revealViewController()
        open.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        textLabel.text = "Selected VC is: " +  String(describing: clickedAt)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

