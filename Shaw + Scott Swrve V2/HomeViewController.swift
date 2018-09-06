//
//  ViewController.swift
//  Shaw + Scott Swrve V2
//
//  Created by Sophie Bradley on 03/06/2018.
//  Copyright © 2018 Sophie Bradley. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBAction func startLetsGoButtonPressed(_ sender: Any) {
        
        print("Button pressed")
        self.performSegue(withIdentifier: "ContentsViewSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("View has loaded :)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

