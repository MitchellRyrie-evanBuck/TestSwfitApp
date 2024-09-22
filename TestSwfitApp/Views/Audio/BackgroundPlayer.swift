//
//  BackgroundPlayer.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/22.
//

import SwiftUI
import AVKit

struct PlayerView: UIViewControllerRepresentable {
  var videoURL = URL(string:"https://archive.org/download/ksnn_compilation_master_food_in_space/ksnn_compilation_master_food_in_space_512kb.mp4")!

  func makeUIViewController(context: Context) -> AVPlayerViewController {
    let controller = AVPlayerViewController()
    let player = AVPlayer(url: videoURL)
    controller.player = player
    controller.player?.play()
    controller.allowsPictureInPicturePlayback = true // enables PiP
    return controller
  }

  func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {}
}

struct BackgroundPlayer: View {
  var body: some View {
      PlayerView()
    }
}

#Preview {
    BackgroundPlayer()
}
