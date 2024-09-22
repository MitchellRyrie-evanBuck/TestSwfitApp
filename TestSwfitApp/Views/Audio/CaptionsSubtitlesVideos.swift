//
//  CaptionsSubtitlesVideos.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/22.
//

import SwiftUI
import AVKit

struct CaptionsSubtitlesVideos: View {
  @State var player = AVPlayer(url: Bundle.main.url(forResource: "BookTrailer", withExtension: "m4v")!)
    @State var isPlaying: Bool = false
    @State var subtitleText: String = "Once upon a time, there was a programming book known as iOS Games..."
    
    var body: some View {
      VStack {
        ZStack {
          VideoPlayer(player: player) {
            VStack {
              Spacer()
              Text(subtitleText)
                .font(.caption)
                .foregroundColor(.white)
                .padding()
                .background(Color.black.opacity(0.7))
                .cornerRadius(10)
            }
          }
          .frame(width: 320, height: 180, alignment: .center)
          .onAppear {
            self.isPlaying = true
            player.play()
          }
        }
        Button {
          isPlaying ? player.pause() : player.play()
          isPlaying.toggle()
          player.seek(to: .zero)
        } label: {
          Image(systemName: isPlaying ? "stop" : "play")
            .padding()
        }
      }
    }
}

#Preview {
    CaptionsSubtitlesVideos()
}
