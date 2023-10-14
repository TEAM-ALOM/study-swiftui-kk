//
//  WiFi.swift
//  Clone-01
//
//  Created by 박근경 on 2023/10/12.
//

import SwiftUI

struct Wifiview: View {
    @State private var WiFiisOn: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                List{
                    Section{
                        Toggle("Wi-Fi", isOn: $WiFiisOn)
                            .padding(.leading, 10)
                    }
                    Section{
                        HStack {
                            Text("ediya coffee")
                                .padding(.leading, 10)
                            Spacer()
                            
                            HStack {
                                iconImage(iconName: "lock.fill", color: .black)
                                iconImage(iconName: "wifi", color: .black)
                                iconImage(iconName: "info.circle", color: .blue)
                            }
                        }
                    }
                    Section{
                        HStack {
                            NavigationLink {
                                Text("네트워크 연결 요청 화면")
                            } label: {
                                Text("네트워크 연결 요청")
                                    .foregroundColor(.black)
                            }
                            .padding(.leading, 10)
                            
                            Spacer()
                            Text("알림")
                        }
                        
                    }
                    Section {
                        NavigationLink {
                            Text("핫스팟 자동 연결 화면")
                        } label: {
                            Text("핫스팟 자동 연결")
                                .foregroundColor(.black)
                        }
                        .padding(.leading, 10)
                    }
                }
            }
        }
    }
    
    @ViewBuilder
    private func iconImage(iconName: String, color: Color) -> some View {
        Image(systemName: iconName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 18, height: 18)
            .foregroundColor(color)
    }
}

#Preview {
    Wifiview()
}
