//
//  ContentsViewController.swift
//  Shaw + Scott Swrve V2
//
//  Created by Sophie Bradley on 05/06/2018.
//  Copyright © 2018 Sophie Bradley. All rights reserved.
//

import UIKit
import SwrveSDK

class ContentsViewController: UIViewController {
    
    @IBAction func contentsStartButtonPressed(_ sender: Any) {
        
        print("Button pressed")
        self.performSegue(withIdentifier: "StartViewSegue", sender: self)
    }

    @IBAction func contentsPurposeButtonPressed(_ sender: Any) {
        
        print("Button pressed")
        SwrveSDK.event("agendaButtonPressed")
        self.performSegue(withIdentifier: "AgendaViewSegue", sender: self)
    }
    
    @IBAction func contentsValuesoButtonPressed(_ sender: Any) {
        
        print("Button pressed")
        SwrveSDK.event("valuesButtonPressed")
        self.performSegue(withIdentifier: "ValuesViewSegue", sender: self)
    }

    
    @IBAction func contentsSurveyButtonPressed(_ sender: Any) {
        
        print("Button pressed")
        SwrveSDK.event("surveyButtonPressed")
        self.performSegue(withIdentifier: "SurveyViewSegue", sender: self)
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
