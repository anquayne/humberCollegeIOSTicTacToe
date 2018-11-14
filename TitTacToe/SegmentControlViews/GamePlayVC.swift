//
//  GamePlayVC.swift
//  TitTacToe
//
//  Created by Campbell Tajwane J. on 2018-11-09.
//  Copyright © 2018 Campbell Tajwane J. All rights reserved.
//

import UIKit

class GamePlayVC: UIViewController {

    
    @IBOutlet var buttonCollection: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
print("View did load")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func getButtonClicked(_ sender: UIButton) {
        for button in buttonCollection {
            if (button.tag == sender.tag) {
                if(button.titleLabel!.text!.elementsEqual("")){
                    button.titleLabel?.text="X"
                }
            }
        }
    }
    
    
    @IBAction func butoon(_ sender: UIButton) {
        
    }
}
