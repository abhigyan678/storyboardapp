//
//  AppDelegate.swift
//  storyboardapp
//
//  Created by Abhigyan Gupta on 09/05/23.
//

import UIKit
import MoEngageSDK




@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        //Add your MoEngage App ID
             var sdkConfig = MoEngageSDKConfig(withAppID: "1SCFO3OHU33EZUMDATWHJO36")
            sdkConfig.moeDataCenter = .data_center_01
        sdkConfig.enableLogs=true
             // Separate initialization methods for Dev and Prod initializations
             #if DEBUG
                 MoEngage.sharedInstance.initializeDefaultTestInstance(sdkConfig, sdkState: .enabled)
             #else
                 MoEngage.sharedInstance.initializeDefaultLiveInstance(sdkConfig, sdkState: .enabled)
             #endif
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

