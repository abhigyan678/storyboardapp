//
//  ThirdViewController.swift
//  storyboardapp
//
//  Created by Abhigyan Gupta on 09/05/23.
//

import UIKit
import MoEngageCards

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Cardsbtn(_ sender: Any) {
        MoEngageSDKCards.sharedInstance.presentCardsViewController()
    }
    
    @IBAction func NotificationCenter(_ sender: Any) {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
