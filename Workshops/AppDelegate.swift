//
//  AppDelegate.swift
//  Workshops
//
//  Created by Marcin Wieclawski on 09/09/16.
//  Copyright © 2016 El Passion. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.rootViewController = PokemonsListViewController()
        window?.makeKeyAndVisible()

        return true
    }

}

