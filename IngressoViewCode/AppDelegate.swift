//
//  AppDelegate.swift
//  IngressoViewCode
//
//  Created by Jaqueline Hillesheim on 19/10/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let mainViewController = ViewController()
        let navigationController = UINavigationController(rootViewController: mainViewController)
        window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
        return true
    }
}
