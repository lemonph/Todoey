//
//  AppDelegate.swift
//  Todoey
//
//  Created by PinHsuan Chen on 2018/5/24.
//  Copyright © 2018年 PinHsuan Chen. All rights reserved.
//

import UIKit
import CoreData
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
   

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //print(NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last! as String)
        
        //print(Realm.Configuration.defaultConfiguration.fileURL)
        

        do {
            _ = try Realm()

        } catch {
            print("Error initialising new realm, \(error)")
        }
        
        
        
        return true
    }

//    func applicationWillResignActive(_ application: UIApplication) {
//        
//    }
//
//    func applicationDidEnterBackground(_ application: UIApplication) {
//        
//        
//        print("application did enter background")
//    }
//
//    func applicationWillEnterForeground(_ application: UIApplication) {
//       
//    }
//
//    func applicationDidBecomeActive(_ application: UIApplication) {
//        
//    }

    
   
}

