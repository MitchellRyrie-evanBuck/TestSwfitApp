//
//  PlayerVideo.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/20.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
  // Create a URL for the video file in your app bundle
  let videoURL: URL? = Bundle.main.url(forResource: "BookTrailer", withExtension: "m4v")

  var body: some View {
    VStack {
      if let url = videoURL {
        VideoPlayer(player: AVPlayer(url: url))
      } else {
        Text("Video not found")
      }
    }
  }
}

struct PlayerVideo: View {
  var body: some View {
     VideoPlayerView()
   }
}

#Preview {
    PlayerVideo()
}
