//
//  ContentView.swift
//  TestSwfitApp
//
//  Created by L Af on 2024/6/17.
//
//
import SwiftUI


// 主视图，包含底部切换栏
struct ContentView: View {
    var body: some View {
      TabView {
        ContentMainView()
          .tabItem {
            Label("首页", systemImage: "text.page").symbolVariant(.fill)
          }
        AnmationView()
          .tabItem {
            Label("bell", systemImage: "bell").symbolVariant(.fill)
          }
        Chart().tabItem{
          Label("Trend", systemImage: "chart.bar" )
          }
        NavComponents().tabItem{
          Label("组件", systemImage: "lasso" )
          }.tag(4)
        .toolbarBackground(.visible, for: .tabBar)
        .toolbarBackground(Color.gray.opacity(0.8), for: .tabBar)
        NavComponents().tabItem{
          Label("Trend", systemImage: "rectangle.fill.on.rectangle.fill" )
          }
        }
    }
}

#Preview {
    ContentView()
}
