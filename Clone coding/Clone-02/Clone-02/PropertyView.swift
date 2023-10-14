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
                Text("자산")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                List {
                    NavigationLink {
                        Text("토스뱅크통장 화면")
                    } label: {
                        HStack{
                            Image(systemName: "circle.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.blue)
                                
                            VStack(alignment: .leading) {
                                Text("토스뱅크 통장")
                                Text("3500원")
                            }
                            .padding(.leading, 10)
                            //버튼으로 송금버튼 만들기
                        }
                    }
                }
            }
            
        }
        
    }
}

#Preview {
    PropertyView()
}
