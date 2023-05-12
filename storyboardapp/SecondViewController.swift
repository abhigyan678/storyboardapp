//
//  SecondViewController.swift
//  storyboardapp
//
//  Created by Abhigyan Gupta on 09/05/23.
//

import UIKit
import MoEngageSDK

class SecondViewController: UIViewController {

    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func greataction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let thirdViewController = storyboard.instantiateViewController(withIdentifier: "third_controller")
       // secondViewController.setup(firstName: "Abhi", secondName: "Gupta")
        self.present(thirdViewController, animated: true,completion: nil)
        MoEngageSDKAnalytics.sharedInstance.trackEvent("Great", withProperties: nil)
        MoEngageSDKAnalytics.sharedInstance.resetUser()
    }
    
    
    @IBAction func notwellaction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let fourthViewController = storyboard.instantiateViewController(withIdentifier: "fourth_controller")
       // secondViewController.setup(firstName: "Abhi", secondName: "Gupta")
        self.present(fourthViewController, animated: true,completion: nil)
        MoEngageSDKAnalytics.sharedInstance.trackEvent("Not_Well", withProperties: nil)
        MoEngageSDKAnalytics.sharedInstance.resetUser()
    }
    
}
