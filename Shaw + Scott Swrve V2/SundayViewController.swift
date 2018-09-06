//
//  SundayViewController.swift
//  Shaw + Scott Swrve V2
//
//  Created by Sophie Bradley on 06/09/2018.
//  Copyright © 2018 Sophie Bradley. All rights reserved.
//

import UIKit

class SundayViewController: UIViewController {

    
    @IBAction func sundayBacKButtonPressed(_ sender: Any) {
        
        print("Button pressed")
        self.performSegue(withIdentifier: "CAgendaSundayBackSegue", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
