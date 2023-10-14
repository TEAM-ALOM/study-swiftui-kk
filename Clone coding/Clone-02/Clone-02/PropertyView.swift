//
//  PropertyView.swift
//  Clone-02
//
//  Created by 박근경 on 2023/10/13.
//

import SwiftUI

struct PropertyView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    NavigationLink {
                        Text("자산 화면")
                    } label: {
                        Text("자산")
                            .font(.system(size: 25, weight: .bold))
                            .padding(10)
                    }
                    .listRowSeparator(.hidden)
                    propertyCell(imageName: "circle.fill", title: "토스뱅크 통장", money: "0원", buttontitle: "송금" ) {
                            movepageView()
                    }
                    propertyCell(imageName: "circle.fill", title: "토스뱅크에 쌓인 이자", money: "0원", buttontitle: "지금 받기" ) {
                            movepageView()
                    }
                    .listRowSeparator(.hidden)
                }
            }
        }
        
    }
    @ViewBuilder
    private func propertyCell<V: View>(imageName: String, title: String, money: String, buttontitle: String, destination: @escaping() -> V) -> some View {
        HStack {
            NavigationLink {
                destination()
            } label: {
                EmptyView()
            }
            .opacity(0)
            .frame(width: 0, height: 0)
            
            Image(systemName: imageName)
                .resizable()
                .frame(width: 45, height: 45)
                .foregroundColor(.blue)
            
            VStack(alignment: .leading, spacing: 2) {
                Text(title)
                    .font(.system(size: 15,weight: .regular))
                Text(money)
                    .font(.system(size: 19,weight: .bold))
            }
            .frame(width: 170, height: 50, alignment: .leading)
            .padding(.leading, 8)
            
            Spacer()
            
            Button {
                
            } label: {
                Text(buttontitle)
                    .font(.system(size:15))
                    .frame(width: 70, height: 30) // 글씨 크기에 맞게 조절
                    .background(.gray)
                    .cornerRadius(5)
                    .opacity(0.5)
                    .padding(.top, 8)
            }
                
            
            
        }
    }
}

#Preview {
    PropertyView()
}
