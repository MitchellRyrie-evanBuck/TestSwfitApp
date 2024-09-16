//
//  Anmation.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/9/16.
//

import SwiftUI
let examplesField: [Example] = [
      Example(name: "网格测试", destination: AnyView(FieldContentView())),
   
  ]
// 其他页面的示例
struct AnmationView: View {
    var body: some View {
        NavigationView {
            ScrollView {  // 添加 ScrollView 以允许滚动
                LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3)) {
                    ForEach(examplesField) { example in
                        NavigationLink(destination: example.destination) {
                            VStack {
                                Text(example.name)
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 100)
                                    .background(.blue)
                                    .modifier(BoldAndItalicModifier())
                                    .foregroundColor(.white)
                            }
                        }
                    }
                }
            }
            .navigationTitle("示例列表") // 如果需要，可以为 NavigationView 添加标题
        }
    }
}


#Preview {
    AnmationView()
}
