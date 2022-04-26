//
//  AppDelegate.swift
//  Pulse Integration
//
//  Created by Pushkraj on 25/04/22.
//

import UIKit
import Pulse
import PulseCore

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        #if DEBUG
        setupPulseNetworkInspector()
        #endif
        return true
    }

    // MARK: UISceneSession Lifecycle
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }
}

extension AppDelegate {
    func setupPulseNetworkInspector() {
        URLSessionProxyDelegate.enableAutomaticRegistration()
        Experimental.URLSessionProxy.shared.isEnabled = true
    }
}

