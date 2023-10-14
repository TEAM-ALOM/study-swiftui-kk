//
//  ContentView.swift
//  Clone-01
//
//  Created by 박근경 on 2023/10/10.
//

import SwiftUI

struct ContentView: View {
    @State private var isAirplainOn: Bool = false
    var body: some View {
        VStack {
            NavigationView {
                List {
                    Section {
                        NavigationLink {
                            Text("프로필 화면")
                        } label: {
                            profileCell()
                        }
                    }
                    Section {
                        togleCell()
                        WiFiCell()
                        OnOffCell(imageName: "waveform", celltitle: "Bluetooth", color: .blue, isOn: "켬") {
                            Text("블루투스 화면")
                        }
                        OnOffCell(imageName: "antenna.radiowaves.left.and.right", celltitle: "셀룰러", color: .green, isOn: "끔") {
                            Text("셀룰러 화면")
                        }
                    }
                    Section {
                        plainCell(imageName: "hourglass",celltitle: "스크린 타임", color: .indigo) {
                            Text("스크린 타임 화면")
                        }
                    }
                    Section {
                        plainCell(imageName: "gear",celltitle: "설정", color: .gray) {
                            Text("설정 화면")
                        }
                        
                        plainCell(imageName: "accessibility",celltitle: "손쉬운 사용", color: .blue) {
                            Text("손쉬운 사용 화면")
                        }
                        plainCell(imageName: "hand.raised.fill",celltitle: "개인 정보 보호", color: .blue) {
                            Text("개인 정보 보호 화면")
                        }
                    }
                }
                .navigationTitle(Text("설정"))

            }
        }
    }
    @ViewBuilder
    private func profileCell() -> some View {
        HStack {
            Image(systemName: "person.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .padding(.all, 11)
                .background(.gray)
                .foregroundColor(.white)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading, spacing: 3) {
                Text("Lee_baek")
                    .font(.system(size: 24))
                    .fontWeight(.regular)
                
                Text("Apple ID, iCloud, 미디어 및 구입")
                    .font(.system(size: 14))
            }
            .padding(.leading, 6)
        }
    }
    
    @ViewBuilder
    private func togleCell() -> some View {
        HStack {
            Image(systemName: "airplane")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(.all, 4)
                .padding(.leading, 0.5)
                .background(.orange)
                .foregroundColor(.white)
                .cornerRadius(5)
            
            Toggle("에어플레인 모드", isOn: $isAirplainOn)
        }
    }
    
    @ViewBuilder
    private func WiFiCell() -> some View {
        HStack {
            Image(systemName: "wifi.square.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 28, height: 28)
                .background(.white)
                .foregroundColor(.blue)
                .cornerRadius(5)
            
            NavigationLink {
                Text("Wi-Fi 화면")
            } label: {
                HStack {
                    Text("Wi-Fi")
                    Spacer()
                    Text("KT_WiFi_2G_6675")
                        .foregroundColor(.gray)
                }
            }
            .padding(.leading, 3)
        }
    }
    
    @ViewBuilder
    private func plainCell<V: View>(imageName: String, celltitle: String, color: Color, destination: @escaping() -> V) -> some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(.all, 4)
                .background(color)
                .foregroundColor(.white)
                .cornerRadius(5)
            
            NavigationLink(celltitle) {
                destination()
            }
            .padding(.leading, 3)
        }
    }
    
    @ViewBuilder
    private func OnOffCell<V: View>(imageName: String, celltitle: String, color: Color, isOn: String,destination: @escaping() -> V) -> some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(.all, 4)
                .background(color)
                .foregroundColor(.white)
                .cornerRadius(5)
            
            NavigationLink {
                destination()
            } label: {
                HStack {
                    Text(celltitle)
                    Spacer()
                    Text(isOn)
                        .foregroundColor(.gray)
                }
            }
            .padding(.leading, 3)
        }
    }
    
}

#Preview {
    ContentView()
}
