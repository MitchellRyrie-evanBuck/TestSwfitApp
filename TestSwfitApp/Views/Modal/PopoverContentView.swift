//
//  PopoverContentView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/19.
//

import SwiftUI

struct PopoverContentView: View {
  @State private var showPopover = false

   var body: some View {
     Button("Show Popover") {
       showPopover.toggle()
     }
     .buttonStyle(.borderedProminent)
     .popover(isPresented: $showPopover,
              attachmentAnchor: .point(.topLeading),
              content: {
       Text("This is a Popover")
         .padding()
         .frame(minWidth: 300, maxHeight: 400)
         .background(.red)
         .presentationCompactAdaptation(.popover)
     })
   }
}

#Preview {
    PopoverContentView()
}
