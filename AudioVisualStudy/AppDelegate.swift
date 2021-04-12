//
//  AppDelegate.swift
//  AudioVisualStudy
//
//  Created by guoliting on 2021/4/12.
//

import UIKit
import AVFoundation

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let audioSession = AVAudioSession.sharedInstance()
        do {
            try audioSession.setCategory(.playback, mode: .moviePlayback)
        }
        catch {
            print("Setting category to AVAudioSessionCategoryPlayback failed.")
        }
        
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

    func applicationDidEnterBackground(_ application: UIApplication) {

        // Disconnect the AVPlayer from the presentation when entering background

//        // If presenting video with AVPlayerViewController
//        playerViewController.player = nil
//
//        // If presenting video with AVPlayerLayer
//        playerLayer.player = nil
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Reconnect the AVPlayer to the presentation when returning to foreground

//        // If presenting video with AVPlayerViewController
//        playerViewController.player = player
//
//        // If presenting video with AVPlayerLayer
//        playerLayer.player = player
    }
}

