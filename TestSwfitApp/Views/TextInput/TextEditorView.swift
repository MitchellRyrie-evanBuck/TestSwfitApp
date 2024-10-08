//
//  TextEditorView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/19.
//

import SwiftUI

struct TextEditorView: View {
  @State private var text = """
      This day is called the feast of Crispian:
      He that outlives this day, and comes safe home,
      Will stand a tip-toe when the day is named,
      And rouse him at the name of Crispian.
      He that shall live this day, and see old age,
      Will yearly on the vigil feast his neighbours,
      And say ‘To-morrow is Saint Crispian:’
      Then will he strip his sleeve and show his scars.
      And say ‘These wounds I had on Crispin’s day.’
      Old men forget: yet all shall be forgot,
      But he’ll remember with advantages
      What feats he did that day: then shall our names.
      Familiar in his mouth as household words
      Harry the king, Bedford and Exeter,
      Warwick and Talbot, Salisbury and Gloucester,
      Be in their flowing cups freshly remember’d.
      This story shall the good man teach his son;
      And Crispin Crispian shall ne’er go by,
      From this day to the ending of the world,
      But we in it shall be remember’d;
      We few, we happy few, we band of brothers;
      For he to-day that sheds his blood with me
      Shall be my brother; be he ne’er so vile,
      This day shall gentle his condition:
      And gentlemen in England now a-bed
      Shall think themselves accursed they were not here,
      And hold their manhoods cheap whiles any speaks
      That fought with us upon Saint Crispin’s day.
      """

    var body: some View {
      TextEditor(text: $text)
        .font(.system(size: 16))
        .foregroundColor(.blue)
        .padding()
        .background(.yellow)
        .cornerRadius(10)
        .lineSpacing(10)
        .multilineTextAlignment(.leading)
        .padding()
    }
}

#Preview {
    TextEditorView()
}
