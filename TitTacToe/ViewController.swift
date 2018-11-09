//
//  ViewController.swift
//  TitTacToe
//
//  Created by Campbell Tajwane J. on 2018-11-02.
//  Copyright © 2018 Campbell Tajwane J. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    var views : [UIView]!
    @IBOutlet weak var viewContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        views = [UIView]()
        views.append(RegisterVC().view)
        views.append(GamePlayVC().view)
        
        for items in views { // adding each element to the the viewContainer
            viewContainer.addSubview(items)
        }
        viewContainer.bringSubview(toFront: views[0])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func switchView(_ sender: UISegmentedControl) {
        viewContainer.bringSubview(toFront: views[sender.selectedSegmentIndex])
    }
    
}

