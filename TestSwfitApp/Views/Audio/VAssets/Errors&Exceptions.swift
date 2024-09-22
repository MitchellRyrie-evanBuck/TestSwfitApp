//
//  Errors&Exceptions.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/22.
//

import SwiftUI
import AVKit

struct Errors_Exceptions: View {
  let player = AVPlayer(url: URL(string: "https://archive.org/download/lunchroom_manners/lunchroom_manners_512kb.mp4")!)
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State private var isPlaybackLikelyToKeepUp = true

    var body: some View {
      VStack {
        VideoPlayer(player: player)
        if !isPlaybackLikelyToKeepUp {
          Text("Playback Error: Network load is likely to prevent playback from keeping up.")
        }
      }
      .onReceive(timer, perform: { _ in
        isPlaybackLikelyToKeepUp = player.currentItem?.isPlaybackLikelyToKeepUp ?? true
      })
    }
}

#Preview {
    Errors_Exceptions()
}
