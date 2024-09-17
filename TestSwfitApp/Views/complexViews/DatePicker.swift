//
//  DatePicker.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/17.
//

import SwiftUI

struct DatePickerView: View {
  @State private var selectedDate = Date()

   var body: some View {
     VStack {
       Text("Selected date is: \(selectedDate)")

       DatePicker("Select a date", selection: $selectedDate, displayedComponents: .date)
         .datePickerStyle(.graphical)
         .padding()
     }
     .padding()
   }
}

#Preview {
  DatePickerView()
}
