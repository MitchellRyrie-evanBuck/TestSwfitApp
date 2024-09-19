//
//  KeyboardScroll.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/19.
//

import SwiftUI

struct KeyboardScroll: View {
  @State private var text = ""
    @State private var messages = (0 ..< 50).map { number in
      "Message \(number)"
    }

    var body: some View {
      NavigationStack {
        VStack {
          ScrollView {
            ForEach(messages.indices, id: \.self) { index in
              Text("\(messages[index])")
                .padding(10)
                .background(index % 2 == 0 ? .green : .blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .frame(maxWidth: .infinity, alignment: index % 2 == 0 ? .leading : .trailing)
                .padding([.horizontal, .top])
            }
          }
          .scrollDismissesKeyboard(.immediately)

          HStack {
            TextField("Type a message...", text: $text)
              .textFieldStyle(.roundedBorder)
              .padding()

            Button(action: {
              messages.append(text)
              text = ""
            }) {
              Image(systemName: "paperplane.fill")
                .padding()
            }
          }
        }
        .navigationTitle("Chat")
      }
    }
}

#Preview {
    KeyboardScroll()
}
