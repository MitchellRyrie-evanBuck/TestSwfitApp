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
  let videoURL: URL? = Bundle.main.url(forResource: "TestVideo", withExtension: "mp4")

  var body: some View {
    VStack {
      if let url = videoURL {
        VideoPlayer(player: AVPlayer(url: url)).edgesIgnoringSafeArea(.all)
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
