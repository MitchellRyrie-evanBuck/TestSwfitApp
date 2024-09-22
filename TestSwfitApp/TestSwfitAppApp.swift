//
//  TestSwfitAppApp.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/6/17.
//

import SwiftUI
import AVKit

@main
struct TestSwfitAppApp: App {
  @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
  
    var body: some Scene {
        WindowGroup {
//            ContentView()
            ContentView().previewDevice("iPhone 16 Pro")
//            ContentView()
//                .preferredColorScheme(.dark)
//              ContentView()
//                .previewInterfaceOrientation(.landscapeLeft)
      
        }
    }
}

// AppDelegate
class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    do {
      try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default, options: [.mixWithOthers, .allowAirPlay])
      print("Playback OK")
      try AVAudioSession.sharedInstance().setActive(true)
      print("Session is Active")
    } catch {
      print(error)
    }
    return true
  }
}
