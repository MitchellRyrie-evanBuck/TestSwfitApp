//
//  TestSwfitAppApp.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/6/17.
//

import SwiftUI

@main
struct TestSwfitAppApp: App {
    var body: some Scene {
        WindowGroup {
//            ContentView()
            ContentView().previewDevice("iPhone 14 Pro")
            ContentView()
                .preferredColorScheme(.dark)
              ContentView()
                .previewInterfaceOrientation(.landscapeLeft)
            SwiftUIView()
        }
    }
}
