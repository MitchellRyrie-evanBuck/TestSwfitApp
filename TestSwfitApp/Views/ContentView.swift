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
            Label("Anmation", systemImage: "command.circle.fill").symbolVariant(.fill)
          }
        Trend().tabItem{
          Label("Trend", systemImage: "chart.bar" )
          }
        Chart().tabItem{
          Label("组件", systemImage: "lasso" )
          }.tag(4)
          .toolbarBackground(.visible, for: .tabBar)
          .toolbarBackground(Color.gray.opacity(0.8), for: .tabBar)
        UserContentView().tabItem{
          Label("user", systemImage: "person.fill" )
          }
        }
    }
}

#Preview {
    ContentView()
}
