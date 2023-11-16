//
//  ContentView.swift
//  Clone-02
//
//  Created by 박근경 on 2023/10/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("홈")
                    }
                Text("Another Tab")
                    .tabItem {
                        Image(systemName: "pentagon.fill")
                        Text("혜택")
                    }
                Text("The Last Tab")
                    .tabItem {
                        Image(systemName: "bag.fill")
                        Text("토스페이")
                    }
                Text("The Last Tab")
                    .tabItem {
                        Image(systemName: "option")
                        Text("주식")
                    }
                Text("The Last Tab")
                    .tabItem {
                        Image(systemName: "text.line.first.and.arrowtriangle.forward")
                        Text("전체")
                    }
                
            }
            .font(.headline)
        }
    }
}

#Preview {
    ContentView()
}
