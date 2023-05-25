//
//  AppDelegate.swift
//  storyboardapp
//
//  Created by Abhigyan Gupta on 09/05/23.
//

import UIKit
import MoEngageSDK




@main
class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate, MoEngageMessagingDelegate{


    var window: UIWindow? = nil
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        //Add your MoEngage App ID
       
        
             var sdkConfig = MoEngageSDKConfig(withAppID: "2877NHMD0TOHATHC6NNHDERW")
            sdkConfig.moeDataCenter = .data_center_01
        sdkConfig.enableLogs=true
        sdkConfig.appGroupID = "group.moengage.alphadevs.moengage"
             // Separate initialization methods for Dev and Prod initializations
             #if DEBUG
                 MoEngage.sharedInstance.initializeDefaultTestInstance(sdkConfig, sdkState: .enabled)
             #else
                 MoEngage.sharedInstance.initializeDefaultLiveInstance(sdkConfig, sdkState: .enabled)
             #endif
        MoEngageSDKMessaging.sharedInstance.registerForRemoteNotification(withCategories: nil, andUserNotificationCenterDelegate: self)
        MoEngageSDKMessaging.sharedInstance.setMessagingDelegate(self)
        if #available(iOS 10.0, *){
            UNUserNotificationCenter.current().delegate = self
        }
        return true
    }
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
      //Call only if MoEngageAppDelegateProxyEnabled is NO
      MoEngageSDKMessaging.sharedInstance.setPushToken(deviceToken)
    }
    func notificationClicked(withScreenName screenName: String?, andKVPairs kvPairs: [AnyHashable : Any]?) {
            if let screenName = screenName {
                print("Navigate to Screen:\(screenName)")
            }
            
            if let actionKVPairs = kvPairs {
                print("Selected Action KVPair:\(actionKVPairs)")
            }
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    func notificationClicked(withScreenName screenName: String?, kvPairs: [AnyHashable : Any]?, andPushPayload userInfo: [AnyHashable : Any]) {
            
            print("Push Payload: \(userInfo)")
            
            if let screenName = screenName {
                print("Navigate to Screen:\(screenName)")
            }
            
            if let actionKVPairs = kvPairs {
                print("Selected Action KVPair:\(actionKVPairs)")
            }
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

