//
//  AppDelegate.swift
//  Todoey
//
//  Created by PinHsuan Chen on 2018/5/24.
//  Copyright © 2018年 PinHsuan Chen. All rights reserved.
//

import UIKit
import CoreData


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
   

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //print(NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last! as String)
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

    func applicationWillTerminate(_ application: UIApplication) {
        
        self.saveContext()
       // print("application will terminate")
    }


    // MARK: - Core Data stack
    
    lazy var persistentContainer: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "DataModel")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                
                
               
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    // MARK: - Core Data Saving support
    
    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
}

