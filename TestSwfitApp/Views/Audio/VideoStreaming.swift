//
//  VideoStreaming.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/22.
//

import SwiftUI
import AVKit

struct VideoStreaming: View {
  var body: some View {
    NavigationStack {
      VideoPlayer(player: AVPlayer(url: URL(string: "https://archive.org/download/four_days_of_gemini_4/four_days_of_gemini_4_512kb.mp4")!))
        .navigationTitle("Video Player")
    }
  }
}

#Preview {
    VideoStreaming()
}
