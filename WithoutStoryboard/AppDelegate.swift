//
//  AppDelegate.swift
//  WithoutStoryboard
//
//  Created by Shion on 2020/05/30.
//  Copyright © 2020 Shion. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		let window = UIWindow(frame: UIScreen.main.bounds)
		window.rootViewController = ViewController()
		window.makeKeyAndVisible()
		self.window = window
		return true
	}

}
