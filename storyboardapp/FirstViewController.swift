//
//  ViewController.swift
//  storyboardapp
//
//  Created by Abhigyan Gupta on 09/05/23.
//

import UIKit
import MoEngageSDK

class FirstViewController: UIViewController {

    @IBOutlet weak var FirstName: UITextField!
    
    @IBOutlet weak var Email: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapButton(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "second_controller")
       
        
        
        
       // secondViewController.setup(firstName: "Abhi", secondName: "Gupta")
        self.present(secondViewController, animated: true,completion: nil)
        
       // MoEngageSDKAnalytics.sharedInstance.setMobileNumber(MobileNumber.text!)
       MoEngageSDKAnalytics.sharedInstance.setEmailID(Email.text!)
       MoEngageSDKAnalytics.sharedInstance.setUniqueID(Email.text!)
       MoEngageSDKAnalytics.sharedInstance.setName(FirstName.text!)
       // MoEngageSDKAnalytics.sharedInstance.setFirstName(F)
        MoEngageSDKAnalytics.sharedInstance.trackEvent("Login", withProperties: nil)
    }
    
}

