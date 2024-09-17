//
//  swipeActions.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/17.
//

import SwiftUI

struct Message {
  var content: String
  var isRead: Bool
}

struct swipeActions: View {
  @State var messages: [Message] = [
      Message(content: "Hello!", isRead: false),
      Message(content: "How are you?", isRead: true),
      Message(content: "Happy coding!", isRead: false)
    ]
 

    var body: some View {
      List {
        ForEach(messages.indices, id: \.self) { index in
          Text(messages[index].content)
            .swipeActions {
              Button {
                messages[index].isRead.toggle()
              } label: {
                Label("Toggle Read", systemImage: "envelope.open.fill")
              }

              Button(role: .destructive) {
                messages.remove(at: index)
              } label: {
                Label("Delete", systemImage: "trash")
              }
            }
        }
      }
   
    }
}

#Preview {
    swipeActions()
}
