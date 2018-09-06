//
//  AppDelegate.swift
//  Shaw + Scott Swrve V2
//
//  Created by Sophie Bradley on 03/06/2018.
//  Copyright © 2018 Sophie Bradley. All rights reserved.
//

import SwrveSDK
import UIKit
import UserNotificationsUI

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, SwrvePushResponseDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    
    let config = SwrveConfig()
    config.stack = SWRVE_STACK_EU
    config.pushResponseDelegate = self
    config.pushEnabled = true
        
    UNUserNotificationCenter.current().delegate = self
        
    SwrveSDK.sharedInstance(withAppID: 6707,
                            apiKey: "X3xvu8ClbWI54ZItWat",
                            config: config,
                            launchOptions: launchOptions)
    
    return true
    
}

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
        
        @available(iOS 10.0, *)
        func didReceive(_ response: UNNotificationResponse!, withCompletionHandler completionHandler: (() -> Void)!) {
            print("Got iOS 10 Notification with Identifier - (response.actionIdentifier)")
            // Called when the push is interacted with. (pressed, button or dismiss)
            completionHandler()
        }
        
        @available(iOS 10.0, *)
        func willPresent(_ notification: UNNotification!, withCompletionHandler completionHandler: ((UNNotificationPresentationOptions) -> Void)!) {
            // Called when a push is received when the app is in the foreground.
            completionHandler([])
        }
    
    }
    
   // dev ice token code start
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        // 1. Convert device token to string
        let tokenParts = deviceToken.map { data -> String in
            return String(format: "%02.2hhx", data)
        }
        let token = tokenParts.joined()
        // 2. Print device token to use for PNs payloads
        print("Device Token: \(token)")
    }
    
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        // 1. Print out error if PNs registration not successful
        print("Failed to register for remote notifications with error: \(error)")
    }
    // device token code end

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        
        let handled = SwrveSDK.didReceiveRemoteNotification(userInfo, withBackgroundCompletionHandler: { fetchResult, swrvePayload in
            // NOTE: Do not call the Swrve SDK from this context
            // Your code here to process a Swrve remote push and payload
            completionHandler(fetchResult)
        })
        if(!handled){
            // Your code here, it is either a non-background push received in the background or a non-Swrve remote push
            // You’ll have to process the payload on your own and call the completionHandler as normal
        }
    }
    
}

// Extension tell app to be able to get notification when in use and also for extensions
extension AppDelegate: UNUserNotificationCenterDelegate {
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler(.alert)
    }
}
