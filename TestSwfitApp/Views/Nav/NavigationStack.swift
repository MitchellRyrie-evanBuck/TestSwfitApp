//
//  NavigationStack.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/17.
//

import SwiftUI

struct Park: Hashable {
  let name: String
  let imageName: String
  let description: String
}

extension Park: Identifiable {
  var id: String { name }
}

struct NavigationStackView: View {
  @State private var presentedParks: [Park] = []

  var parks: [Park] {
    [
      Park(name: "user_1", imageName: "user_1", description: "Yosemite National Park"),
      Park(name: "user_2", imageName: "user_2", description: "Sequoia National Park"),
      Park(name: "user_3", imageName: "user_3", description: "Point Reyes National Seashore")
    ]
  }

  var body: some View {
    NavigationStack(path: $presentedParks) {
      List(parks) { park in
        NavigationLink(park.name, value: park)
      }.toolbar {
        ToolbarItem(placement: .navigationBarTrailing) {
          Button(action: {
            // Code for button action goes here
          }) {
            Image(systemName: "gear")
          }
        }
      }
      .navigationTitle("List with Navigation")
      .navigationDestination(for: Park.self) { park in
        ParkDetailsView(park: park)
      }
    }
  }
}

struct ParkDetailsView: View {
  let park: Park

  var body: some View {
    VStack {
      Image(park.imageName)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 200, height: 200)
      Text(park.name)
        .font(.title)
        .foregroundColor(.primary)
      Text(park.description)
        .font(.body)
        .foregroundColor(.secondary)
    }
    .padding()
  }
}

#Preview {
    NavigationStackView()
}
