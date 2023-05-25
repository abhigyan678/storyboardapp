//
//  FourthViewController.swift
//  storyboardapp
//
//  Created by Abhigyan Gupta on 09/05/23.
//

import UIKit
import MoEngageSDK
import MoEngageInApps
// Add the below line to show inapp


class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       
    }
  
    
    @IBAction func inappaction(_ sender: Any) {
        MoEngageSDKInApp.sharedInstance.showInApp()
    }
    

    

}
