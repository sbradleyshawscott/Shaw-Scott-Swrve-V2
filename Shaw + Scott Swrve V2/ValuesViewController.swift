//
//  ValuesViewController.swift
//  Shaw + Scott Swrve V2
//
//  Created by Sophie Bradley on 15/06/2018.
//  Copyright © 2018 Sophie Bradley. All rights reserved.
//

import UIKit
import SwrveSDK

class ValuesViewController: UIViewController, UIScrollViewDelegate {
    
    @IBAction func valuesBackButtonPressed(_ sender: Any) {
        
        print("Button pressed")
        self.performSegue(withIdentifier: "ContentsValuesViewSegue", sender: self)
        
    }
    
    @IBAction func excellenceButtonPressed(_ sender: Any) {
        
        print("Button pressed")
        SwrveSDK.event("excellenceButtonPressed")
        self.performSegue(withIdentifier: "ExcellenceViewSegue", sender: self)
        
    }
    
    @IBAction func passionButtonPressed(_ sender: Any) {
        
        print("Button pressed")
        SwrveSDK.event("passionButtonPressed")
        self.performSegue(withIdentifier: "PassionViewSegue", sender: self)
        
    }
    
    @IBAction func integrityButtonPressed(_ sender: Any) {

        print("Button pressed")
        SwrveSDK.event("integrityButtonPressed")
        self.performSegue(withIdentifier: "IntegrityViewSegue", sender: self)
        
    }
    
    
    @IBAction func collaborationButtonPressed(_ sender: Any) {
        
        print("Button pressed")
        SwrveSDK.event("collaborationButtonPressed")
        self.performSegue(withIdentifier: "CollaborationViewSegue", sender: self)
        
    }
    
    
    @IBAction func successButtonPressed(_ sender: Any) {

        print("Button pressed")
        SwrveSDK.event("successButtonPressed")
        self.performSegue(withIdentifier: "SuccessViewSegue", sender: self)
        
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
