//
//  Combine.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/8/17.
//

import SwiftUI
import Combine

struct ContentCombineView: View {
  @StateObject private var jokeFetcher = JokeFetcher()

  var body: some View {
    VStack {
      Text(jokeFetcher.joke)
        .padding()
      Button("Fetch Joke") {
        jokeFetcher.fetchJoke()
      }
    }
    .onAppear {
      jokeFetcher.fetchJoke()
    }
  }
}

class JokeFetcher: ObservableObject {
  @Published var joke: String = ""
  private var cancellable: AnyCancellable?
  private let jokes = [
    "Why don't scientists trust atoms? Because they make up everything!",
    "Why did the bicycle fall over? Because it was two tired!",
    "Why don't some animals play cards? Because they are afraid of cheetahs!",
    "Why did the scarecrow win an award? Because he was outstanding in his field!"
  ]

  func fetchJoke() {
    // Networking code here
    // Update `joke` with the result
    if let randomJoke = jokes.randomElement() {
      joke = randomJoke
    }
  }

  deinit {
    cancellable?.cancel()
  }
}

#Preview {
    ContentCombineView()
}
