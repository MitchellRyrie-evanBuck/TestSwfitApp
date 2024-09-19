//
//  PlayerVideo.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/19.
//

import SwiftUI
import AVFoundation

class AudioPlayerViewModel: ObservableObject {
  var audioPlayer: AVAudioPlayer?

  @Published var isPlaying = false

  init() {
    if let sound = Bundle.main.path(forResource: "PocketCyclopsLvl1", ofType: "mp3") {
      do {
        self.audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound))
      } catch {
        print("AVAudioPlayer could not be instantiated.")
      }
    } else {
      print("Audio file could not be found.")
    }
  }

  func playOrPause() {
    guard let player = audioPlayer else { return }

    if player.isPlaying {
      player.pause()
      isPlaying = false
    } else {
      player.play()
      isPlaying = true
    }
  }
}

struct PlayerAudio: View {
  @StateObject var audioPlayerViewModel = AudioPlayerViewModel()

   var body: some View {
     VStack {
       Button(action: {
         audioPlayerViewModel.playOrPause()
       }) {
         Image(systemName: audioPlayerViewModel.isPlaying ? "pause.circle" : "play.circle")
           .resizable()
           .frame(width: 64, height: 64)
       }
     }
   }
}

#Preview {
  PlayerAudio()
}
