//
//  Observ.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/8/17.
//
import SwiftUI

class UserSettings: ObservableObject {
  @Published var username = "Anonymous"
}

struct ContentObservView: View {
  @ObservedObject var settings = UserSettings()

  var body: some View {
    VStack {
      Text("Hello, \(settings.username)!")
      Button("Change Username") {
        settings.username = "John Doe"
      }
    }
  }
}
#Preview {
    ContentObservView()
}
