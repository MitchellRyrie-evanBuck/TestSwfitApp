//
//  StateAcross.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/8/17.
//
import SwiftUI

class GameSettings: ObservableObject {
  @Published var score = 0
}

struct ContentStateAcrossView: View {
  var body: some View {
    GameView()
      .environmentObject(GameSettings())
  }
}
struct GameView: View {
  @EnvironmentObject var settings: GameSettings

  var body: some View {
    VStack {
      Text("Score: \(settings.score)")
      Button("Increment Score") {
        settings.score += 1
      }
    }
  }
}

#Preview {
    ContentStateAcrossView()
}
