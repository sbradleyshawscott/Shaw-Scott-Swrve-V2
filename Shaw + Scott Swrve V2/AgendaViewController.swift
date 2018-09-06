//
// AgendaViewController.swift
//  Shaw + Scott Swrve V2
//
//  Created by Sophie Bradley on 05/06/2018.
//  Copyright © 2018 Sophie Bradley. All rights reserved.
//

import UIKit

class PurposeViewController: UIViewController {
    
    @IBAction func purposeBackButtonPressed(_ sender: Any) {
        
        print("Button pressed")
        self.performSegue(withIdentifier: "ContentsPurposeViewSegue", sender: self)
        
    }
    
    @IBAction func sundayAgendaButtonPressed(_ sender: Any) {
        print("Button pressed")
        self.performSegue(withIdentifier: "SundayViewSegue", sender: self)
    }
    
    
    
    @IBAction func mondayAgendaButtonPressed(_ sender: Any) {
        print("Button pressed")
        self.performSegue(withIdentifier: "MondayViewSegue", sender: self)
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
