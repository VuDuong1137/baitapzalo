//
//  SceneDelegate.swift
//  lambaitapzalo
//
//  Created by Dương chãng on 1/15/20.
//  Copyright © 2020 macshop. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let Windowscere = (scene as? UIWindowScene) else { return }
        // set kích thước
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.windowScene = Windowscere
        window?.rootViewController = setuptabBarcontroller()
        window?.makeKeyAndVisible()
    }
    func setuptabBarcontroller() -> UITabBarController{
        var tabbar = UITabBarController()
        let item1 = Screen1ViewController()
        item1.tabBarItem = UITabBarItem(title: "Tin nhắn", image: UIImage(named: "tinnhan"), tag: 0)
        item1.tabBarItem.badgeValue = String("5+")
       // item1.tabBarItem.badgeColor = UIColor.red
        let item2 = Screen2ViewController()
        item2.tabBarItem = UITabBarItem(title: "Danh Bạ", image: UIImage(named: "phonebook"), tag: 0)
         let item3 = Screen3ViewController()
        item3.tabBarItem = UITabBarItem(title: "Nhóm", image: UIImage(named: "nhom"), tag: 0)
         let item4 = Screen4ViewController()
        item4.tabBarItem = UITabBarItem(title: "Nhật Ký", image: UIImage(named: "nhatky"), tag: 0)
        item4.tabBarItem.badgeValue = String("N")
         let item5 = Screen5ViewController()
        item5.tabBarItem = UITabBarItem(title: "Thêm", image: UIImage(named: "them"), tag: 0)
        
        
        tabbar.setViewControllers([item1, item2, item3, item4, item5], animated: true)
        
        
        return tabbar
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

