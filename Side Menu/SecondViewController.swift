//
//  SecondViewController.swift
//  Side Menu
//
//  Created by Bipin on 2/24/17.
//  Copyright © 2017 Bipin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        open.target = self.revealViewController()
//        open.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }

  }
