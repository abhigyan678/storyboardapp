//
//  NotificationViewController.swift
//  PushTemplateExtension
//
//  Created by Abhigyan Gupta on 24/05/23.
//

import UIKit
import UserNotifications
import UserNotificationsUI
import MoEngageRichNotification
  
class NotificationViewController: UIViewController, UNNotificationContentExtension {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set App Group ID
        MoEngageSDKRichNotification.setAppGroupID("group.moengage.alphadevs.moengage")
    }
  
    
    func didReceive(_ notification: UNNotification) {
        // Method to add template to UI
        MoEngageSDKRichNotification.addPushTemplate(toController: self, withNotification: notification)
    }
}
